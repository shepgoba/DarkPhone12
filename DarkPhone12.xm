/*
DarkPhone12


Copyright (C) shepgoba 2019
*/
#import <substrate.h>
#import <libcolorpicker.h>
#import "DarkPhone12.h"
#ifdef DEBUG
#undef DEBUG
#endif

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
        #ifdef DEBUG
            NSLog(@"{shepgoba}{DarkPhone12} Prefs successfully loaded!");
        #endif
    }
    else
    {
        #ifdef DEBUG
            NSLog(@"{shepgoba} ERROR: Prefs could not be loaded");
        #endif
        enabled = YES;
        trueBlackEnabled = YES;
        customColorEnabled = NO;
        hideTableSeparatorsEnabled = NO;
    }

    if (trueBlackEnabled)
    {
        PHONE_GREY = UIColorMake(0, 0, 0, 1);
        CELL_GREY = UIColorMake(20, 20, 20, 1);
        #ifdef DEBUG
            NSLog(@"{shepgoba}{DarkPhone12} Colors set to black");
        #endif
    } 
    else 
    {
        PHONE_GREY = UIColorMake(20, 20, 20, 1);
        CELL_GREY = UIColorMake(40, 40, 40, 1);
        #ifdef DEBUG
            NSLog(@"{shepgoba}{DarkPhone12} Colors set to dark gray");
        #endif
    }

    if (customColorEnabled)
    {
        NSDictionary *colorPrefs = [NSMutableDictionary dictionaryWithContentsOfFile:COLOR_PREFS_PATH];
        if (colorPrefs)
        {
            TINT_COLOR = LCPParseColorString([colorPrefs objectForKey:@"tintColor"], @"#007AFF");
            #ifdef DEBUG
                NSLog(@"{shepgoba}{DarkPhone12} Tint color loaded fine");
            #endif
        }
        else 
        {
            TINT_COLOR = APPLE_DEFAULT_BLUE;
            #ifdef DEBUG
                NSLog(@"{shepgoba}{DarkPhone12} Tint color set to default (colorprefs didnt load)");
            #endif
        }
    }
    else
    {
        TINT_COLOR = APPLE_DEFAULT_BLUE;
        #ifdef DEBUG
            NSLog(@"{shepgoba}{DarkPhone12} Not loading color prefs (no custom color)");
        #endif
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

//https://stackoverflow.com/questions/6496441/creating-a-uiimage-from-a-uicolor-to-use-as-a-background-image-for-uibutton
UIImage* imageFromColor(UIColor *color) 
{
    CGRect rect = CGRectMake(0, 0, 1, 1);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

/*

General Stuff

*/

%group Tweak

//Black bottom bar
%hook UITabBar
    - (id) backgroundImage
    {
        UIImage *img = imageFromColor(PHONE_GREY);
        self.translucent = NO;
        self.alpha = 1;
        return img;
    }
%end

%hook UICollectionView
    - (void) setBackgroundColor:(id)_
    {
        %orig(PHONE_GREY);
    }
%end

%hook UITableView
    - (void) setSeparatorStyle:(long long)_
    {
        %orig;
        if (hideTableSeparatorsEnabled)
        {
            %orig(0);
        }
    }
    - (void) setBackgroundColor:(id)_
    {
        %orig(PHONE_GREY);
    }
    -(void)layoutSubviews
    {
        %orig;

        self.backgroundView.backgroundColor = NULL;
    }
%end
%hook UITableViewCell
    - (void) setBackgroundColor:(id)_
    {  

    }
%end

// Get all black text elements and make them white
%hook UILabel
    - (void) setTextColor:(UIColor *)_
    {
        %orig;
        if (colorIsEqualToColorWithTolerance(self.textColor, [UIColor blackColor], 0.15))
        {
            %orig([UIColor whiteColor]);
        }
    }
%end

// Get all white elements and make them grey
%hook UIView
    - (void) setBackgroundColor:(UIColor *)_
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
    - (id) initWithFrame:(CGRect)_
    {
        UITextField *orig = %orig;
        orig.textColor = [UIColor whiteColor];
        return orig;
    }
    - (void) setTextColor:(UIColor *)_ 
    {
        %orig([UIColor whiteColor]);
    }
%end

%hook UITextView
    - (id) initWithFrame:(CGRect)_
    {
        UITextView *orig = %orig;
        orig.textColor = [UIColor whiteColor];
        return orig;
    }
    - (void) setTextColor:(UIColor *)_
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
    - (void) setTextColor:(UIColor *)_
    {
        %orig([UIColor whiteColor]);
    }
%end

// Get white titles
%hook UINavigationBar
    - (id) initWithFrame:(CGRect)_
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
    - (void) setBackgroundColor:(UIColor *)_
    {
        %orig(PHONE_GREY);
    }
%end

//keypad buttons
%hook TPNumberPadButton
    /* Get white assets for keypad (These have to be loaded manually otherwise they stay in the Phone App's cache and will stay white) */
    +(id)imageForCharacter:(unsigned)character highlighted:(BOOL)highlightedBOOL whiteVersion:(BOOL)whiteVersionBOOL
    {
        NSString *imagesPath = @"/Library/PreferenceBundles/DarkPhone12.bundle/keypad_images";
        NSString *imageFile = [NSString stringWithFormat:@"%@/number%i.png", imagesPath, character];
        UIImage *imgForCharacter = [UIImage imageWithContentsOfFile:imageFile];
        if (imgForCharacter)
        {
            UIImage *scaledImage = [UIImage imageWithCGImage:[imgForCharacter CGImage] scale:(imgForCharacter.scale * 2) orientation:(imgForCharacter.imageOrientation)];
            #ifdef DEBUG
                NSLog(@"{shepgoba}{DarkPhone12} Keypad image %i loaded fine ", character);
            #endif
            return scaledImage;
        } 
        else 
        {
            NSLog(@"{shepgoba}{DarkPhone12} ERROR: Keypad image %i could not be loaded", character);
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
    - (void) setTintColor:(UIColor *)_
    {
        %orig([UIColor whiteColor]);
    } 
%end

//Call button color
%hook PHBottomBarButton
    - (void) setBackgroundColor:(UIColor *)_
    {
        %orig;
        if (customColorEnabled)
        {
            %orig(TINT_COLOR);
        }
    }
%end

/*

Contacts Tab

*/

/*%hook UITableViewHeaderFooterView
    - (UILabel *) textLabel
    {
        UILabel *orig = %orig;
        [orig setTextColor:TINT_COLOR];
        return orig;
    }
%end*/

%hook CNContactHeaderDisplayView
    - (void) setBackgroundColor:(id)_
    {
        %orig(PHONE_GREY);
    }
%end

%hook CNContactListTableView
    - (void) setBackgroundColor:(UIColor *)_
    {
        %orig(PHONE_GREY);
    }
%end

%hook CNContactActionCell
    - (void) setBackgroundColor:(id)_
    {
        for (UIView *v in [self subviews])
        {
            [v setBackgroundColor:[UIColor clearColor]];
        }

        %orig(CELL_GREY);
    }
%end

%hook CNPropertyPhoneNumberCell
    - (void) setBackgroundColor:(id)_
    {
        for (UIView *v in [self subviews])
        {
            [v setBackgroundColor:[UIColor clearColor]];
        }

        %orig(CELL_GREY);
    }
%end

%hook CNPropertyEmailAddressCell
    - (void) setBackgroundColor:(id)_
    {
        for (UIView *v in [self subviews])
        {
            [v setBackgroundColor:[UIColor clearColor]];
        }

        %orig(CELL_GREY);
    }
%end

%hook CNUINavigationListViewCell
    - (void) setBackgroundColor:(UIColor *)_
    {
        %orig;
    }
%end

%hook UITableViewLabel
    - (void) setBackgroundColor:(id)_
    {
        %orig([UIColor clearColor]);
    }
%end


/*
Voicemail Tab
*/
%hook MPVoicemailMailboxTableViewCell
- (void) setBackgroundColor:(UIColor *)arg1
{
    %orig(PHONE_GREY);
}
- (void) layoutSubviews
{
    %orig;
    self.foregroundView.backgroundColor = NULL;
}
%end

%end

static void settingsUpdated(CFNotificationCenterRef center, void *observer, CFStringRef name, const void *object, CFDictionaryRef userInfo){
    loadPrefs();
    NSLog(@"{shepgoba}{DarkPhone12} Preferences updated!");
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
        [[UITextField appearance] setKeyboardAppearance:UIKeyboardAppearanceAlert];

        /* Set tint color theme */
        if (customColorEnabled)
        {
            [[UIView appearance] setTintColor:TINT_COLOR];
        }

        /* Top bar */
        [[UINavigationBar appearance] setBarTintColor:PHONE_GREY];
        [[UINavigationBar appearance] setTranslucent:NO];
        
        [[UIToolbar appearance] setBarTintColor:PHONE_GREY];

        [[UITableViewHeaderFooterView appearance] setTintColor:CELL_GREY];

        %init(Tweak);
        #ifdef DEBUG
            NSLog(@"{shepgoba}{DarkPhone12} Tweak finished loading successfully!");
        #endif
    }
}