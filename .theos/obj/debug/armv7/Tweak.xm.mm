#line 1 "Tweak.xm"
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

@class UIView; @class CNContactActionCell; @class CNContactListTableViewCell; @class UITableViewCell; @class _UINavigationBarContentView; @class PHHandsetDialerView; @class UIViewController; @class UITextField; @class CNPropertyEmailAddressCell; @class CNContactHeaderDisplayView; @class UITableView; @class CNActionsView; @class PHHandsetDialerDeleteButton; @class PHHandsetDialerNumberPadButton; @class _UINavigationBarLargeTitleView; @class UILabel; @class CNPropertyPhoneNumberCell; @class CNContactListTableView; @class _UIVisualEffectSubview; 


#line 25 "Tweak.xm"
static void (*_logos_orig$Tweak$UITableViewCell$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL UITableViewCell* _LOGOS_SELF_CONST, SEL, UIColor *); static void _logos_method$Tweak$UITableViewCell$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL UITableViewCell* _LOGOS_SELF_CONST, SEL, UIColor *); static void (*_logos_orig$Tweak$UILabel$setTextColor$)(_LOGOS_SELF_TYPE_NORMAL UILabel* _LOGOS_SELF_CONST, SEL, UIColor *); static void _logos_method$Tweak$UILabel$setTextColor$(_LOGOS_SELF_TYPE_NORMAL UILabel* _LOGOS_SELF_CONST, SEL, UIColor *); static void (*_logos_orig$Tweak$UIView$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL UIView* _LOGOS_SELF_CONST, SEL, UIColor *); static void _logos_method$Tweak$UIView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL UIView* _LOGOS_SELF_CONST, SEL, UIColor *); static void (*_logos_orig$Tweak$UITextField$setTextColor$)(_LOGOS_SELF_TYPE_NORMAL UITextField* _LOGOS_SELF_CONST, SEL, UIColor *); static void _logos_method$Tweak$UITextField$setTextColor$(_LOGOS_SELF_TYPE_NORMAL UITextField* _LOGOS_SELF_CONST, SEL, UIColor *); static UIStatusBarStyle (*_logos_orig$Tweak$UIViewController$preferredStatusBarStyle)(_LOGOS_SELF_TYPE_NORMAL UIViewController* _LOGOS_SELF_CONST, SEL); static UIStatusBarStyle _logos_method$Tweak$UIViewController$preferredStatusBarStyle(_LOGOS_SELF_TYPE_NORMAL UIViewController* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$Tweak$_UIVisualEffectSubview$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL _UIVisualEffectSubview* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$Tweak$_UIVisualEffectSubview$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL _UIVisualEffectSubview* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$Tweak$_UINavigationBarContentView$setTextColor$)(_LOGOS_SELF_TYPE_NORMAL _UINavigationBarContentView* _LOGOS_SELF_CONST, SEL, UIColor *); static void _logos_method$Tweak$_UINavigationBarContentView$setTextColor$(_LOGOS_SELF_TYPE_NORMAL _UINavigationBarContentView* _LOGOS_SELF_CONST, SEL, UIColor *); static void (*_logos_orig$Tweak$_UINavigationBarLargeTitleView$setTitleAttributes$)(_LOGOS_SELF_TYPE_NORMAL _UINavigationBarLargeTitleView* _LOGOS_SELF_CONST, SEL, NSDictionary *); static void _logos_method$Tweak$_UINavigationBarLargeTitleView$setTitleAttributes$(_LOGOS_SELF_TYPE_NORMAL _UINavigationBarLargeTitleView* _LOGOS_SELF_CONST, SEL, NSDictionary *); static void (*_logos_orig$Tweak$UITableView$setSeparatorStyle$)(_LOGOS_SELF_TYPE_NORMAL UITableView* _LOGOS_SELF_CONST, SEL, long long); static void _logos_method$Tweak$UITableView$setSeparatorStyle$(_LOGOS_SELF_TYPE_NORMAL UITableView* _LOGOS_SELF_CONST, SEL, long long); static void (*_logos_orig$Tweak$UITableView$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL UITableView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$Tweak$UITableView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL UITableView* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$Tweak$CNContactHeaderDisplayView$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL CNContactHeaderDisplayView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$Tweak$CNContactHeaderDisplayView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL CNContactHeaderDisplayView* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$Tweak$CNContactListTableView$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL CNContactListTableView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$Tweak$CNContactListTableView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL CNContactListTableView* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$Tweak$CNActionsView$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL CNActionsView* _LOGOS_SELF_CONST, SEL, UIColor *); static void _logos_method$Tweak$CNActionsView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL CNActionsView* _LOGOS_SELF_CONST, SEL, UIColor *); static void (*_logos_orig$Tweak$CNContactListTableViewCell$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL CNContactListTableViewCell* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$Tweak$CNContactListTableViewCell$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL CNContactListTableViewCell* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$Tweak$CNContactActionCell$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL CNContactActionCell* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$Tweak$CNContactActionCell$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL CNContactActionCell* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$Tweak$CNPropertyPhoneNumberCell$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL CNPropertyPhoneNumberCell* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$Tweak$CNPropertyPhoneNumberCell$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL CNPropertyPhoneNumberCell* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$Tweak$CNPropertyEmailAddressCell$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL CNPropertyEmailAddressCell* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$Tweak$CNPropertyEmailAddressCell$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL CNPropertyEmailAddressCell* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$Tweak$PHHandsetDialerView$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL PHHandsetDialerView* _LOGOS_SELF_CONST, SEL, UIColor *); static void _logos_method$Tweak$PHHandsetDialerView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL PHHandsetDialerView* _LOGOS_SELF_CONST, SEL, UIColor *); static double (*_logos_meta_orig$Tweak$PHHandsetDialerNumberPadButton$unhighlightedCircleViewAlpha)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static double _logos_meta_method$Tweak$PHHandsetDialerNumberPadButton$unhighlightedCircleViewAlpha(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static double (*_logos_meta_orig$Tweak$PHHandsetDialerNumberPadButton$highlightedCircleViewAlpha)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static double _logos_meta_method$Tweak$PHHandsetDialerNumberPadButton$highlightedCircleViewAlpha(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static UIColor * (*_logos_orig$Tweak$PHHandsetDialerNumberPadButton$buttonColor)(_LOGOS_SELF_TYPE_NORMAL PHHandsetDialerNumberPadButton* _LOGOS_SELF_CONST, SEL); static UIColor * _logos_method$Tweak$PHHandsetDialerNumberPadButton$buttonColor(_LOGOS_SELF_TYPE_NORMAL PHHandsetDialerNumberPadButton* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$Tweak$PHHandsetDialerDeleteButton$setTintColor$)(_LOGOS_SELF_TYPE_NORMAL PHHandsetDialerDeleteButton* _LOGOS_SELF_CONST, SEL, UIColor *); static void _logos_method$Tweak$PHHandsetDialerDeleteButton$setTintColor$(_LOGOS_SELF_TYPE_NORMAL PHHandsetDialerDeleteButton* _LOGOS_SELF_CONST, SEL, UIColor *); 


















static void _logos_method$Tweak$UITableViewCell$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL UITableViewCell* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UIColor * arg1) {
    _logos_orig$Tweak$UITableViewCell$setBackgroundColor$(self, _cmd, CELL_GREY);
}











static void _logos_method$Tweak$UILabel$setTextColor$(_LOGOS_SELF_TYPE_NORMAL UILabel* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UIColor * arg1) {
    _logos_orig$Tweak$UILabel$setTextColor$(self, _cmd, arg1);
    if ([self.textColor isEqual:[UIColor blackColor]])
    {
        _logos_orig$Tweak$UILabel$setTextColor$(self, _cmd, [UIColor whiteColor]);
    }
}





static void _logos_method$Tweak$UIView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL UIView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UIColor * arg1) {
    _logos_orig$Tweak$UIView$setBackgroundColor$(self, _cmd, arg1);
    









    if (colorIsEqualToColorWithTolerance(self.backgroundColor, [UIColor whiteColor], 0.06)) 
    {
        _logos_orig$Tweak$UIView$setBackgroundColor$(self, _cmd, PHONE_GREY);
    }
}





