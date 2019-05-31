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

@class CNContactListTableView; @class UITableView; @class PHHandsetDialerDeleteButton; @class UILabel; @class _UINavigationBarLargeTitleView; @class _UINavigationBarContentView; @class PHHandsetDialerNumberPadButton; @class _UIVisualEffectSubview; @class PHHandsetDialerView; 
static void (*_logos_orig$_ungrouped$_UIVisualEffectSubview$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL _UIVisualEffectSubview* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$_UIVisualEffectSubview$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL _UIVisualEffectSubview* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$_UINavigationBarContentView$setTextColor$)(_LOGOS_SELF_TYPE_NORMAL _UINavigationBarContentView* _LOGOS_SELF_CONST, SEL, UIColor *); static void _logos_method$_ungrouped$_UINavigationBarContentView$setTextColor$(_LOGOS_SELF_TYPE_NORMAL _UINavigationBarContentView* _LOGOS_SELF_CONST, SEL, UIColor *); static void (*_logos_orig$_ungrouped$_UINavigationBarLargeTitleView$setTitle$)(_LOGOS_SELF_TYPE_NORMAL _UINavigationBarLargeTitleView* _LOGOS_SELF_CONST, SEL, NSString *); static void _logos_method$_ungrouped$_UINavigationBarLargeTitleView$setTitle$(_LOGOS_SELF_TYPE_NORMAL _UINavigationBarLargeTitleView* _LOGOS_SELF_CONST, SEL, NSString *); static void (*_logos_orig$_ungrouped$UILabel$setTextColor$)(_LOGOS_SELF_TYPE_NORMAL UILabel* _LOGOS_SELF_CONST, SEL, UIColor *); static void _logos_method$_ungrouped$UILabel$setTextColor$(_LOGOS_SELF_TYPE_NORMAL UILabel* _LOGOS_SELF_CONST, SEL, UIColor *); static void (*_logos_orig$_ungrouped$UITableView$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL UITableView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$UITableView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL UITableView* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$CNContactListTableView$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL CNContactListTableView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$CNContactListTableView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL CNContactListTableView* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$PHHandsetDialerView$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL PHHandsetDialerView* _LOGOS_SELF_CONST, SEL, UIColor *); static void _logos_method$_ungrouped$PHHandsetDialerView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL PHHandsetDialerView* _LOGOS_SELF_CONST, SEL, UIColor *); static double (*_logos_meta_orig$_ungrouped$PHHandsetDialerNumberPadButton$unhighlightedCircleViewAlpha)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static double _logos_meta_method$_ungrouped$PHHandsetDialerNumberPadButton$unhighlightedCircleViewAlpha(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static double (*_logos_meta_orig$_ungrouped$PHHandsetDialerNumberPadButton$highlightedCircleViewAlpha)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static double _logos_meta_method$_ungrouped$PHHandsetDialerNumberPadButton$highlightedCircleViewAlpha(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static UIColor * (*_logos_orig$_ungrouped$PHHandsetDialerNumberPadButton$color)(_LOGOS_SELF_TYPE_NORMAL PHHandsetDialerNumberPadButton* _LOGOS_SELF_CONST, SEL); static UIColor * _logos_method$_ungrouped$PHHandsetDialerNumberPadButton$color(_LOGOS_SELF_TYPE_NORMAL PHHandsetDialerNumberPadButton* _LOGOS_SELF_CONST, SEL); static UIColor * (*_logos_orig$_ungrouped$PHHandsetDialerNumberPadButton$buttonColor)(_LOGOS_SELF_TYPE_NORMAL PHHandsetDialerNumberPadButton* _LOGOS_SELF_CONST, SEL); static UIColor * _logos_method$_ungrouped$PHHandsetDialerNumberPadButton$buttonColor(_LOGOS_SELF_TYPE_NORMAL PHHandsetDialerNumberPadButton* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$PHHandsetDialerDeleteButton$setTintColor$)(_LOGOS_SELF_TYPE_NORMAL PHHandsetDialerDeleteButton* _LOGOS_SELF_CONST, SEL, UIColor *); static void _logos_method$_ungrouped$PHHandsetDialerDeleteButton$setTintColor$(_LOGOS_SELF_TYPE_NORMAL PHHandsetDialerDeleteButton* _LOGOS_SELF_CONST, SEL, UIColor *); 

#line 20 "Tweak.xm"


static void _logos_method$_ungrouped$_UIVisualEffectSubview$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL _UIVisualEffectSubview* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    _logos_orig$_ungrouped$_UIVisualEffectSubview$setBackgroundColor$(self, _cmd, PHONE_GREY);
}



static void _logos_method$_ungrouped$_UINavigationBarContentView$setTextColor$(_LOGOS_SELF_TYPE_NORMAL _UINavigationBarContentView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UIColor * arg1)  {
    _logos_orig$_ungrouped$_UINavigationBarContentView$setTextColor$(self, _cmd, [UIColor whiteColor]);
}




static void _logos_method$_ungrouped$_UINavigationBarLargeTitleView$setTitle$(_LOGOS_SELF_TYPE_NORMAL _UINavigationBarLargeTitleView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, NSString * arg1)  {
    _logos_orig$_ungrouped$_UINavigationBarLargeTitleView$setTitle$(self, _cmd, arg1);
    self.accessibilityTitleView.textColor = [UIColor whiteColor];
}




static void _logos_method$_ungrouped$UILabel$setTextColor$(_LOGOS_SELF_TYPE_NORMAL UILabel* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UIColor * arg1) {
    _logos_orig$_ungrouped$UILabel$setTextColor$(self, _cmd, [UIColor grayColor]);
}








static void _logos_method$_ungrouped$UITableView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL UITableView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    _logos_orig$_ungrouped$UITableView$setBackgroundColor$(self, _cmd, PHONE_GREY);
}






















