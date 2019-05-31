#import <substrate.h>
#import <objc/runtime.h>

#define UIColorMake(r, g, b, a) [UIColor colorWithRed:r/255.0f green:g/255.0f blue:b/255.0f alpha:a]
#define PHONE_GREY UIColorMake(25, 25, 25, 1)
#define CELL_GREY UIColorMake(40, 40, 40, 1)

@interface UITableViewCellContentView : UIView
@end
@interface HKMedicalIDEditorMultilineStringCell : UIView
@end

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

%group Tweak

/*

General Stuff

*/

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
    if ([self.textColor isEqual:[UIColor blackColor]])
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
    /*if ([[self superview] isKindOfClass:objc_getClass("CNContactListTableViewCell")])
    {
        return;
    }

    if ([[self superview] isKindOfClass:objc_getClass("CNContactActionCell")])
    {
        return;
    }*/

    if (colorIsEqualToColorWithTolerance(self.backgroundColor, [UIColor whiteColor], 0.06)) 
    {
        %orig(PHONE_GREY);
    }
}
%end

// Make text in fields white
%hook UITextField
-(void)setTextColor:(UIColor *)arg1 
{
    %orig([UIColor whiteColor]);
}
%end

// Get light status bar
%hook UIViewController
    -(UIStatusBarStyle) preferredStatusBarStyle
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

%hook _UINavigationBarLargeTitleView
-(void)setTitleAttributes:(NSDictionary *)arg1
{
    %orig;
    for (UILabel *l in [self subviews])
    {
        [l setTextColor:[UIColor whiteColor]];
    }
}
%end
/*

Favorites Tab 

*/



%hook UITableView

    /* Makes tableviews look a lot cleaner */
    -(void)setSeparatorStyle:(long long)arg1 
    {
        %orig(0);
    }
    -(void) setBackgroundColor:(id)arg1
    {
        %orig(PHONE_GREY);
    }
%end


/* 

Recents Tab

*/


/*

Contacts tab

*/

/*
%hook HKMedicalIDEditorPickerCell
%end
%hook HKMedicalIDNoValueTableViewCell
*/
%hook CNContactHeaderDisplayView
    -(void) setBackgroundColor:(id)arg1
    {
        %orig(PHONE_GREY);
    }
%end

%hook CNContactListTableView
    -(void) setBackgroundColor:(id)arg1
    {
        %orig(PHONE_GREY);
    }
%end

%hook CNActionsView
-(void) setBackgroundColor:(UIColor *)arg1
{
    %orig;
    //if ([[self superview] isKindOfClass:[UIView class]])
    //{
    [[self superview] setBackgroundColor:PHONE_GREY];
    //}
}
%end

%hook CNContactListTableViewCell
-(void) setBackgroundColor:(id)arg1
{
    for (UIView *v in [self subviews])
    {
        [v setBackgroundColor:[UIColor clearColor]];
    }
    %orig(CELL_GREY);
}
%end

%hook CNContactActionCell
-(void) setBackgroundColor:(id)arg1
{
    for (UIView *v in [self subviews])
    {
        [v setBackgroundColor:[UIColor clearColor]];
    }
    %orig(CELL_GREY);
}
%end
%hook CNPropertyPhoneNumberCell
-(void) setBackgroundColor:(id)arg1
{
    for (UIView *v in [self subviews])
    {
        [v setBackgroundColor:[UIColor clearColor]];
    }
    %orig(CELL_GREY);
}
%end
%hook CNPropertyEmailAddressCell
-(void) setBackgroundColor:(id)arg1
{
    for (UIView *v in [self subviews])
    {
        [v setBackgroundColor:[UIColor clearColor]];
    }
    %orig(CELL_GREY);
}
%end
/*

Keypad tab

*/

//background
%hook PHHandsetDialerView
    - (void) setBackgroundColor:(UIColor *)arg1
    {
        %orig(PHONE_GREY);
    }
%end

//keypad buttons
%hook PHHandsetDialerNumberPadButton
    +(double)unhighlightedCircleViewAlpha
    {
        return 0.25;
    }
    +(double)highlightedCircleViewAlpha
    {
        return 1.0;
    }
    -(UIColor *)buttonColor
    {
        return UIColorMake(120, 120, 120, 1);
    }
%end

%hook PHHandsetDialerDeleteButton
    -(void)setTintColor:(UIColor *)arg1 
    {
        %orig([UIColor whiteColor]);
    }
%end

/*
Voicemail 
*/

%end

%ctor
{
    %init(Tweak);
}