static void _logos_method$Tweak$UITextField$setTextColor$(_LOGOS_SELF_TYPE_NORMAL UITextField* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UIColor * arg1)  {
    _logos_orig$Tweak$UITextField$setTextColor$(self, _cmd, [UIColor whiteColor]);
}





    static UIStatusBarStyle _logos_method$Tweak$UIViewController$preferredStatusBarStyle(_LOGOS_SELF_TYPE_NORMAL UIViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
        return UIStatusBarStyleLightContent;
    }





    static void _logos_method$Tweak$_UIVisualEffectSubview$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL _UIVisualEffectSubview* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
        _logos_orig$Tweak$_UIVisualEffectSubview$setBackgroundColor$(self, _cmd, PHONE_GREY);
    }





    static void _logos_method$Tweak$_UINavigationBarContentView$setTextColor$(_LOGOS_SELF_TYPE_NORMAL _UINavigationBarContentView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UIColor * arg1)  {
        _logos_orig$Tweak$_UINavigationBarContentView$setTextColor$(self, _cmd, [UIColor whiteColor]);
    }




static void _logos_method$Tweak$_UINavigationBarLargeTitleView$setTitleAttributes$(_LOGOS_SELF_TYPE_NORMAL _UINavigationBarLargeTitleView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, NSDictionary * arg1) {
    _logos_orig$Tweak$_UINavigationBarLargeTitleView$setTitleAttributes$(self, _cmd, arg1);
    for (UILabel *l in [self subviews])
    {
        [l setTextColor:[UIColor whiteColor]];
    }
}











    

    static void _logos_method$Tweak$UITableView$setSeparatorStyle$(_LOGOS_SELF_TYPE_NORMAL UITableView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, long long arg1)  {
        _logos_orig$Tweak$UITableView$setSeparatorStyle$(self, _cmd, 0);
    }

    static void _logos_method$Tweak$UITableView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL UITableView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
        _logos_orig$Tweak$UITableView$setBackgroundColor$(self, _cmd, PHONE_GREY);
    }























    static void _logos_method$Tweak$CNContactHeaderDisplayView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL CNContactHeaderDisplayView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
        _logos_orig$Tweak$CNContactHeaderDisplayView$setBackgroundColor$(self, _cmd, PHONE_GREY);
    }




    static void _logos_method$Tweak$CNContactListTableView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL CNContactListTableView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
        _logos_orig$Tweak$CNContactListTableView$setBackgroundColor$(self, _cmd, PHONE_GREY);
    }




