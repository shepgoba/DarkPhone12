#line 1 "Tweak.xm"
@interface UITableView (MPFavoritesTableViewController)
@end

@interface UIView (MPRecentsTableViewControler)
@end
@interface _UINavigationBarLargeTitleView
@property (nonatomic,readonly) UILabel * accessibilityTitleView; 
@end
#define UIColorMake(r, g, b, a) [UIColor colorWithRed:r/255.0f green:g/255.0f blue:b/255.0f alpha:a]
#define PHONE_GREY UIColorMake(25, 25, 25, 1)








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

@class PHHandsetDialerDeleteButton; @class CNContactListTableView; @class _UINavigationBarContentView; @class PHHandsetDialerView; @class PHHandsetDialerNumberPadButton; @class _UIVisualEffectSubview; @class UILabel; @class UITableView; @class _UINavigationBarLargeTitleView; 


#line 18 "Tweak.xm"
static void (*_logos_orig$Tweak$_UIVisualEffectSubview$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL _UIVisualEffectSubview* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$Tweak$_UIVisualEffectSubview$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL _UIVisualEffectSubview* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$Tweak$_UINavigationBarContentView$setTextColor$)(_LOGOS_SELF_TYPE_NORMAL _UINavigationBarContentView* _LOGOS_SELF_CONST, SEL, UIColor *); static void _logos_method$Tweak$_UINavigationBarContentView$setTextColor$(_LOGOS_SELF_TYPE_NORMAL _UINavigationBarContentView* _LOGOS_SELF_CONST, SEL, UIColor *); static void (*_logos_orig$Tweak$_UINavigationBarLargeTitleView$setTitle$)(_LOGOS_SELF_TYPE_NORMAL _UINavigationBarLargeTitleView* _LOGOS_SELF_CONST, SEL, NSString *); static void _logos_method$Tweak$_UINavigationBarLargeTitleView$setTitle$(_LOGOS_SELF_TYPE_NORMAL _UINavigationBarLargeTitleView* _LOGOS_SELF_CONST, SEL, NSString *); static void (*_logos_orig$Tweak$UILabel$setTextColor$)(_LOGOS_SELF_TYPE_NORMAL UILabel* _LOGOS_SELF_CONST, SEL, UIColor *); static void _logos_method$Tweak$UILabel$setTextColor$(_LOGOS_SELF_TYPE_NORMAL UILabel* _LOGOS_SELF_CONST, SEL, UIColor *); static void (*_logos_orig$Tweak$UITableView$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL UITableView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$Tweak$UITableView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL UITableView* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$Tweak$CNContactListTableView$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL CNContactListTableView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$Tweak$CNContactListTableView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL CNContactListTableView* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$Tweak$PHHandsetDialerView$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL PHHandsetDialerView* _LOGOS_SELF_CONST, SEL, UIColor *); static void _logos_method$Tweak$PHHandsetDialerView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL PHHandsetDialerView* _LOGOS_SELF_CONST, SEL, UIColor *); static double (*_logos_meta_orig$Tweak$PHHandsetDialerNumberPadButton$unhighlightedCircleViewAlpha)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static double _logos_meta_method$Tweak$PHHandsetDialerNumberPadButton$unhighlightedCircleViewAlpha(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static double (*_logos_meta_orig$Tweak$PHHandsetDialerNumberPadButton$highlightedCircleViewAlpha)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static double _logos_meta_method$Tweak$PHHandsetDialerNumberPadButton$highlightedCircleViewAlpha(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static UIColor * (*_logos_orig$Tweak$PHHandsetDialerNumberPadButton$color)(_LOGOS_SELF_TYPE_NORMAL PHHandsetDialerNumberPadButton* _LOGOS_SELF_CONST, SEL); static UIColor * _logos_method$Tweak$PHHandsetDialerNumberPadButton$color(_LOGOS_SELF_TYPE_NORMAL PHHandsetDialerNumberPadButton* _LOGOS_SELF_CONST, SEL); static UIColor * (*_logos_orig$Tweak$PHHandsetDialerNumberPadButton$buttonColor)(_LOGOS_SELF_TYPE_NORMAL PHHandsetDialerNumberPadButton* _LOGOS_SELF_CONST, SEL); static UIColor * _logos_method$Tweak$PHHandsetDialerNumberPadButton$buttonColor(_LOGOS_SELF_TYPE_NORMAL PHHandsetDialerNumberPadButton* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$Tweak$PHHandsetDialerDeleteButton$setTintColor$)(_LOGOS_SELF_TYPE_NORMAL PHHandsetDialerDeleteButton* _LOGOS_SELF_CONST, SEL, UIColor *); static void _logos_method$Tweak$PHHandsetDialerDeleteButton$setTintColor$(_LOGOS_SELF_TYPE_NORMAL PHHandsetDialerDeleteButton* _LOGOS_SELF_CONST, SEL, UIColor *); 



static void _logos_method$Tweak$_UIVisualEffectSubview$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL _UIVisualEffectSubview* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    _logos_orig$Tweak$_UIVisualEffectSubview$setBackgroundColor$(self, _cmd, PHONE_GREY);
}



static void _logos_method$Tweak$_UINavigationBarContentView$setTextColor$(_LOGOS_SELF_TYPE_NORMAL _UINavigationBarContentView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UIColor * arg1)  {
    _logos_orig$Tweak$_UINavigationBarContentView$setTextColor$(self, _cmd, [UIColor whiteColor]);
}




static void _logos_method$Tweak$_UINavigationBarLargeTitleView$setTitle$(_LOGOS_SELF_TYPE_NORMAL _UINavigationBarLargeTitleView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, NSString * arg1)  {
    _logos_orig$Tweak$_UINavigationBarLargeTitleView$setTitle$(self, _cmd, arg1);
    self.accessibilityTitleView.textColor = [UIColor whiteColor];
}




static void _logos_method$Tweak$UILabel$setTextColor$(_LOGOS_SELF_TYPE_NORMAL UILabel* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UIColor * arg1) {
    _logos_orig$Tweak$UILabel$setTextColor$(self, _cmd, [UIColor grayColor]);
}








static void _logos_method$Tweak$UITableView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL UITableView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    _logos_orig$Tweak$UITableView$setBackgroundColor$(self, _cmd, PHONE_GREY);
}






















