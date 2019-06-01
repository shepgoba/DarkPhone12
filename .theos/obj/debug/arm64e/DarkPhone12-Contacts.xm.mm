#line 1 "DarkPhone12-Contacts.xm"
#import <substrate.h>
#import "DarkPhone12.h"


#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class CNContactListTableViewCell; @class CNContactActionCell; @class CNPropertyPhoneNumberCell; @class CNPropertyEmailAddressCell; @class UITableViewLabel; @class CNContactHeaderDisplayView; @class CNActionsView; @class CNContactListTableView; 
static void (*_logos_orig$_ungrouped$CNContactHeaderDisplayView$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL CNContactHeaderDisplayView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$CNContactHeaderDisplayView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL CNContactHeaderDisplayView* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$CNContactListTableView$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL CNContactListTableView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$CNContactListTableView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL CNContactListTableView* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$CNActionsView$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL CNActionsView* _LOGOS_SELF_CONST, SEL, UIColor *); static void _logos_method$_ungrouped$CNActionsView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL CNActionsView* _LOGOS_SELF_CONST, SEL, UIColor *); static void (*_logos_orig$_ungrouped$CNContactListTableViewCell$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL CNContactListTableViewCell* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$CNContactListTableViewCell$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL CNContactListTableViewCell* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$CNContactActionCell$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL CNContactActionCell* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$CNContactActionCell$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL CNContactActionCell* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$CNPropertyPhoneNumberCell$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL CNPropertyPhoneNumberCell* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$CNPropertyPhoneNumberCell$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL CNPropertyPhoneNumberCell* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$CNPropertyEmailAddressCell$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL CNPropertyEmailAddressCell* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$CNPropertyEmailAddressCell$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL CNPropertyEmailAddressCell* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$UITableViewLabel$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL UITableViewLabel* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$UITableViewLabel$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL UITableViewLabel* _LOGOS_SELF_CONST, SEL, id); 

#line 4 "DarkPhone12-Contacts.xm"


    static void _logos_method$_ungrouped$CNContactHeaderDisplayView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL CNContactHeaderDisplayView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
        _logos_orig$_ungrouped$CNContactHeaderDisplayView$setBackgroundColor$(self, _cmd, PHONE_GREY);
    }




    static void _logos_method$_ungrouped$CNContactListTableView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL CNContactListTableView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
        _logos_orig$_ungrouped$CNContactListTableView$setBackgroundColor$(self, _cmd, PHONE_GREY);
    }




static void _logos_method$_ungrouped$CNActionsView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL CNActionsView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UIColor * arg1) {
    _logos_orig$_ungrouped$CNActionsView$setBackgroundColor$(self, _cmd, arg1);
    [[self superview] setBackgroundColor:PHONE_GREY];
}




static void _logos_method$_ungrouped$CNContactListTableViewCell$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL CNContactListTableViewCell* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    for (UIView *v in [self subviews])
    {
        [v setBackgroundColor:[UIColor clearColor]];
    }
    _logos_orig$_ungrouped$CNContactListTableViewCell$setBackgroundColor$(self, _cmd, CELL_GREY);
}




static void _logos_method$_ungrouped$CNContactActionCell$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL CNContactActionCell* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    for (UIView *v in [self subviews])
    {
        [v setBackgroundColor:[UIColor clearColor]];
    }
    _logos_orig$_ungrouped$CNContactActionCell$setBackgroundColor$(self, _cmd, CELL_GREY);
}



static void _logos_method$_ungrouped$CNPropertyPhoneNumberCell$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL CNPropertyPhoneNumberCell* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    for (UIView *v in [self subviews])
    {
        [v setBackgroundColor:[UIColor clearColor]];
    }
    _logos_orig$_ungrouped$CNPropertyPhoneNumberCell$setBackgroundColor$(self, _cmd, CELL_GREY);
}



