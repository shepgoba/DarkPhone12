/*
DarkPhone12


Copyright (C) shepgoba 2019
*/

#import <substrate.h>
#import <libcolorpicker.h>
#import <objc/runtime.h>
#import "DarkPhone12.h"

BOOL enabled, trueBlackEnabled, customColorEnabled, hideTableSeparatorsEnabled;

UIColor *PHONE_GREY, *CELL_GREY, *TINT_COLOR;

static void initPrefs() 
{
	NSFileManager *fileManager = [NSFileManager defaultManager];

	if (![fileManager fileExistsAtPath:PREFS_PATH]) 
    {
		[fileManager copyItemAtPath:PREFS_DEFAULT_PATH toPath:PREFS_PATH error:nil];
	}
}

static void loadPrefs()
{
    NSDictionary *prefs = [NSMutableDictionary dictionaryWithContentsOfFile:PREFS_PATH];
    
    if (prefs)
    {
        enabled = [prefs objectForKey:@"enabled"] ? [[prefs objectForKey:@"enabled"] boolValue] : YES;
        trueBlackEnabled = [prefs objectForKey:@"trueBlackEnabled"] ? [[prefs objectForKey:@"trueBlackEnabled"] boolValue] : YES;
        customColorEnabled = [prefs objectForKey:@"customColorEnabled"] ? [[prefs objectForKey:@"customColorEnabled"] boolValue] : NO;
        hideTableSeparatorsEnabled = [prefs objectForKey:@"hideTableSeparatorsEnabled"] ? [[prefs objectForKey:@"hideTableSeparatorsEnabled"] boolValue] : NO;

    }

    if (trueBlackEnabled)
    {
        PHONE_GREY = UIColorMake(0, 0, 0, 1);
        CELL_GREY = UIColorMake(20, 20, 20, 1);
    } 
    else 
    {
        PHONE_GREY = UIColorMake(20, 20, 20, 1);
        CELL_GREY = UIColorMake(40, 40, 40, 1);
    }

    NSDictionary *colorPrefs = [NSMutableDictionary dictionaryWithContentsOfFile:COLOR_PREFS_PATH];
    if (colorPrefs)
    {
        TINT_COLOR = LCPParseColorString([colorPrefs objectForKey:@"tintColor"], @"#007AFF");
    }
    else 
    {
        TINT_COLOR = APPLE_DEFAULT_BLUE;
    }

}


//https://stackoverflow.com/questions/970475/how-to-compare-uicolors, by samvermette
BOOL colorIsEqualToColorWithTolerance(UIColor *color1, UIColor *color2, CGFloat tolerance)
{
    CGFloat r1, g1, b1, a1, r2, g2, b2, a2;
    [color1 getRed:&r1 green:&g1 blue:&b1 alpha:&a1];
    [color2 getRed:&r2 green:&g2 blue:&b2 alpha:&a2];
    return
        fabs(r1 - r2) <= tolerance &&
        fabs(g1 - g2) <= tolerance &&
        fabs(b1 - b2) <= tolerance &&
        fabs(a1 - a2) <= tolerance;
}


/*

General Stuff

*/

%group Tweak
%hook PhoneRootView
    - (id) initWithFrame:(CGRect)_
    {
        /* Make the keyboard black */
        [[UITextField appearance] setKeyboardAppearance:UIKeyboardAppearanceAlert];

        /* Set tint color theme */
        if (customColorEnabled)
        {
            [[UIView appearance] setTintColor:TINT_COLOR];
        }
        /* Set headers to grey */
        [[UITableViewHeaderFooterView appearance] setTintColor:CELL_GREY];

        /* Top bar */
        [[UINavigationBar appearance] setBarTintColor:PHONE_GREY];
        [[UINavigationBar appearance] setTranslucent:NO];
        
        [[UIToolbar appearance] setBarTintColor:PHONE_GREY];
        
        return %orig;
    }
%end

%hook UITabBar
    - (id) initWithFrame:(CGRect)arg1
    {
        UITabBar *orig = %orig;
        orig.barStyle = UIBarStyleBlack;
        return orig;
    }
%end

