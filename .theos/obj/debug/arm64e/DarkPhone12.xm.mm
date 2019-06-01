#line 1 "DarkPhone12.xm"









#import <substrate.h>
#import "DarkPhone12.h"

BOOL enabled = NO;


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

@class UIView; @class UIViewController; @class UITableViewCell; @class UITableView; @class UINavigationBar; @class _UIVisualEffectSubview; @class _UINavigationBarContentView; @class UINavigationController; @class UILabel; @class UITextField; @class UICollectionView; @class UITextView; 
static void (*_logos_orig$_ungrouped$UICollectionView$setSeparatorStyle$)(_LOGOS_SELF_TYPE_NORMAL UICollectionView* _LOGOS_SELF_CONST, SEL, long long); static void _logos_method$_ungrouped$UICollectionView$setSeparatorStyle$(_LOGOS_SELF_TYPE_NORMAL UICollectionView* _LOGOS_SELF_CONST, SEL, long long); static void (*_logos_orig$_ungrouped$UICollectionView$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL UICollectionView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$UICollectionView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL UICollectionView* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$UITableView$setSeparatorStyle$)(_LOGOS_SELF_TYPE_NORMAL UITableView* _LOGOS_SELF_CONST, SEL, long long); static void _logos_method$_ungrouped$UITableView$setSeparatorStyle$(_LOGOS_SELF_TYPE_NORMAL UITableView* _LOGOS_SELF_CONST, SEL, long long); static void (*_logos_orig$_ungrouped$UITableView$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL UITableView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$UITableView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL UITableView* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$UITableViewCell$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL UITableViewCell* _LOGOS_SELF_CONST, SEL, UIColor *); static void _logos_method$_ungrouped$UITableViewCell$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL UITableViewCell* _LOGOS_SELF_CONST, SEL, UIColor *); static void (*_logos_orig$_ungrouped$UILabel$setTextColor$)(_LOGOS_SELF_TYPE_NORMAL UILabel* _LOGOS_SELF_CONST, SEL, UIColor *); static void _logos_method$_ungrouped$UILabel$setTextColor$(_LOGOS_SELF_TYPE_NORMAL UILabel* _LOGOS_SELF_CONST, SEL, UIColor *); static void (*_logos_orig$_ungrouped$UIView$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL UIView* _LOGOS_SELF_CONST, SEL, UIColor *); static void _logos_method$_ungrouped$UIView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL UIView* _LOGOS_SELF_CONST, SEL, UIColor *); static UITextField* (*_logos_orig$_ungrouped$UITextField$initWithFrame$)(_LOGOS_SELF_TYPE_INIT UITextField*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static UITextField* _logos_method$_ungrouped$UITextField$initWithFrame$(_LOGOS_SELF_TYPE_INIT UITextField*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static void (*_logos_orig$_ungrouped$UITextField$setTextColor$)(_LOGOS_SELF_TYPE_NORMAL UITextField* _LOGOS_SELF_CONST, SEL, UIColor *); static void _logos_method$_ungrouped$UITextField$setTextColor$(_LOGOS_SELF_TYPE_NORMAL UITextField* _LOGOS_SELF_CONST, SEL, UIColor *); static UITextView* (*_logos_orig$_ungrouped$UITextView$initWithFrame$)(_LOGOS_SELF_TYPE_INIT UITextView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static UITextView* _logos_method$_ungrouped$UITextView$initWithFrame$(_LOGOS_SELF_TYPE_INIT UITextView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static void (*_logos_orig$_ungrouped$UITextView$setTextColor$)(_LOGOS_SELF_TYPE_NORMAL UITextView* _LOGOS_SELF_CONST, SEL, UIColor *); static void _logos_method$_ungrouped$UITextView$setTextColor$(_LOGOS_SELF_TYPE_NORMAL UITextView* _LOGOS_SELF_CONST, SEL, UIColor *); static UIStatusBarStyle (*_logos_orig$_ungrouped$UIViewController$preferredStatusBarStyle)(_LOGOS_SELF_TYPE_NORMAL UIViewController* _LOGOS_SELF_CONST, SEL); static UIStatusBarStyle _logos_method$_ungrouped$UIViewController$preferredStatusBarStyle(_LOGOS_SELF_TYPE_NORMAL UIViewController* _LOGOS_SELF_CONST, SEL); static UIStatusBarStyle (*_logos_orig$_ungrouped$UINavigationController$preferredStatusBarStyle)(_LOGOS_SELF_TYPE_NORMAL UINavigationController* _LOGOS_SELF_CONST, SEL); static UIStatusBarStyle _logos_method$_ungrouped$UINavigationController$preferredStatusBarStyle(_LOGOS_SELF_TYPE_NORMAL UINavigationController* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$_UIVisualEffectSubview$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL _UIVisualEffectSubview* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$_UIVisualEffectSubview$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL _UIVisualEffectSubview* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$_UINavigationBarContentView$setTextColor$)(_LOGOS_SELF_TYPE_NORMAL _UINavigationBarContentView* _LOGOS_SELF_CONST, SEL, UIColor *); static void _logos_method$_ungrouped$_UINavigationBarContentView$setTextColor$(_LOGOS_SELF_TYPE_NORMAL _UINavigationBarContentView* _LOGOS_SELF_CONST, SEL, UIColor *); static UINavigationBar* (*_logos_orig$_ungrouped$UINavigationBar$initWithFrame$)(_LOGOS_SELF_TYPE_INIT UINavigationBar*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static UINavigationBar* _logos_method$_ungrouped$UINavigationBar$initWithFrame$(_LOGOS_SELF_TYPE_INIT UINavigationBar*, SEL, CGRect) _LOGOS_RETURN_RETAINED; 

#line 34 "DarkPhone12.xm"


    

    static void _logos_method$_ungrouped$UICollectionView$setSeparatorStyle$(_LOGOS_SELF_TYPE_NORMAL UICollectionView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, long long arg1)  {
        _logos_orig$_ungrouped$UICollectionView$setSeparatorStyle$(self, _cmd, 0);
    }

    static void _logos_method$_ungrouped$UICollectionView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL UICollectionView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
        _logos_orig$_ungrouped$UICollectionView$setBackgroundColor$(self, _cmd, PHONE_GREY);
    }




    

    static void _logos_method$_ungrouped$UITableView$setSeparatorStyle$(_LOGOS_SELF_TYPE_NORMAL UITableView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, long long arg1)  {
        _logos_orig$_ungrouped$UITableView$setSeparatorStyle$(self, _cmd, 0);
    }

    static void _logos_method$_ungrouped$UITableView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL UITableView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
        _logos_orig$_ungrouped$UITableView$setBackgroundColor$(self, _cmd, PHONE_GREY);
    }




static void _logos_method$_ungrouped$UITableViewCell$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL UITableViewCell* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UIColor * arg1) {
    _logos_orig$_ungrouped$UITableViewCell$setBackgroundColor$(self, _cmd, CELL_GREY);
}





static void _logos_method$_ungrouped$UILabel$setTextColor$(_LOGOS_SELF_TYPE_NORMAL UILabel* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UIColor * arg1) {
    _logos_orig$_ungrouped$UILabel$setTextColor$(self, _cmd, arg1);
    if (colorIsEqualToColorWithTolerance(self.textColor, [UIColor blackColor], 0.25))
    {
        _logos_orig$_ungrouped$UILabel$setTextColor$(self, _cmd, [UIColor whiteColor]);
    }
}





static void _logos_method$_ungrouped$UIView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL UIView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UIColor * _) {
    _logos_orig$_ungrouped$UIView$setBackgroundColor$(self, _cmd, _);
    
    if (colorIsEqualToColorWithTolerance(self.backgroundColor, [UIColor whiteColor], 0.06) && ![self isKindOfClass:[UIControl class]]) 
    {
        _logos_orig$_ungrouped$UIView$setBackgroundColor$(self, _cmd, PHONE_GREY);
    }
}





static UITextField* _logos_method$_ungrouped$UITextField$initWithFrame$(_LOGOS_SELF_TYPE_INIT UITextField* __unused self, SEL __unused _cmd, CGRect arg1) _LOGOS_RETURN_RETAINED {
    UITextField *orig = _logos_orig$_ungrouped$UITextField$initWithFrame$(self, _cmd, arg1);
    orig.textColor = [UIColor whiteColor];
    return orig;
}

static void _logos_method$_ungrouped$UITextField$setTextColor$(_LOGOS_SELF_TYPE_NORMAL UITextField* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UIColor * arg1)  {
    _logos_orig$_ungrouped$UITextField$setTextColor$(self, _cmd, [UIColor whiteColor]);
}




static UITextView* _logos_method$_ungrouped$UITextView$initWithFrame$(_LOGOS_SELF_TYPE_INIT UITextView* __unused self, SEL __unused _cmd, CGRect arg1) _LOGOS_RETURN_RETAINED {
    UITextView *orig = _logos_orig$_ungrouped$UITextView$initWithFrame$(self, _cmd, arg1);
    orig.textColor = [UIColor whiteColor];
    return orig;
}


static void _logos_method$_ungrouped$UITextView$setTextColor$(_LOGOS_SELF_TYPE_NORMAL UITextView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UIColor * arg1)  {
    _logos_orig$_ungrouped$UITextView$setTextColor$(self, _cmd, [UIColor whiteColor]);
}






    static UIStatusBarStyle _logos_method$_ungrouped$UIViewController$preferredStatusBarStyle(_LOGOS_SELF_TYPE_NORMAL UIViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
        return UIStatusBarStyleLightContent;
    }




    static UIStatusBarStyle _logos_method$_ungrouped$UINavigationController$preferredStatusBarStyle(_LOGOS_SELF_TYPE_NORMAL UINavigationController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd)  {
        return UIStatusBarStyleLightContent; 
    }





    static void _logos_method$_ungrouped$_UIVisualEffectSubview$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL _UIVisualEffectSubview* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
        _logos_orig$_ungrouped$_UIVisualEffectSubview$setBackgroundColor$(self, _cmd, PHONE_GREY);
    }





    static void _logos_method$_ungrouped$_UINavigationBarContentView$setTextColor$(_LOGOS_SELF_TYPE_NORMAL _UINavigationBarContentView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UIColor * arg1)  {
        _logos_orig$_ungrouped$_UINavigationBarContentView$setTextColor$(self, _cmd, [UIColor whiteColor]);
    }