static void _logos_method$Tweak$CNActionsView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL CNActionsView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UIColor * arg1) {
    _logos_orig$Tweak$CNActionsView$setBackgroundColor$(self, _cmd, arg1);
    
    
    [[self superview] setBackgroundColor:PHONE_GREY];
    
}




static void _logos_method$Tweak$CNContactListTableViewCell$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL CNContactListTableViewCell* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    for (UIView *v in [self subviews])
    {
        [v setBackgroundColor:[UIColor clearColor]];
    }
    _logos_orig$Tweak$CNContactListTableViewCell$setBackgroundColor$(self, _cmd, CELL_GREY);
}




static void _logos_method$Tweak$CNContactActionCell$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL CNContactActionCell* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    for (UIView *v in [self subviews])
    {
        [v setBackgroundColor:[UIColor clearColor]];
    }
    _logos_orig$Tweak$CNContactActionCell$setBackgroundColor$(self, _cmd, CELL_GREY);
}



static void _logos_method$Tweak$CNPropertyPhoneNumberCell$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL CNPropertyPhoneNumberCell* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    for (UIView *v in [self subviews])
    {
        [v setBackgroundColor:[UIColor clearColor]];
    }
    _logos_orig$Tweak$CNPropertyPhoneNumberCell$setBackgroundColor$(self, _cmd, CELL_GREY);
}



static void _logos_method$Tweak$CNPropertyEmailAddressCell$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL CNPropertyEmailAddressCell* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    for (UIView *v in [self subviews])
    {
        [v setBackgroundColor:[UIColor clearColor]];
    }
    _logos_orig$Tweak$CNPropertyEmailAddressCell$setBackgroundColor$(self, _cmd, CELL_GREY);
}










    static void _logos_method$Tweak$PHHandsetDialerView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL PHHandsetDialerView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UIColor * arg1) {
        _logos_orig$Tweak$PHHandsetDialerView$setBackgroundColor$(self, _cmd, PHONE_GREY);
    }





    static double _logos_meta_method$Tweak$PHHandsetDialerNumberPadButton$unhighlightedCircleViewAlpha(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
        return 0.25;
    }

    static double _logos_meta_method$Tweak$PHHandsetDialerNumberPadButton$highlightedCircleViewAlpha(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
        return 1.0;
    }

    static UIColor * _logos_method$Tweak$PHHandsetDialerNumberPadButton$buttonColor(_LOGOS_SELF_TYPE_NORMAL PHHandsetDialerNumberPadButton* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
        return UIColorMake(120, 120, 120, 1);
    }




    static void _logos_method$Tweak$PHHandsetDialerDeleteButton$setTintColor$(_LOGOS_SELF_TYPE_NORMAL PHHandsetDialerDeleteButton* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UIColor * arg1)  {
        _logos_orig$Tweak$PHHandsetDialerDeleteButton$setTintColor$(self, _cmd, [UIColor whiteColor]);
    }