static void _logos_method$Tweak$CNContactListTableView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL CNContactListTableView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    _logos_orig$Tweak$CNContactListTableView$setBackgroundColor$(self, _cmd, PHONE_GREY);
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

    static UIColor * _logos_method$Tweak$PHHandsetDialerNumberPadButton$color(_LOGOS_SELF_TYPE_NORMAL PHHandsetDialerNumberPadButton* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
        return [UIColor whiteColor];
    }

    static UIColor * _logos_method$Tweak$PHHandsetDialerNumberPadButton$buttonColor(_LOGOS_SELF_TYPE_NORMAL PHHandsetDialerNumberPadButton* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
        return UIColorMake(120, 120, 120, 1);
    }




static void _logos_method$Tweak$PHHandsetDialerDeleteButton$setTintColor$(_LOGOS_SELF_TYPE_NORMAL PHHandsetDialerDeleteButton* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UIColor * arg1)  {
    _logos_orig$Tweak$PHHandsetDialerDeleteButton$setTintColor$(self, _cmd, [UIColor whiteColor]);
}







static __attribute__((constructor)) void _logosLocalCtor_9b861925(int __unused argc, char __unused **argv, char __unused **envp)
{
    {Class _logos_class$Tweak$_UIVisualEffectSubview = objc_getClass("_UIVisualEffectSubview"); MSHookMessageEx(_logos_class$Tweak$_UIVisualEffectSubview, @selector(setBackgroundColor:), (IMP)&_logos_method$Tweak$_UIVisualEffectSubview$setBackgroundColor$, (IMP*)&_logos_orig$Tweak$_UIVisualEffectSubview$setBackgroundColor$);Class _logos_class$Tweak$_UINavigationBarContentView = objc_getClass("_UINavigationBarContentView"); MSHookMessageEx(_logos_class$Tweak$_UINavigationBarContentView, @selector(setTextColor:), (IMP)&_logos_method$Tweak$_UINavigationBarContentView$setTextColor$, (IMP*)&_logos_orig$Tweak$_UINavigationBarContentView$setTextColor$);Class _logos_class$Tweak$_UINavigationBarLargeTitleView = objc_getClass("_UINavigationBarLargeTitleView"); MSHookMessageEx(_logos_class$Tweak$_UINavigationBarLargeTitleView, @selector(setTitle:), (IMP)&_logos_method$Tweak$_UINavigationBarLargeTitleView$setTitle$, (IMP*)&_logos_orig$Tweak$_UINavigationBarLargeTitleView$setTitle$);Class _logos_class$Tweak$UILabel = objc_getClass("UILabel"); MSHookMessageEx(_logos_class$Tweak$UILabel, @selector(setTextColor:), (IMP)&_logos_method$Tweak$UILabel$setTextColor$, (IMP*)&_logos_orig$Tweak$UILabel$setTextColor$);Class _logos_class$Tweak$UITableView = objc_getClass("UITableView"); MSHookMessageEx(_logos_class$Tweak$UITableView, @selector(setBackgroundColor:), (IMP)&_logos_method$Tweak$UITableView$setBackgroundColor$, (IMP*)&_logos_orig$Tweak$UITableView$setBackgroundColor$);Class _logos_class$Tweak$CNContactListTableView = objc_getClass("CNContactListTableView"); MSHookMessageEx(_logos_class$Tweak$CNContactListTableView, @selector(setBackgroundColor:), (IMP)&_logos_method$Tweak$CNContactListTableView$setBackgroundColor$, (IMP*)&_logos_orig$Tweak$CNContactListTableView$setBackgroundColor$);Class _logos_class$Tweak$PHHandsetDialerView = objc_getClass("PHHandsetDialerView"); MSHookMessageEx(_logos_class$Tweak$PHHandsetDialerView, @selector(setBackgroundColor:), (IMP)&_logos_method$Tweak$PHHandsetDialerView$setBackgroundColor$, (IMP*)&_logos_orig$Tweak$PHHandsetDialerView$setBackgroundColor$);Class _logos_class$Tweak$PHHandsetDialerNumberPadButton = objc_getClass("PHHandsetDialerNumberPadButton"); Class _logos_metaclass$Tweak$PHHandsetDialerNumberPadButton = object_getClass(_logos_class$Tweak$PHHandsetDialerNumberPadButton); MSHookMessageEx(_logos_metaclass$Tweak$PHHandsetDialerNumberPadButton, @selector(unhighlightedCircleViewAlpha), (IMP)&_logos_meta_method$Tweak$PHHandsetDialerNumberPadButton$unhighlightedCircleViewAlpha, (IMP*)&_logos_meta_orig$Tweak$PHHandsetDialerNumberPadButton$unhighlightedCircleViewAlpha);MSHookMessageEx(_logos_metaclass$Tweak$PHHandsetDialerNumberPadButton, @selector(highlightedCircleViewAlpha), (IMP)&_logos_meta_method$Tweak$PHHandsetDialerNumberPadButton$highlightedCircleViewAlpha, (IMP*)&_logos_meta_orig$Tweak$PHHandsetDialerNumberPadButton$highlightedCircleViewAlpha);MSHookMessageEx(_logos_class$Tweak$PHHandsetDialerNumberPadButton, @selector(color), (IMP)&_logos_method$Tweak$PHHandsetDialerNumberPadButton$color, (IMP*)&_logos_orig$Tweak$PHHandsetDialerNumberPadButton$color);MSHookMessageEx(_logos_class$Tweak$PHHandsetDialerNumberPadButton, @selector(buttonColor), (IMP)&_logos_method$Tweak$PHHandsetDialerNumberPadButton$buttonColor, (IMP*)&_logos_orig$Tweak$PHHandsetDialerNumberPadButton$buttonColor);Class _logos_class$Tweak$PHHandsetDialerDeleteButton = objc_getClass("PHHandsetDialerDeleteButton"); MSHookMessageEx(_logos_class$Tweak$PHHandsetDialerDeleteButton, @selector(setTintColor:), (IMP)&_logos_method$Tweak$PHHandsetDialerDeleteButton$setTintColor$, (IMP*)&_logos_orig$Tweak$PHHandsetDialerDeleteButton$setTintColor$);}
}
