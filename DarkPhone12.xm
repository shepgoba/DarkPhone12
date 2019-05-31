#import <substrate.h>
#import "DarkPhone12.h"

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
- (void) setBackgroundColor:(UIColor *)_
{
    %orig;
    
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

%hook UITextView
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

/* Top Labels (these have to be updated constantly for some reason, it doesn't work if it's set once) */
-(void)updateContent
{
    %orig;
    for (UILabel *l in [self subviews])
    {
        [l setTextColor:[UIColor whiteColor]];
    }
}
%end

%ctor
{
    [[UITextField appearance] setKeyboardAppearance:UIKeyboardAppearanceAlert];
    %init;
}