static void _logos_method$_ungrouped$CNContactListTableView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL CNContactListTableView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    _logos_orig$_ungrouped$CNContactListTableView$setBackgroundColor$(self, _cmd, PHONE_GREY);
}












static void _logos_method$_ungrouped$PHHandsetDialerView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL PHHandsetDialerView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UIColor * arg1) {
    _logos_orig$_ungrouped$PHHandsetDialerView$setBackgroundColor$(self, _cmd, PHONE_GREY);
}





    static double _logos_meta_method$_ungrouped$PHHandsetDialerNumberPadButton$unhighlightedCircleViewAlpha(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
        return 0.25;
    }

    static double _logos_meta_method$_ungrouped$PHHandsetDialerNumberPadButton$highlightedCircleViewAlpha(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
        return 1.0;
    }

    static UIColor * _logos_method$_ungrouped$PHHandsetDialerNumberPadButton$color(_LOGOS_SELF_TYPE_NORMAL PHHandsetDialerNumberPadButton* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
        return [UIColor whiteColor];
    }

    static UIColor * _logos_method$_ungrouped$PHHandsetDialerNumberPadButton$buttonColor(_LOGOS_SELF_TYPE_NORMAL PHHandsetDialerNumberPadButton* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
        return UIColorMake(100, 100, 100, 1);
    }




static void _logos_method$_ungrouped$PHHandsetDialerDeleteButton$setTintColor$(_LOGOS_SELF_TYPE_NORMAL PHHandsetDialerDeleteButton* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UIColor * arg1)  {
    _logos_orig$_ungrouped$PHHandsetDialerDeleteButton$setTintColor$(self, _cmd, [UIColor whiteColor]);
}