%hook UICollectionView
    - (void) setBackgroundColor:(id)arg1
    {
        %orig(PHONE_GREY);
    }
%end

%hook UITableView
    - (void) setSeparatorStyle:(unsigned)a
    {
        %orig;
        if (hideTableSeparatorsEnabled)
        {
            %orig(0);
        }
    }
    - (void) setBackgroundColor:(id)arg1
    {
        // /[self setSeparatorColor:TINT_COLOR];
        %orig(PHONE_GREY);
    }
    /*- (void) setSeparatorColor:(id)arg1
    {
        %orig(CELL_GREY);
    }*/
%end
%hook UITableViewCell
    - (void) setBackgroundColor:(id)arg1
    {
        if (colorIsEqualToColorWithTolerance(self.backgroundColor, [UIColor whiteColor], 0.2))
            %orig([UIColor clearColor]);
    }
%end

// Get all black text elements and make them white
%hook UILabel
    - (void) setTextColor:(UIColor *)arg1
    {
        %orig;
        if (colorIsEqualToColorWithTolerance(self.textColor, [UIColor blackColor], 0.25))
        {
            %orig([UIColor whiteColor]);
        }
    }
%end

// Get all white elements and make them grey
%hook UIView
    - (void) setBackgroundColor:(UIColor *)arg1
    {
        %orig;

        if (colorIsEqualToColorWithTolerance(self.backgroundColor, [UIColor whiteColor], 0.06)) 
        {
            %orig(PHONE_GREY);
        }
    }
%end

// Make text in fields white (both are needed for a few select fields)
%hook UITextField
    - (id) initWithFrame:(CGRect)arg1
    {
        UITextField *orig = %orig;
        orig.textColor = [UIColor whiteColor];
        return orig;
    }
    - (void) setTextColor:(UIColor *)arg1 
    {
        %orig([UIColor whiteColor]);
    }
%end

%hook UITextView
    - (id) initWithFrame:(CGRect)arg1
    {
        UITextView *orig = %orig;
        orig.textColor = [UIColor whiteColor];
        return orig;
    }
    - (void) setTextColor:(UIColor *)arg1 
    {
        %orig([UIColor whiteColor]);
    }
%end


// Get light status bar
%hook UIViewController
    - (UIStatusBarStyle) preferredStatusBarStyle
    {
        return UIStatusBarStyleLightContent;
    }
%end

%hook UINavigationController
    - (UIStatusBarStyle) preferredStatusBarStyle 
    {
        return UIStatusBarStyleLightContent; 
    }
%end

// Top bar white text
%hook _UINavigationBarContentView
    - (void) setTextColor:(UIColor *)arg1 
    {
        %orig([UIColor whiteColor]);
    }
%end

// Get white titles
%hook UINavigationBar
    - (id) initWithFrame:(CGRect)arg1
    {
        UINavigationBar *orig = %orig;
        [orig setBarStyle: 1]; //1 for white text
        return orig;
    }
%end


/* 

Keypad Tab

*/
%hook PHHandsetDialerView
    - (void) setBackgroundColor:(UIColor *)arg1
    {
        %orig(PHONE_GREY);
    }
%end

//keypad buttons
%hook TPNumberPadButton
    /* Get white assets for keypad (These have to be loaded manually otherwise they stay in the Phone App's cache and will stay white) */
    +(id)imageForCharacter:(unsigned)arg1 highlighted:(BOOL)arg2 whiteVersion:(BOOL)arg3
    {
        NSString *imagesPath = @"/Library/PreferenceBundles/DarkPhone12.bundle/keypad_images";
        NSString *imageFile = [NSString stringWithFormat:@"%@/number%i.png", imagesPath, arg1];
        UIImage *imgForCharacter = [UIImage imageWithContentsOfFile:imageFile];
        if (imgForCharacter)
        {
            UIImage *scaledImage = [UIImage imageWithCGImage:[imgForCharacter CGImage] scale:(imgForCharacter.scale * 2) orientation:(imgForCharacter.imageOrientation)];
            return scaledImage;
        } 
        else 
        {
            NSLog(@"image could not be loaded");
        }
        return %orig;
    }
