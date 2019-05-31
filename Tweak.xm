@interface UITableView (MPFavoritesTableViewController)
@end

@interface UIView (MPRecentsTableViewControler)
@end
@interface _UINavigationBarLargeTitleView
@property (nonatomic,readonly) UILabel * accessibilityTitleView; 
@end
#define UIColorMake(r, g, b, a) [UIColor colorWithRed:r/255.0f green:g/255.0f blue:b/255.0f alpha:a]
#define PHONE_GREY UIColorMake(25, 25, 25, 1)


/*

General Stuff

*/

//Set background for top and bottom bars
%hook _UIVisualEffectSubview
- (void) setBackgroundColor:(id)arg1
{
    %orig(PHONE_GREY);
}
%end
%hook _UINavigationBarContentView
- (void) setTextColor:(UIColor *)arg1 
{
    %orig([UIColor whiteColor]);
}
%end

%hook _UINavigationBarLargeTitleView
-(void)setTitle:(NSString *)arg1 
{
    %orig(arg1);
    self.accessibilityTitleView.textColor = [UIColor whiteColor];
}
%end

%hook UILabel
- (void) setTextColor:(UIColor *)arg1
{
    %orig([UIColor grayColor]);
}
%end
/*

Favorites Tab 

*/
%hook UITableView
-(void) setBackgroundColor:(id)arg1
{
    %orig(PHONE_GREY);
}
%end

/* 

Recents Tab

*/

/*%hook UIView
-(void) setBackgroundColor:(id)arg1
{
    %orig(PHONE_GREY);
}
%end*/

/*

Contacts tab

*/
%hook CNContactListTableView
-(void) setBackgroundColor:(id)arg1
{
    %orig(PHONE_GREY);
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
    -(UIColor *)color
    {
        return [UIColor whiteColor];
    }
    -(UIColor *)buttonColor
    {
        return UIColorMake(100, 100, 100, 1);
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