static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$_UIVisualEffectSubview = objc_getClass("_UIVisualEffectSubview"); MSHookMessageEx(_logos_class$_ungrouped$_UIVisualEffectSubview, @selector(setBackgroundColor:), (IMP)&_logos_method$_ungrouped$_UIVisualEffectSubview$setBackgroundColor$, (IMP*)&_logos_orig$_ungrouped$_UIVisualEffectSubview$setBackgroundColor$);Class _logos_class$_ungrouped$_UINavigationBarContentView = objc_getClass("_UINavigationBarContentView"); MSHookMessageEx(_logos_class$_ungrouped$_UINavigationBarContentView, @selector(setTextColor:), (IMP)&_logos_method$_ungrouped$_UINavigationBarContentView$setTextColor$, (IMP*)&_logos_orig$_ungrouped$_UINavigationBarContentView$setTextColor$);Class _logos_class$_ungrouped$_UINavigationBarLargeTitleView = objc_getClass("_UINavigationBarLargeTitleView"); MSHookMessageEx(_logos_class$_ungrouped$_UINavigationBarLargeTitleView, @selector(setTitle:), (IMP)&_logos_method$_ungrouped$_UINavigationBarLargeTitleView$setTitle$, (IMP*)&_logos_orig$_ungrouped$_UINavigationBarLargeTitleView$setTitle$);Class _logos_class$_ungrouped$UILabel = objc_getClass("UILabel"); MSHookMessageEx(_logos_class$_ungrouped$UILabel, @selector(setTextColor:), (IMP)&_logos_method$_ungrouped$UILabel$setTextColor$, (IMP*)&_logos_orig$_ungrouped$UILabel$setTextColor$);Class _logos_class$_ungrouped$UITableView = objc_getClass("UITableView"); MSHookMessageEx(_logos_class$_ungrouped$UITableView, @selector(setBackgroundColor:), (IMP)&_logos_method$_ungrouped$UITableView$setBackgroundColor$, (IMP*)&_logos_orig$_ungrouped$UITableView$setBackgroundColor$);Class _logos_class$_ungrouped$CNContactListTableView = objc_getClass("CNContactListTableView"); MSHookMessageEx(_logos_class$_ungrouped$CNContactListTableView, @selector(setBackgroundColor:), (IMP)&_logos_method$_ungrouped$CNContactListTableView$setBackgroundColor$, (IMP*)&_logos_orig$_ungrouped$CNContactListTableView$setBackgroundColor$);Class _logos_class$_ungrouped$PHHandsetDialerView = objc_getClass("PHHandsetDialerView"); MSHookMessageEx(_logos_class$_ungrouped$PHHandsetDialerView, @selector(setBackgroundColor:), (IMP)&_logos_method$_ungrouped$PHHandsetDialerView$setBackgroundColor$, (IMP*)&_logos_orig$_ungrouped$PHHandsetDialerView$setBackgroundColor$);Class _logos_class$_ungrouped$PHHandsetDialerNumberPadButton = objc_getClass("PHHandsetDialerNumberPadButton"); Class _logos_metaclass$_ungrouped$PHHandsetDialerNumberPadButton = object_getClass(_logos_class$_ungrouped$PHHandsetDialerNumberPadButton); MSHookMessageEx(_logos_metaclass$_ungrouped$PHHandsetDialerNumberPadButton, @selector(unhighlightedCircleViewAlpha), (IMP)&_logos_meta_method$_ungrouped$PHHandsetDialerNumberPadButton$unhighlightedCircleViewAlpha, (IMP*)&_logos_meta_orig$_ungrouped$PHHandsetDialerNumberPadButton$unhighlightedCircleViewAlpha);MSHookMessageEx(_logos_metaclass$_ungrouped$PHHandsetDialerNumberPadButton, @selector(highlightedCircleViewAlpha), (IMP)&_logos_meta_method$_ungrouped$PHHandsetDialerNumberPadButton$highlightedCircleViewAlpha, (IMP*)&_logos_meta_orig$_ungrouped$PHHandsetDialerNumberPadButton$highlightedCircleViewAlpha);MSHookMessageEx(_logos_class$_ungrouped$PHHandsetDialerNumberPadButton, @selector(color), (IMP)&_logos_method$_ungrouped$PHHandsetDialerNumberPadButton$color, (IMP*)&_logos_orig$_ungrouped$PHHandsetDialerNumberPadButton$color);MSHookMessageEx(_logos_class$_ungrouped$PHHandsetDialerNumberPadButton, @selector(buttonColor), (IMP)&_logos_method$_ungrouped$PHHandsetDialerNumberPadButton$buttonColor, (IMP*)&_logos_orig$_ungrouped$PHHandsetDialerNumberPadButton$buttonColor);Class _logos_class$_ungrouped$PHHandsetDialerDeleteButton = objc_getClass("PHHandsetDialerDeleteButton"); MSHookMessageEx(_logos_class$_ungrouped$PHHandsetDialerDeleteButton, @selector(setTintColor:), (IMP)&_logos_method$_ungrouped$PHHandsetDialerDeleteButton$setTintColor$, (IMP*)&_logos_orig$_ungrouped$PHHandsetDialerDeleteButton$setTintColor$);} }
#line 128 "Tweak.xm"