static UINavigationBar* _logos_method$_ungrouped$UINavigationBar$initWithFrame$(_LOGOS_SELF_TYPE_INIT UINavigationBar* __unused self, SEL __unused _cmd, CGRect arg1) _LOGOS_RETURN_RETAINED {
    UINavigationBar *orig = _logos_orig$_ungrouped$UINavigationBar$initWithFrame$(self, _cmd, arg1);
    [orig setBarStyle: 1]; 
    return orig;
}


static __attribute__((constructor)) void _logosLocalCtor_bd4c9ab7(int __unused argc, char __unused **argv, char __unused **envp)
{
    [[UITextField appearance] setKeyboardAppearance:UIKeyboardAppearanceAlert];
    if (enabled)
        {Class _logos_class$_ungrouped$UICollectionView = objc_getClass("UICollectionView"); MSHookMessageEx(_logos_class$_ungrouped$UICollectionView, @selector(setSeparatorStyle:), (IMP)&_logos_method$_ungrouped$UICollectionView$setSeparatorStyle$, (IMP*)&_logos_orig$_ungrouped$UICollectionView$setSeparatorStyle$);MSHookMessageEx(_logos_class$_ungrouped$UICollectionView, @selector(setBackgroundColor:), (IMP)&_logos_method$_ungrouped$UICollectionView$setBackgroundColor$, (IMP*)&_logos_orig$_ungrouped$UICollectionView$setBackgroundColor$);Class _logos_class$_ungrouped$UITableView = objc_getClass("UITableView"); MSHookMessageEx(_logos_class$_ungrouped$UITableView, @selector(setSeparatorStyle:), (IMP)&_logos_method$_ungrouped$UITableView$setSeparatorStyle$, (IMP*)&_logos_orig$_ungrouped$UITableView$setSeparatorStyle$);MSHookMessageEx(_logos_class$_ungrouped$UITableView, @selector(setBackgroundColor:), (IMP)&_logos_method$_ungrouped$UITableView$setBackgroundColor$, (IMP*)&_logos_orig$_ungrouped$UITableView$setBackgroundColor$);Class _logos_class$_ungrouped$UITableViewCell = objc_getClass("UITableViewCell"); MSHookMessageEx(_logos_class$_ungrouped$UITableViewCell, @selector(setBackgroundColor:), (IMP)&_logos_method$_ungrouped$UITableViewCell$setBackgroundColor$, (IMP*)&_logos_orig$_ungrouped$UITableViewCell$setBackgroundColor$);Class _logos_class$_ungrouped$UILabel = objc_getClass("UILabel"); MSHookMessageEx(_logos_class$_ungrouped$UILabel, @selector(setTextColor:), (IMP)&_logos_method$_ungrouped$UILabel$setTextColor$, (IMP*)&_logos_orig$_ungrouped$UILabel$setTextColor$);Class _logos_class$_ungrouped$UIView = objc_getClass("UIView"); MSHookMessageEx(_logos_class$_ungrouped$UIView, @selector(setBackgroundColor:), (IMP)&_logos_method$_ungrouped$UIView$setBackgroundColor$, (IMP*)&_logos_orig$_ungrouped$UIView$setBackgroundColor$);Class _logos_class$_ungrouped$UITextField = objc_getClass("UITextField"); MSHookMessageEx(_logos_class$_ungrouped$UITextField, @selector(initWithFrame:), (IMP)&_logos_method$_ungrouped$UITextField$initWithFrame$, (IMP*)&_logos_orig$_ungrouped$UITextField$initWithFrame$);MSHookMessageEx(_logos_class$_ungrouped$UITextField, @selector(setTextColor:), (IMP)&_logos_method$_ungrouped$UITextField$setTextColor$, (IMP*)&_logos_orig$_ungrouped$UITextField$setTextColor$);Class _logos_class$_ungrouped$UITextView = objc_getClass("UITextView"); MSHookMessageEx(_logos_class$_ungrouped$UITextView, @selector(initWithFrame:), (IMP)&_logos_method$_ungrouped$UITextView$initWithFrame$, (IMP*)&_logos_orig$_ungrouped$UITextView$initWithFrame$);MSHookMessageEx(_logos_class$_ungrouped$UITextView, @selector(setTextColor:), (IMP)&_logos_method$_ungrouped$UITextView$setTextColor$, (IMP*)&_logos_orig$_ungrouped$UITextView$setTextColor$);Class _logos_class$_ungrouped$UIViewController = objc_getClass("UIViewController"); MSHookMessageEx(_logos_class$_ungrouped$UIViewController, @selector(preferredStatusBarStyle), (IMP)&_logos_method$_ungrouped$UIViewController$preferredStatusBarStyle, (IMP*)&_logos_orig$_ungrouped$UIViewController$preferredStatusBarStyle);Class _logos_class$_ungrouped$UINavigationController = objc_getClass("UINavigationController"); MSHookMessageEx(_logos_class$_ungrouped$UINavigationController, @selector(preferredStatusBarStyle), (IMP)&_logos_method$_ungrouped$UINavigationController$preferredStatusBarStyle, (IMP*)&_logos_orig$_ungrouped$UINavigationController$preferredStatusBarStyle);Class _logos_class$_ungrouped$_UIVisualEffectSubview = objc_getClass("_UIVisualEffectSubview"); MSHookMessageEx(_logos_class$_ungrouped$_UIVisualEffectSubview, @selector(setBackgroundColor:), (IMP)&_logos_method$_ungrouped$_UIVisualEffectSubview$setBackgroundColor$, (IMP*)&_logos_orig$_ungrouped$_UIVisualEffectSubview$setBackgroundColor$);Class _logos_class$_ungrouped$_UINavigationBarContentView = objc_getClass("_UINavigationBarContentView"); MSHookMessageEx(_logos_class$_ungrouped$_UINavigationBarContentView, @selector(setTextColor:), (IMP)&_logos_method$_ungrouped$_UINavigationBarContentView$setTextColor$, (IMP*)&_logos_orig$_ungrouped$_UINavigationBarContentView$setTextColor$);Class _logos_class$_ungrouped$UINavigationBar = objc_getClass("UINavigationBar"); MSHookMessageEx(_logos_class$_ungrouped$UINavigationBar, @selector(initWithFrame:), (IMP)&_logos_method$_ungrouped$UINavigationBar$initWithFrame$, (IMP*)&_logos_orig$_ungrouped$UINavigationBar$initWithFrame$);}
}
