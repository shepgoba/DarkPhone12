#line 1 "DarkPhone12-Keypad.xm"
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

@class PHHandsetDialerNumberPadButton; @class PHHandsetDialerView; @class PHHandsetDialerDeleteButton; 
static void (*_logos_orig$_ungrouped$PHHandsetDialerView$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL PHHandsetDialerView* _LOGOS_SELF_CONST, SEL, UIColor *); static void _logos_method$_ungrouped$PHHandsetDialerView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL PHHandsetDialerView* _LOGOS_SELF_CONST, SEL, UIColor *); static double (*_logos_meta_orig$_ungrouped$PHHandsetDialerNumberPadButton$unhighlightedCircleViewAlpha)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static double _logos_meta_method$_ungrouped$PHHandsetDialerNumberPadButton$unhighlightedCircleViewAlpha(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static double (*_logos_meta_orig$_ungrouped$PHHandsetDialerNumberPadButton$highlightedCircleViewAlpha)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static double _logos_meta_method$_ungrouped$PHHandsetDialerNumberPadButton$highlightedCircleViewAlpha(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static UIColor * (*_logos_orig$_ungrouped$PHHandsetDialerNumberPadButton$buttonColor)(_LOGOS_SELF_TYPE_NORMAL PHHandsetDialerNumberPadButton* _LOGOS_SELF_CONST, SEL); static UIColor * _logos_method$_ungrouped$PHHandsetDialerNumberPadButton$buttonColor(_LOGOS_SELF_TYPE_NORMAL PHHandsetDialerNumberPadButton* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$PHHandsetDialerDeleteButton$setTintColor$)(_LOGOS_SELF_TYPE_NORMAL PHHandsetDialerDeleteButton* _LOGOS_SELF_CONST, SEL, UIColor *); static void _logos_method$_ungrouped$PHHandsetDialerDeleteButton$setTintColor$(_LOGOS_SELF_TYPE_NORMAL PHHandsetDialerDeleteButton* _LOGOS_SELF_CONST, SEL, UIColor *); 

#line 5 "DarkPhone12-Keypad.xm"


    static void _logos_method$_ungrouped$PHHandsetDialerView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL PHHandsetDialerView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UIColor * arg1) {
        _logos_orig$_ungrouped$PHHandsetDialerView$setBackgroundColor$(self, _cmd, PHONE_GREY);
    }





    static double _logos_meta_method$_ungrouped$PHHandsetDialerNumberPadButton$unhighlightedCircleViewAlpha(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
        return 0.25;
    }

    static double _logos_meta_method$_ungrouped$PHHandsetDialerNumberPadButton$highlightedCircleViewAlpha(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
        return 1.0;
    }

    static UIColor * _logos_method$_ungrouped$PHHandsetDialerNumberPadButton$buttonColor(_LOGOS_SELF_TYPE_NORMAL PHHandsetDialerNumberPadButton* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
        return UIColorMake(200, 200, 200, 1);
    }





    static void _logos_method$_ungrouped$PHHandsetDialerDeleteButton$setTintColor$(_LOGOS_SELF_TYPE_NORMAL PHHandsetDialerDeleteButton* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UIColor * arg1)  {
        _logos_orig$_ungrouped$PHHandsetDialerDeleteButton$setTintColor$(self, _cmd, [UIColor whiteColor]);
    }

static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$PHHandsetDialerView = objc_getClass("PHHandsetDialerView"); MSHookMessageEx(_logos_class$_ungrouped$PHHandsetDialerView, @selector(setBackgroundColor:), (IMP)&_logos_method$_ungrouped$PHHandsetDialerView$setBackgroundColor$, (IMP*)&_logos_orig$_ungrouped$PHHandsetDialerView$setBackgroundColor$);Class _logos_class$_ungrouped$PHHandsetDialerNumberPadButton = objc_getClass("PHHandsetDialerNumberPadButton"); Class _logos_metaclass$_ungrouped$PHHandsetDialerNumberPadButton = object_getClass(_logos_class$_ungrouped$PHHandsetDialerNumberPadButton); MSHookMessageEx(_logos_metaclass$_ungrouped$PHHandsetDialerNumberPadButton, @selector(unhighlightedCircleViewAlpha), (IMP)&_logos_meta_method$_ungrouped$PHHandsetDialerNumberPadButton$unhighlightedCircleViewAlpha, (IMP*)&_logos_meta_orig$_ungrouped$PHHandsetDialerNumberPadButton$unhighlightedCircleViewAlpha);MSHookMessageEx(_logos_metaclass$_ungrouped$PHHandsetDialerNumberPadButton, @selector(highlightedCircleViewAlpha), (IMP)&_logos_meta_method$_ungrouped$PHHandsetDialerNumberPadButton$highlightedCircleViewAlpha, (IMP*)&_logos_meta_orig$_ungrouped$PHHandsetDialerNumberPadButton$highlightedCircleViewAlpha);MSHookMessageEx(_logos_class$_ungrouped$PHHandsetDialerNumberPadButton, @selector(buttonColor), (IMP)&_logos_method$_ungrouped$PHHandsetDialerNumberPadButton$buttonColor, (IMP*)&_logos_orig$_ungrouped$PHHandsetDialerNumberPadButton$buttonColor);Class _logos_class$_ungrouped$PHHandsetDialerDeleteButton = objc_getClass("PHHandsetDialerDeleteButton"); MSHookMessageEx(_logos_class$_ungrouped$PHHandsetDialerDeleteButton, @selector(setTintColor:), (IMP)&_logos_method$_ungrouped$PHHandsetDialerDeleteButton$setTintColor$, (IMP*)&_logos_orig$_ungrouped$PHHandsetDialerDeleteButton$setTintColor$);} }
#line 35 "DarkPhone12-Keypad.xm"
