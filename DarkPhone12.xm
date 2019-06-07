/*
DarkPhone12


Copyright (C) shepgoba 2019
*/

#import <substrate.h>
#import "DarkPhone12.h"

BOOL enabled, trueBlackEnabled;

UIColor *PHONE_GREY;
UIColor *CELL_GREY;

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
    }

    if (trueBlackEnabled)
    {
        PHONE_GREY = UIColorMake(0, 0, 0, 1);
        CELL_GREY = UIColorMake(20, 20, 20, 1);
    } 
    else 
    {
        PHONE_GREY = UIColorMake(25, 25, 25, 1);
        CELL_GREY = UIColorMake(35, 35, 35, 1);
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

%hook UICollectionView

    /* Makes tableviews look a lot cleaner */
    - (void) setSeparatorStyle:(long long)arg1 
    {
        %orig(0);
    }
    - (void) setBackgroundColor:(id)arg1
    {
        %orig(PHONE_GREY);
    }
%end

%hook UITableView

    /* Makes tableviews look a lot cleaner */
    - (void) setSeparatorStyle:(long long)arg1 
    {
        %orig(0);
    }
    - (void) setBackgroundColor:(id)arg1
    {
        %orig(PHONE_GREY);
    }
%end

%hook UITableViewCell
    - (void) setBackgroundColor:(UIColor *)arg1
    {
        %orig(CELL_GREY);
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
        
        if (colorIsEqualToColorWithTolerance(self.backgroundColor, [UIColor whiteColor], 0.06) && ![self isKindOfClass:[UIControl class]]) 
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

// Top bar grey
%hook _UIVisualEffectSubview
    - (void) setBackgroundColor:(id)arg1
    {
        %orig(PHONE_GREY);
    }
%end

// Bottom bar grey
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

%hook PHHandsetDialerView
    - (void) setBackgroundColor:(UIColor *)arg1
    {
        %orig(PHONE_GREY);
    }
%end

//keypad buttons
%hook PHHandsetDialerNumberPadButton
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
        return UIColorMake(80, 80, 80, 1);
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
    - (void) setBackgroundColor:(UIColor *)_
    {
        %orig([UIColor colorWithRed:0.0 green:122.0/255.0 blue:1.0 alpha:1.0]);
    }
%end
%hook CNContactHeaderDisplayView
    - (void) setBackgroundColor:(id)arg1
    {
        %orig(PHONE_GREY);
    }
%end

%hook CNContactListTableView
    - (void) setBackgroundColor:(id)arg1
    {
        %orig(PHONE_GREY);
    }
%end

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

%hook UITableViewLabel
    - (void) setBackgroundColor:(id)arg1
    {
        %orig([UIColor clearColor]);
    }
%end

%end

%ctor
{
    @autoreleasepool
        {
        CFNotificationCenterAddObserver(CFNotificationCenterGetDarwinNotifyCenter(), 
            NULL, 
            (CFNotificationCallback)loadPrefs, 
            CFSTR("com.shepgoba.darkphone12/prefsUpdated"),
            NULL, 
            CFNotificationSuspensionBehaviorCoalesce);

        initPrefs();
        loadPrefs();
        
        if (enabled)
        {
            [[UITextField appearance] setKeyboardAppearance:UIKeyboardAppearanceAlert];
            %init(Tweak)
        }
    }
}