%end
%hook TPNumberPadLightStyleButton
    + (double) unhighlightedCircleViewAlpha
    {
        return 0.25;
    }
    + (double) highlightedCircleViewAlpha
    {
        return 1.0;
    }
    - (UIColor *) buttonColor
    {
        return UIColorMake(200, 200, 200, 1);
    }
%end

//fix the delete button
%hook PHHandsetDialerDeleteButton
    - (void) setTintColor:(UIColor *)arg1 
    {
        %orig([UIColor whiteColor]);
    }
%end

%hook PHBottomBarButton
    - (void) setBackgroundColor:(UIColor *)arg1
    {
        if (customColorEnabled)
        {
            %orig(TINT_COLOR);
        }
    }
%end

/*

Contacts Tab

*/
%hook CNContactHeaderDisplayView
    - (void) setBackgroundColor:(id)arg1
    {
        %orig(PHONE_GREY);
    }
%end

/*%hook CNContactListTableView
   - (void) setBackgroundColor:(id)arg1
    {
        %orig(PHONE_GREY);
    }
    - (id) initWithCoder:(id)arg1
    {
        CNContactListTableView *orig = %orig;
         for (UITableViewHeaderFooterView *x in [orig subviews])
        {
            if ([x isKindOfClass:[UITableViewHeaderFooterView class]])
            {
                UIView * view = [[UIView alloc] initWithFrame:x.bounds];
                view.backgroundColor = CELL_GREY;
                x.backgroundView = view;
                NSLog(@"69420$ operation completed");
            }
        }
        return orig;
    }
%end*/

%hook CNActionsView
    - (void) setBackgroundColor:(UIColor *)arg1
    {
        %orig;
        [[self superview] setBackgroundColor:PHONE_GREY];
    }
%end

%hook CNContactListTableViewCell
    - (void) setBackgroundColor:(id)arg1
    {
        for (UIView *v in [self subviews])
        {
            [v setBackgroundColor:[UIColor clearColor]];
        }

        %orig(CELL_GREY);
    }
%end

%hook CNContactActionCell
    - (void) setBackgroundColor:(id)arg1
    {
        for (UIView *v in [self subviews])
        {
            [v setBackgroundColor:[UIColor clearColor]];
        }

        %orig(CELL_GREY);
    }
%end

%hook CNPropertyPhoneNumberCell
    - (void) setBackgroundColor:(id)arg1
    {
        for (UIView *v in [self subviews])
        {
            [v setBackgroundColor:[UIColor clearColor]];
        }

        %orig(CELL_GREY);
    }
%end

%hook CNPropertyEmailAddressCell
    - (void) setBackgroundColor:(id)arg1
    {
        for (UIView *v in [self subviews])
        {
            [v setBackgroundColor:[UIColor clearColor]];
        }

        %orig(CELL_GREY);
    }
%end

%hook CNUINavigationListViewCell
    - (void) setBackgroundColor:(UIColor *)arg1
    {
        %orig;
        for (UITableViewCellContentView *v in [self subviews])
        {
            [v setBackgroundColor:CELL_GREY];
        }
    }
%end

%hook UITableViewLabel
    - (void) setBackgroundColor:(id)arg1
    {
        %orig([UIColor clearColor]);
    }
%end

%end

static void settingsUpdated(CFNotificationCenterRef center, void *observer, CFStringRef name, const void *object, CFDictionaryRef userInfo){
    loadPrefs();
}

%ctor
{
    CFNotificationCenterAddObserver(CFNotificationCenterGetDarwinNotifyCenter(), 
        NULL, 
        settingsUpdated, 
        CFSTR("com.shepgoba.darkphone12/prefsUpdated"),
        NULL, 
        CFNotificationSuspensionBehaviorCoalesce);

    initPrefs();
    loadPrefs();
        
    if (enabled)
    {
        /* Make the keyboard black */
        //[[UITextField appearance] setKeyboardAppearance:UIKeyboardAppearanceAlert];

        /* Set tint color theme */
        //[[UIView appearance] setTintColor:TINT_COLOR];

        /* Set headers to grey */
        //[[UITableViewHeaderFooterView appearance] setTintColor:CELL_GREY];
        %init(Tweak);
    }
}