static __attribute__((constructor)) void _logosLocalCtor_d3957710(int __unused argc, char __unused **argv, char __unused **envp)
{
    {Class _logos_class$Tweak$UITableViewCell = objc_getClass("UITableViewCell"); MSHookMessageEx(_logos_class$Tweak$UITableViewCell, @selector(setBackgroundColor:), (IMP)&_logos_method$Tweak$UITableViewCell$setBackgroundColor$, (IMP*)&_logos_orig$Tweak$UITableViewCell$setBackgroundColor$);Class _logos_class$Tweak$UILabel = objc_getClass("UILabel"); MSHookMessageEx(_logos_class$Tweak$UILabel, @selector(setTextColor:), (IMP)&_logos_method$Tweak$UILabel$setTextColor$, (IMP*)&_logos_orig$Tweak$UILabel$setTextColor$);Class _logos_class$Tweak$UIView = objc_getClass("UIView"); MSHookMessageEx(_logos_class$Tweak$UIView, @selector(setBackgroundColor:), (IMP)&_logos_method$Tweak$UIView$setBackgroundColor$, (IMP*)&_logos_orig$Tweak$UIView$setBackgroundColor$);Class _logos_class$Tweak$UITextField = objc_getClass("UITextField"); MSHookMessageEx(_logos_class$Tweak$UITextField, @selector(setTextColor:), (IMP)&_logos_method$Tweak$UITextField$setTextColor$, (IMP*)&_logos_orig$Tweak$UITextField$setTextColor$);Class _logos_class$Tweak$UIViewController = objc_getClass("UIViewController"); MSHookMessageEx(_logos_class$Tweak$UIViewController, @selector(preferredStatusBarStyle), (IMP)&_logos_method$Tweak$UIViewController$preferredStatusBarStyle, (IMP*)&_logos_orig$Tweak$UIViewController$preferredStatusBarStyle);Class _logos_class$Tweak$_UIVisualEffectSubview = objc_getClass("_UIVisualEffectSubview"); MSHookMessageEx(_logos_class$Tweak$_UIVisualEffectSubview, @selector(setBackgroundColor:), (IMP)&_logos_method$Tweak$_UIVisualEffectSubview$setBackgroundColor$, (IMP*)&_logos_orig$Tweak$_UIVisualEffectSubview$setBackgroundColor$);Class _logos_class$Tweak$_UINavigationBarContentView = objc_getClass("_UINavigationBarContentView"); MSHookMessageEx(_logos_class$Tweak$_UINavigationBarContentView, @selector(setTextColor:), (IMP)&_logos_method$Tweak$_UINavigationBarContentView$setTextColor$, (IMP*)&_logos_orig$Tweak$_UINavigationBarContentView$setTextColor$);Class _logos_class$Tweak$_UINavigationBarLargeTitleView = objc_getClass("_UINavigationBarLargeTitleView"); MSHookMessageEx(_logos_class$Tweak$_UINavigationBarLargeTitleView, @selector(setTitleAttributes:), (IMP)&_logos_method$Tweak$_UINavigationBarLargeTitleView$setTitleAttributes$, (IMP*)&_logos_orig$Tweak$_UINavigationBarLargeTitleView$setTitleAttributes$);Class _logos_class$Tweak$UITableView = objc_getClass("UITableView"); MSHookMessageEx(_logos_class$Tweak$UITableView, @selector(setSeparatorStyle:), (IMP)&_logos_method$Tweak$UITableView$setSeparatorStyle$, (IMP*)&_logos_orig$Tweak$UITableView$setSeparatorStyle$);MSHookMessageEx(_logos_class$Tweak$UITableView, @selector(setBackgroundColor:), (IMP)&_logos_method$Tweak$UITableView$setBackgroundColor$, (IMP*)&_logos_orig$Tweak$UITableView$setBackgroundColor$);Class _logos_class$Tweak$CNContactHeaderDisplayView = objc_getClass("CNContactHeaderDisplayView"); MSHookMessageEx(_logos_class$Tweak$CNContactHeaderDisplayView, @selector(setBackgroundColor:), (IMP)&_logos_method$Tweak$CNContactHeaderDisplayView$setBackgroundColor$, (IMP*)&_logos_orig$Tweak$CNContactHeaderDisplayView$setBackgroundColor$);Class _logos_class$Tweak$CNContactListTableView = objc_getClass("CNContactListTableView"); MSHookMessageEx(_logos_class$Tweak$CNContactListTableView, @selector(setBackgroundColor:), (IMP)&_logos_method$Tweak$CNContactListTableView$setBackgroundColor$, (IMP*)&_logos_orig$Tweak$CNContactListTableView$setBackgroundColor$);Class _logos_class$Tweak$CNActionsView = objc_getClass("CNActionsView"); MSHookMessageEx(_logos_class$Tweak$CNActionsView, @selector(setBackgroundColor:), (IMP)&_logos_method$Tweak$CNActionsView$setBackgroundColor$, (IMP*)&_logos_orig$Tweak$CNActionsView$setBackgroundColor$);Class _logos_class$Tweak$CNContactListTableViewCell = objc_getClass("CNContactListTableViewCell"); MSHookMessageEx(_logos_class$Tweak$CNContactListTableViewCell, @selector(setBackgroundColor:), (IMP)&_logos_method$Tweak$CNContactListTableViewCell$setBackgroundColor$, (IMP*)&_logos_orig$Tweak$CNContactListTableViewCell$setBackgroundColor$);Class _logos_class$Tweak$CNContactActionCell = objc_getClass("CNContactActionCell"); MSHookMessageEx(_logos_class$Tweak$CNContactActionCell, @selector(setBackgroundColor:), (IMP)&_logos_method$Tweak$CNContactActionCell$setBackgroundColor$, (IMP*)&_logos_orig$Tweak$CNContactActionCell$setBackgroundColor$);Class _logos_class$Tweak$CNPropertyPhoneNumberCell = objc_getClass("CNPropertyPhoneNumberCell"); MSHookMessageEx(_logos_class$Tweak$CNPropertyPhoneNumberCell, @selector(setBackgroundColor:), (IMP)&_logos_method$Tweak$CNPropertyPhoneNumberCell$setBackgroundColor$, (IMP*)&_logos_orig$Tweak$CNPropertyPhoneNumberCell$setBackgroundColor$);Class _logos_class$Tweak$CNPropertyEmailAddressCell = objc_getClass("CNPropertyEmailAddressCell"); MSHookMessageEx(_logos_class$Tweak$CNPropertyEmailAddressCell, @selector(setBackgroundColor:), (IMP)&_logos_method$Tweak$CNPropertyEmailAddressCell$setBackgroundColor$, (IMP*)&_logos_orig$Tweak$CNPropertyEmailAddressCell$setBackgroundColor$);Class _logos_class$Tweak$PHHandsetDialerView = objc_getClass("PHHandsetDialerView"); MSHookMessageEx(_logos_class$Tweak$PHHandsetDialerView, @selector(setBackgroundColor:), (IMP)&_logos_method$Tweak$PHHandsetDialerView$setBackgroundColor$, (IMP*)&_logos_orig$Tweak$PHHandsetDialerView$setBackgroundColor$);Class _logos_class$Tweak$PHHandsetDialerNumberPadButton = objc_getClass("PHHandsetDialerNumberPadButton"); Class _logos_metaclass$Tweak$PHHandsetDialerNumberPadButton = object_getClass(_logos_class$Tweak$PHHandsetDialerNumberPadButton); MSHookMessageEx(_logos_metaclass$Tweak$PHHandsetDialerNumberPadButton, @selector(unhighlightedCircleViewAlpha), (IMP)&_logos_meta_method$Tweak$PHHandsetDialerNumberPadButton$unhighlightedCircleViewAlpha, (IMP*)&_logos_meta_orig$Tweak$PHHandsetDialerNumberPadButton$unhighlightedCircleViewAlpha);MSHookMessageEx(_logos_metaclass$Tweak$PHHandsetDialerNumberPadButton, @selector(highlightedCircleViewAlpha), (IMP)&_logos_meta_method$Tweak$PHHandsetDialerNumberPadButton$highlightedCircleViewAlpha, (IMP*)&_logos_meta_orig$Tweak$PHHandsetDialerNumberPadButton$highlightedCircleViewAlpha);MSHookMessageEx(_logos_class$Tweak$PHHandsetDialerNumberPadButton, @selector(buttonColor), (IMP)&_logos_method$Tweak$PHHandsetDialerNumberPadButton$buttonColor, (IMP*)&_logos_orig$Tweak$PHHandsetDialerNumberPadButton$buttonColor);Class _logos_class$Tweak$PHHandsetDialerDeleteButton = objc_getClass("PHHandsetDialerDeleteButton"); MSHookMessageEx(_logos_class$Tweak$PHHandsetDialerDeleteButton, @selector(setTintColor:), (IMP)&_logos_method$Tweak$PHHandsetDialerDeleteButton$setTintColor$, (IMP*)&_logos_orig$Tweak$PHHandsetDialerDeleteButton$setTintColor$);}
}