static void _logos_method$_ungrouped$CNPropertyEmailAddressCell$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL CNPropertyEmailAddressCell* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    for (UIView *v in [self subviews])
    {
        [v setBackgroundColor:[UIColor clearColor]];
    }
    _logos_orig$_ungrouped$CNPropertyEmailAddressCell$setBackgroundColor$(self, _cmd, CELL_GREY);
}




static void _logos_method$_ungrouped$UITableViewLabel$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL UITableViewLabel* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
   _logos_orig$_ungrouped$UITableViewLabel$setBackgroundColor$(self, _cmd, [UIColor clearColor]);
}

static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$CNContactHeaderDisplayView = objc_getClass("CNContactHeaderDisplayView"); MSHookMessageEx(_logos_class$_ungrouped$CNContactHeaderDisplayView, @selector(setBackgroundColor:), (IMP)&_logos_method$_ungrouped$CNContactHeaderDisplayView$setBackgroundColor$, (IMP*)&_logos_orig$_ungrouped$CNContactHeaderDisplayView$setBackgroundColor$);Class _logos_class$_ungrouped$CNContactListTableView = objc_getClass("CNContactListTableView"); MSHookMessageEx(_logos_class$_ungrouped$CNContactListTableView, @selector(setBackgroundColor:), (IMP)&_logos_method$_ungrouped$CNContactListTableView$setBackgroundColor$, (IMP*)&_logos_orig$_ungrouped$CNContactListTableView$setBackgroundColor$);Class _logos_class$_ungrouped$CNActionsView = objc_getClass("CNActionsView"); MSHookMessageEx(_logos_class$_ungrouped$CNActionsView, @selector(setBackgroundColor:), (IMP)&_logos_method$_ungrouped$CNActionsView$setBackgroundColor$, (IMP*)&_logos_orig$_ungrouped$CNActionsView$setBackgroundColor$);Class _logos_class$_ungrouped$CNContactListTableViewCell = objc_getClass("CNContactListTableViewCell"); MSHookMessageEx(_logos_class$_ungrouped$CNContactListTableViewCell, @selector(setBackgroundColor:), (IMP)&_logos_method$_ungrouped$CNContactListTableViewCell$setBackgroundColor$, (IMP*)&_logos_orig$_ungrouped$CNContactListTableViewCell$setBackgroundColor$);Class _logos_class$_ungrouped$CNContactActionCell = objc_getClass("CNContactActionCell"); MSHookMessageEx(_logos_class$_ungrouped$CNContactActionCell, @selector(setBackgroundColor:), (IMP)&_logos_method$_ungrouped$CNContactActionCell$setBackgroundColor$, (IMP*)&_logos_orig$_ungrouped$CNContactActionCell$setBackgroundColor$);Class _logos_class$_ungrouped$CNPropertyPhoneNumberCell = objc_getClass("CNPropertyPhoneNumberCell"); MSHookMessageEx(_logos_class$_ungrouped$CNPropertyPhoneNumberCell, @selector(setBackgroundColor:), (IMP)&_logos_method$_ungrouped$CNPropertyPhoneNumberCell$setBackgroundColor$, (IMP*)&_logos_orig$_ungrouped$CNPropertyPhoneNumberCell$setBackgroundColor$);Class _logos_class$_ungrouped$CNPropertyEmailAddressCell = objc_getClass("CNPropertyEmailAddressCell"); MSHookMessageEx(_logos_class$_ungrouped$CNPropertyEmailAddressCell, @selector(setBackgroundColor:), (IMP)&_logos_method$_ungrouped$CNPropertyEmailAddressCell$setBackgroundColor$, (IMP*)&_logos_orig$_ungrouped$CNPropertyEmailAddressCell$setBackgroundColor$);Class _logos_class$_ungrouped$UITableViewLabel = objc_getClass("UITableViewLabel"); MSHookMessageEx(_logos_class$_ungrouped$UITableViewLabel, @selector(setBackgroundColor:), (IMP)&_logos_method$_ungrouped$UITableViewLabel$setBackgroundColor$, (IMP*)&_logos_orig$_ungrouped$UITableViewLabel$setBackgroundColor$);} }
#line 74 "DarkPhone12-Contacts.xm"
