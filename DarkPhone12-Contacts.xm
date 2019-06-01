#import <substrate.h>
#import "DarkPhone12.h"

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
    [[self superview] setBackgroundColor:PHONE_GREY];
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

%hook UITableViewLabel
-(void) setBackgroundColor:(id)arg1
{
   %orig([UIColor clearColor]);
}
%end