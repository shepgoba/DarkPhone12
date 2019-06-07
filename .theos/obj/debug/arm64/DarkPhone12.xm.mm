#line 1 "DarkPhone12.xm"







#import <substrate.h>
#import <objc/runtime.h>
#import "DarkPhone12.h"

BOOL enabled, trueBlackEnabled;

UIColor *PHONE_GREY;
UIColor *CELL_GREY;

static void initPrefs() 
{
	NSFileManager *fileManager = [NSFileManager defaultManager];

	if (![fileManager fileExistsAtPath:PREFS_PATH]) 
    {
		[fileManager copyItemAtPath:PREFS_DEFAULT_PATH toPath:PREFS_PATH error:nil];
	}
}

static void loadPrefs()
{
    NSDictionary *prefs = [NSMutableDictionary dictionaryWithContentsOfFile:PREFS_PATH];
    
    if (prefs)
    {
        enabled = [prefs objectForKey:@"enabled"] ? [[prefs objectForKey:@"enabled"] boolValue] : YES;
        trueBlackEnabled = [prefs objectForKey:@"trueBlackEnabled"] ? [[prefs objectForKey:@"trueBlackEnabled"] boolValue] : YES;
    }

    if (trueBlackEnabled)
    {
        PHONE_GREY = UIColorMake(0, 0, 0, 1);
        CELL_GREY = UIColorMake(20, 20, 20, 1);
    } 
    else 
    {
        PHONE_GREY = UIColorMake(20, 20, 20, 1);
        CELL_GREY = UIColorMake(40, 40, 40, 1);
    }

}



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

@class UITableViewLabel; @class PHHandsetDialerNumberPadButton; @class PHHandsetDialerDeleteButton; @class UICollectionView; @class UINavigationController; @class UITextField; @class UINavigationBar; @class CNContactListHeaderFooterView; @class CNContactListTableView; @class UITextView; @class CNPropertyEmailAddressCell; @class CNContactListTableViewCell; @class CNActionsView; @class UIView; @class CNContactHeaderDisplayView; @class _UIVisualEffectSubview; @class TPNumberPadButton; @class CNPropertyPhoneNumberCell; @class UIViewController; @class UILabel; @class UITableViewCell; @class _UINavigationBarContentView; @class CNContactActionCell; @class UITableView; @class UIAlertController; @class PHHandsetDialerView; 


#line 71 "DarkPhone12.xm"
static void (*_logos_orig$Tweak$UICollectionView$setSeparatorStyle$)(_LOGOS_SELF_TYPE_NORMAL UICollectionView* _LOGOS_SELF_CONST, SEL, long long); static void _logos_method$Tweak$UICollectionView$setSeparatorStyle$(_LOGOS_SELF_TYPE_NORMAL UICollectionView* _LOGOS_SELF_CONST, SEL, long long); static void (*_logos_orig$Tweak$UICollectionView$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL UICollectionView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$Tweak$UICollectionView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL UICollectionView* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$Tweak$UITableView$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL UITableView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$Tweak$UITableView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL UITableView* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$Tweak$UITableViewCell$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL UITableViewCell* _LOGOS_SELF_CONST, SEL, UIColor *); static void _logos_method$Tweak$UITableViewCell$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL UITableViewCell* _LOGOS_SELF_CONST, SEL, UIColor *); static void (*_logos_orig$Tweak$UILabel$setTextColor$)(_LOGOS_SELF_TYPE_NORMAL UILabel* _LOGOS_SELF_CONST, SEL, UIColor *); static void _logos_method$Tweak$UILabel$setTextColor$(_LOGOS_SELF_TYPE_NORMAL UILabel* _LOGOS_SELF_CONST, SEL, UIColor *); static void (*_logos_orig$Tweak$UIView$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL UIView* _LOGOS_SELF_CONST, SEL, UIColor *); static void _logos_method$Tweak$UIView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL UIView* _LOGOS_SELF_CONST, SEL, UIColor *); static UITextField* (*_logos_orig$Tweak$UITextField$initWithFrame$)(_LOGOS_SELF_TYPE_INIT UITextField*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static UITextField* _logos_method$Tweak$UITextField$initWithFrame$(_LOGOS_SELF_TYPE_INIT UITextField*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static void (*_logos_orig$Tweak$UITextField$setTextColor$)(_LOGOS_SELF_TYPE_NORMAL UITextField* _LOGOS_SELF_CONST, SEL, UIColor *); static void _logos_method$Tweak$UITextField$setTextColor$(_LOGOS_SELF_TYPE_NORMAL UITextField* _LOGOS_SELF_CONST, SEL, UIColor *); static UITextView* (*_logos_orig$Tweak$UITextView$initWithFrame$)(_LOGOS_SELF_TYPE_INIT UITextView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static UITextView* _logos_method$Tweak$UITextView$initWithFrame$(_LOGOS_SELF_TYPE_INIT UITextView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static void (*_logos_orig$Tweak$UITextView$setTextColor$)(_LOGOS_SELF_TYPE_NORMAL UITextView* _LOGOS_SELF_CONST, SEL, UIColor *); static void _logos_method$Tweak$UITextView$setTextColor$(_LOGOS_SELF_TYPE_NORMAL UITextView* _LOGOS_SELF_CONST, SEL, UIColor *); static UIStatusBarStyle (*_logos_orig$Tweak$UIViewController$preferredStatusBarStyle)(_LOGOS_SELF_TYPE_NORMAL UIViewController* _LOGOS_SELF_CONST, SEL); static UIStatusBarStyle _logos_method$Tweak$UIViewController$preferredStatusBarStyle(_LOGOS_SELF_TYPE_NORMAL UIViewController* _LOGOS_SELF_CONST, SEL); static UIStatusBarStyle (*_logos_orig$Tweak$UINavigationController$preferredStatusBarStyle)(_LOGOS_SELF_TYPE_NORMAL UINavigationController* _LOGOS_SELF_CONST, SEL); static UIStatusBarStyle _logos_method$Tweak$UINavigationController$preferredStatusBarStyle(_LOGOS_SELF_TYPE_NORMAL UINavigationController* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$Tweak$_UIVisualEffectSubview$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL _UIVisualEffectSubview* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$Tweak$_UIVisualEffectSubview$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL _UIVisualEffectSubview* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$Tweak$_UINavigationBarContentView$setTextColor$)(_LOGOS_SELF_TYPE_NORMAL _UINavigationBarContentView* _LOGOS_SELF_CONST, SEL, UIColor *); static void _logos_method$Tweak$_UINavigationBarContentView$setTextColor$(_LOGOS_SELF_TYPE_NORMAL _UINavigationBarContentView* _LOGOS_SELF_CONST, SEL, UIColor *); static UINavigationBar* (*_logos_orig$Tweak$UINavigationBar$initWithFrame$)(_LOGOS_SELF_TYPE_INIT UINavigationBar*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static UINavigationBar* _logos_method$Tweak$UINavigationBar$initWithFrame$(_LOGOS_SELF_TYPE_INIT UINavigationBar*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static void (*_logos_orig$Tweak$UIAlertController$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL UIAlertController* _LOGOS_SELF_CONST, SEL); static void _logos_method$Tweak$UIAlertController$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL UIAlertController* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$Tweak$PHHandsetDialerView$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL PHHandsetDialerView* _LOGOS_SELF_CONST, SEL, UIColor *); static void _logos_method$Tweak$PHHandsetDialerView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL PHHandsetDialerView* _LOGOS_SELF_CONST, SEL, UIColor *); static double (*_logos_meta_orig$Tweak$PHHandsetDialerNumberPadButton$unhighlightedCircleViewAlpha)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static double _logos_meta_method$Tweak$PHHandsetDialerNumberPadButton$unhighlightedCircleViewAlpha(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static double (*_logos_meta_orig$Tweak$PHHandsetDialerNumberPadButton$highlightedCircleViewAlpha)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static double _logos_meta_method$Tweak$PHHandsetDialerNumberPadButton$highlightedCircleViewAlpha(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static UIColor * (*_logos_orig$Tweak$PHHandsetDialerNumberPadButton$buttonColor)(_LOGOS_SELF_TYPE_NORMAL PHHandsetDialerNumberPadButton* _LOGOS_SELF_CONST, SEL); static UIColor * _logos_method$Tweak$PHHandsetDialerNumberPadButton$buttonColor(_LOGOS_SELF_TYPE_NORMAL PHHandsetDialerNumberPadButton* _LOGOS_SELF_CONST, SEL); static id (*_logos_meta_orig$Tweak$TPNumberPadButton$imageForCharacter$highlighted$whiteVersion$)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, unsigned, BOOL, BOOL); static id _logos_meta_method$Tweak$TPNumberPadButton$imageForCharacter$highlighted$whiteVersion$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, unsigned, BOOL, BOOL); static id (*_logos_meta_orig$Tweak$TPNumberPadButton$imageForCharacter$)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, unsigned); static id _logos_meta_method$Tweak$TPNumberPadButton$imageForCharacter$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, unsigned); static id (*_logos_meta_orig$Tweak$TPNumberPadButton$imageForCharacter$highlighted$)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, unsigned, BOOL); static id _logos_meta_method$Tweak$TPNumberPadButton$imageForCharacter$highlighted$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, unsigned, BOOL); static void (*_logos_orig$Tweak$PHHandsetDialerDeleteButton$setTintColor$)(_LOGOS_SELF_TYPE_NORMAL PHHandsetDialerDeleteButton* _LOGOS_SELF_CONST, SEL, UIColor *); static void _logos_method$Tweak$PHHandsetDialerDeleteButton$setTintColor$(_LOGOS_SELF_TYPE_NORMAL PHHandsetDialerDeleteButton* _LOGOS_SELF_CONST, SEL, UIColor *); static void (*_logos_orig$Tweak$CNContactHeaderDisplayView$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL CNContactHeaderDisplayView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$Tweak$CNContactHeaderDisplayView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL CNContactHeaderDisplayView* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$Tweak$CNContactListTableView$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL CNContactListTableView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$Tweak$CNContactListTableView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL CNContactListTableView* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$Tweak$CNActionsView$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL CNActionsView* _LOGOS_SELF_CONST, SEL, UIColor *); static void _logos_method$Tweak$CNActionsView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL CNActionsView* _LOGOS_SELF_CONST, SEL, UIColor *); static void (*_logos_orig$Tweak$CNContactListTableViewCell$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL CNContactListTableViewCell* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$Tweak$CNContactListTableViewCell$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL CNContactListTableViewCell* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$Tweak$CNContactActionCell$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL CNContactActionCell* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$Tweak$CNContactActionCell$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL CNContactActionCell* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$Tweak$CNPropertyPhoneNumberCell$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL CNPropertyPhoneNumberCell* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$Tweak$CNPropertyPhoneNumberCell$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL CNPropertyPhoneNumberCell* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$Tweak$CNPropertyEmailAddressCell$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL CNPropertyEmailAddressCell* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$Tweak$CNPropertyEmailAddressCell$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL CNPropertyEmailAddressCell* _LOGOS_SELF_CONST, SEL, id); static CNContactListHeaderFooterView* (*_logos_orig$Tweak$CNContactListHeaderFooterView$initWithReuseIdentifier$)(_LOGOS_SELF_TYPE_INIT CNContactListHeaderFooterView*, SEL, id) _LOGOS_RETURN_RETAINED; static CNContactListHeaderFooterView* _logos_method$Tweak$CNContactListHeaderFooterView$initWithReuseIdentifier$(_LOGOS_SELF_TYPE_INIT CNContactListHeaderFooterView*, SEL, id) _LOGOS_RETURN_RETAINED; static void (*_logos_orig$Tweak$UITableViewLabel$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL UITableViewLabel* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$Tweak$UITableViewLabel$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL UITableViewLabel* _LOGOS_SELF_CONST, SEL, id); 



    

    static void _logos_method$Tweak$UICollectionView$setSeparatorStyle$(_LOGOS_SELF_TYPE_NORMAL UICollectionView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, long long arg1)  {
        _logos_orig$Tweak$UICollectionView$setSeparatorStyle$(self, _cmd, 0);
    }

    static void _logos_method$Tweak$UICollectionView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL UICollectionView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
        _logos_orig$Tweak$UICollectionView$setBackgroundColor$(self, _cmd, PHONE_GREY);
    }




    
    




    static void _logos_method$Tweak$UITableView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL UITableView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
        _logos_orig$Tweak$UITableView$setBackgroundColor$(self, _cmd, PHONE_GREY);
    }



    static void _logos_method$Tweak$UITableViewCell$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL UITableViewCell* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UIColor * arg1) {
        _logos_orig$Tweak$UITableViewCell$setBackgroundColor$(self, _cmd, [UIColor clearColor]);
    }





    static void _logos_method$Tweak$UILabel$setTextColor$(_LOGOS_SELF_TYPE_NORMAL UILabel* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UIColor * arg1) {
        _logos_orig$Tweak$UILabel$setTextColor$(self, _cmd, arg1);
        if (colorIsEqualToColorWithTolerance(self.textColor, [UIColor blackColor], 0.25))
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





    static UITextField* _logos_method$Tweak$UITextField$initWithFrame$(_LOGOS_SELF_TYPE_INIT UITextField* __unused self, SEL __unused _cmd, CGRect arg1) _LOGOS_RETURN_RETAINED {
        UITextField *orig = _logos_orig$Tweak$UITextField$initWithFrame$(self, _cmd, arg1);
        orig.textColor = [UIColor whiteColor];
        return orig;
    }

    static void _logos_method$Tweak$UITextField$setTextColor$(_LOGOS_SELF_TYPE_NORMAL UITextField* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UIColor * arg1)  {
        _logos_orig$Tweak$UITextField$setTextColor$(self, _cmd, [UIColor whiteColor]);
    }




    static UITextView* _logos_method$Tweak$UITextView$initWithFrame$(_LOGOS_SELF_TYPE_INIT UITextView* __unused self, SEL __unused _cmd, CGRect arg1) _LOGOS_RETURN_RETAINED {
        UITextView *orig = _logos_orig$Tweak$UITextView$initWithFrame$(self, _cmd, arg1);
        orig.textColor = [UIColor whiteColor];
        return orig;
    }

    static void _logos_method$Tweak$UITextView$setTextColor$(_LOGOS_SELF_TYPE_NORMAL UITextView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UIColor * arg1)  {
        _logos_orig$Tweak$UITextView$setTextColor$(self, _cmd, [UIColor whiteColor]);
    }






    static UIStatusBarStyle _logos_method$Tweak$UIViewController$preferredStatusBarStyle(_LOGOS_SELF_TYPE_NORMAL UIViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
        return UIStatusBarStyleLightContent;
    }




    static UIStatusBarStyle _logos_method$Tweak$UINavigationController$preferredStatusBarStyle(_LOGOS_SELF_TYPE_NORMAL UINavigationController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd)  {
        return UIStatusBarStyleLightContent; 
    }





    static void _logos_method$Tweak$_UIVisualEffectSubview$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL _UIVisualEffectSubview* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
        _logos_orig$Tweak$_UIVisualEffectSubview$setBackgroundColor$(self, _cmd, PHONE_GREY);
    }





    static void _logos_method$Tweak$_UINavigationBarContentView$setTextColor$(_LOGOS_SELF_TYPE_NORMAL _UINavigationBarContentView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UIColor * arg1)  {
        _logos_orig$Tweak$_UINavigationBarContentView$setTextColor$(self, _cmd, [UIColor whiteColor]);
    }





    static UINavigationBar* _logos_method$Tweak$UINavigationBar$initWithFrame$(_LOGOS_SELF_TYPE_INIT UINavigationBar* __unused self, SEL __unused _cmd, CGRect arg1) _LOGOS_RETURN_RETAINED {
        UINavigationBar *orig = _logos_orig$Tweak$UINavigationBar$initWithFrame$(self, _cmd, arg1);
        [orig setBarStyle: 1]; 
        return orig;
    }



    static void _logos_method$Tweak$UIAlertController$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL UIAlertController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
        _logos_orig$Tweak$UIAlertController$layoutSubviews(self, _cmd);
        UIView *subView = self.view.subviews.firstObject; 
        UIView *alertContentView = subView.subviews.firstObject; 

        [alertContentView setBackgroundColor:[UIColor darkGrayColor]];
        
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
        return UIColorMake(200, 200, 200, 1);
    }



    static id _logos_meta_method$Tweak$TPNumberPadButton$imageForCharacter$highlighted$whiteVersion$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, unsigned arg1, BOOL arg2, BOOL arg3) {
        arg3 = NO;
        return _logos_meta_orig$Tweak$TPNumberPadButton$imageForCharacter$highlighted$whiteVersion$(self, _cmd, arg1, arg2, arg3);
    }

    static id _logos_meta_method$Tweak$TPNumberPadButton$imageForCharacter$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, unsigned arg1) {
        return _logos_meta_orig$Tweak$TPNumberPadButton$imageForCharacter$(self, _cmd, arg1);
    }

    static id _logos_meta_method$Tweak$TPNumberPadButton$imageForCharacter$highlighted$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, unsigned arg1, BOOL arg2) {
        return _logos_meta_orig$Tweak$TPNumberPadButton$imageForCharacter$highlighted$(self, _cmd, arg1, arg2);
    }




    static void _logos_method$Tweak$PHHandsetDialerDeleteButton$setTintColor$(_LOGOS_SELF_TYPE_NORMAL PHHandsetDialerDeleteButton* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UIColor * arg1)  {
        _logos_orig$Tweak$PHHandsetDialerDeleteButton$setTintColor$(self, _cmd, [UIColor whiteColor]);
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




    static CNContactListHeaderFooterView* _logos_method$Tweak$CNContactListHeaderFooterView$initWithReuseIdentifier$(_LOGOS_SELF_TYPE_INIT CNContactListHeaderFooterView* __unused self, SEL __unused _cmd, id arg1) _LOGOS_RETURN_RETAINED {
        CNContactListHeaderFooterView *orig = _logos_orig$Tweak$CNContactListHeaderFooterView$initWithReuseIdentifier$(self, _cmd, arg1);
        for (UIView *v in [orig subviews])
        {
            [v setBackgroundColor:CELL_GREY];
        }
        return orig;
    }





    static void _logos_method$Tweak$UITableViewLabel$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL UITableViewLabel* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
        _logos_orig$Tweak$UITableViewLabel$setBackgroundColor$(self, _cmd, [UIColor clearColor]);
    }




static void settingsUpdated(CFNotificationCenterRef center, void *observer, CFStringRef name, const void *object, CFDictionaryRef userInfo){
    loadPrefs();
}
static __attribute__((constructor)) void _logosLocalCtor_6c524f9d(int __unused argc, char __unused **argv, char __unused **envp)
{
        CFNotificationCenterAddObserver(CFNotificationCenterGetDarwinNotifyCenter(), 
            NULL, 
            settingsUpdated, 
            CFSTR("com.shepgoba.darkphone12/prefsUpdated"),
            NULL, 
            CFNotificationSuspensionBehaviorCoalesce);

        initPrefs();
        loadPrefs();
        
        if (enabled)
        {
            [[UITextField appearance] setKeyboardAppearance:UIKeyboardAppearanceAlert];



            {Class _logos_class$Tweak$UICollectionView = objc_getClass("UICollectionView"); MSHookMessageEx(_logos_class$Tweak$UICollectionView, @selector(setSeparatorStyle:), (IMP)&_logos_method$Tweak$UICollectionView$setSeparatorStyle$, (IMP*)&_logos_orig$Tweak$UICollectionView$setSeparatorStyle$);MSHookMessageEx(_logos_class$Tweak$UICollectionView, @selector(setBackgroundColor:), (IMP)&_logos_method$Tweak$UICollectionView$setBackgroundColor$, (IMP*)&_logos_orig$Tweak$UICollectionView$setBackgroundColor$);Class _logos_class$Tweak$UITableView = objc_getClass("UITableView"); MSHookMessageEx(_logos_class$Tweak$UITableView, @selector(setBackgroundColor:), (IMP)&_logos_method$Tweak$UITableView$setBackgroundColor$, (IMP*)&_logos_orig$Tweak$UITableView$setBackgroundColor$);Class _logos_class$Tweak$UITableViewCell = objc_getClass("UITableViewCell"); MSHookMessageEx(_logos_class$Tweak$UITableViewCell, @selector(setBackgroundColor:), (IMP)&_logos_method$Tweak$UITableViewCell$setBackgroundColor$, (IMP*)&_logos_orig$Tweak$UITableViewCell$setBackgroundColor$);Class _logos_class$Tweak$UILabel = objc_getClass("UILabel"); MSHookMessageEx(_logos_class$Tweak$UILabel, @selector(setTextColor:), (IMP)&_logos_method$Tweak$UILabel$setTextColor$, (IMP*)&_logos_orig$Tweak$UILabel$setTextColor$);Class _logos_class$Tweak$UIView = objc_getClass("UIView"); MSHookMessageEx(_logos_class$Tweak$UIView, @selector(setBackgroundColor:), (IMP)&_logos_method$Tweak$UIView$setBackgroundColor$, (IMP*)&_logos_orig$Tweak$UIView$setBackgroundColor$);Class _logos_class$Tweak$UITextField = objc_getClass("UITextField"); MSHookMessageEx(_logos_class$Tweak$UITextField, @selector(initWithFrame:), (IMP)&_logos_method$Tweak$UITextField$initWithFrame$, (IMP*)&_logos_orig$Tweak$UITextField$initWithFrame$);MSHookMessageEx(_logos_class$Tweak$UITextField, @selector(setTextColor:), (IMP)&_logos_method$Tweak$UITextField$setTextColor$, (IMP*)&_logos_orig$Tweak$UITextField$setTextColor$);Class _logos_class$Tweak$UITextView = objc_getClass("UITextView"); MSHookMessageEx(_logos_class$Tweak$UITextView, @selector(initWithFrame:), (IMP)&_logos_method$Tweak$UITextView$initWithFrame$, (IMP*)&_logos_orig$Tweak$UITextView$initWithFrame$);MSHookMessageEx(_logos_class$Tweak$UITextView, @selector(setTextColor:), (IMP)&_logos_method$Tweak$UITextView$setTextColor$, (IMP*)&_logos_orig$Tweak$UITextView$setTextColor$);Class _logos_class$Tweak$UIViewController = objc_getClass("UIViewController"); MSHookMessageEx(_logos_class$Tweak$UIViewController, @selector(preferredStatusBarStyle), (IMP)&_logos_method$Tweak$UIViewController$preferredStatusBarStyle, (IMP*)&_logos_orig$Tweak$UIViewController$preferredStatusBarStyle);Class _logos_class$Tweak$UINavigationController = objc_getClass("UINavigationController"); MSHookMessageEx(_logos_class$Tweak$UINavigationController, @selector(preferredStatusBarStyle), (IMP)&_logos_method$Tweak$UINavigationController$preferredStatusBarStyle, (IMP*)&_logos_orig$Tweak$UINavigationController$preferredStatusBarStyle);Class _logos_class$Tweak$_UIVisualEffectSubview = objc_getClass("_UIVisualEffectSubview"); MSHookMessageEx(_logos_class$Tweak$_UIVisualEffectSubview, @selector(setBackgroundColor:), (IMP)&_logos_method$Tweak$_UIVisualEffectSubview$setBackgroundColor$, (IMP*)&_logos_orig$Tweak$_UIVisualEffectSubview$setBackgroundColor$);Class _logos_class$Tweak$_UINavigationBarContentView = objc_getClass("_UINavigationBarContentView"); MSHookMessageEx(_logos_class$Tweak$_UINavigationBarContentView, @selector(setTextColor:), (IMP)&_logos_method$Tweak$_UINavigationBarContentView$setTextColor$, (IMP*)&_logos_orig$Tweak$_UINavigationBarContentView$setTextColor$);Class _logos_class$Tweak$UINavigationBar = objc_getClass("UINavigationBar"); MSHookMessageEx(_logos_class$Tweak$UINavigationBar, @selector(initWithFrame:), (IMP)&_logos_method$Tweak$UINavigationBar$initWithFrame$, (IMP*)&_logos_orig$Tweak$UINavigationBar$initWithFrame$);Class _logos_class$Tweak$UIAlertController = objc_getClass("UIAlertController"); MSHookMessageEx(_logos_class$Tweak$UIAlertController, @selector(layoutSubviews), (IMP)&_logos_method$Tweak$UIAlertController$layoutSubviews, (IMP*)&_logos_orig$Tweak$UIAlertController$layoutSubviews);Class _logos_class$Tweak$PHHandsetDialerView = objc_getClass("PHHandsetDialerView"); MSHookMessageEx(_logos_class$Tweak$PHHandsetDialerView, @selector(setBackgroundColor:), (IMP)&_logos_method$Tweak$PHHandsetDialerView$setBackgroundColor$, (IMP*)&_logos_orig$Tweak$PHHandsetDialerView$setBackgroundColor$);Class _logos_class$Tweak$PHHandsetDialerNumberPadButton = objc_getClass("PHHandsetDialerNumberPadButton"); Class _logos_metaclass$Tweak$PHHandsetDialerNumberPadButton = object_getClass(_logos_class$Tweak$PHHandsetDialerNumberPadButton); MSHookMessageEx(_logos_metaclass$Tweak$PHHandsetDialerNumberPadButton, @selector(unhighlightedCircleViewAlpha), (IMP)&_logos_meta_method$Tweak$PHHandsetDialerNumberPadButton$unhighlightedCircleViewAlpha, (IMP*)&_logos_meta_orig$Tweak$PHHandsetDialerNumberPadButton$unhighlightedCircleViewAlpha);MSHookMessageEx(_logos_metaclass$Tweak$PHHandsetDialerNumberPadButton, @selector(highlightedCircleViewAlpha), (IMP)&_logos_meta_method$Tweak$PHHandsetDialerNumberPadButton$highlightedCircleViewAlpha, (IMP*)&_logos_meta_orig$Tweak$PHHandsetDialerNumberPadButton$highlightedCircleViewAlpha);MSHookMessageEx(_logos_class$Tweak$PHHandsetDialerNumberPadButton, @selector(buttonColor), (IMP)&_logos_method$Tweak$PHHandsetDialerNumberPadButton$buttonColor, (IMP*)&_logos_orig$Tweak$PHHandsetDialerNumberPadButton$buttonColor);Class _logos_class$Tweak$TPNumberPadButton = objc_getClass("TPNumberPadButton"); Class _logos_metaclass$Tweak$TPNumberPadButton = object_getClass(_logos_class$Tweak$TPNumberPadButton); MSHookMessageEx(_logos_metaclass$Tweak$TPNumberPadButton, @selector(imageForCharacter:highlighted:whiteVersion:), (IMP)&_logos_meta_method$Tweak$TPNumberPadButton$imageForCharacter$highlighted$whiteVersion$, (IMP*)&_logos_meta_orig$Tweak$TPNumberPadButton$imageForCharacter$highlighted$whiteVersion$);MSHookMessageEx(_logos_metaclass$Tweak$TPNumberPadButton, @selector(imageForCharacter:), (IMP)&_logos_meta_method$Tweak$TPNumberPadButton$imageForCharacter$, (IMP*)&_logos_meta_orig$Tweak$TPNumberPadButton$imageForCharacter$);MSHookMessageEx(_logos_metaclass$Tweak$TPNumberPadButton, @selector(imageForCharacter:highlighted:), (IMP)&_logos_meta_method$Tweak$TPNumberPadButton$imageForCharacter$highlighted$, (IMP*)&_logos_meta_orig$Tweak$TPNumberPadButton$imageForCharacter$highlighted$);Class _logos_class$Tweak$PHHandsetDialerDeleteButton = objc_getClass("PHHandsetDialerDeleteButton"); MSHookMessageEx(_logos_class$Tweak$PHHandsetDialerDeleteButton, @selector(setTintColor:), (IMP)&_logos_method$Tweak$PHHandsetDialerDeleteButton$setTintColor$, (IMP*)&_logos_orig$Tweak$PHHandsetDialerDeleteButton$setTintColor$);Class _logos_class$Tweak$CNContactHeaderDisplayView = objc_getClass("CNContactHeaderDisplayView"); MSHookMessageEx(_logos_class$Tweak$CNContactHeaderDisplayView, @selector(setBackgroundColor:), (IMP)&_logos_method$Tweak$CNContactHeaderDisplayView$setBackgroundColor$, (IMP*)&_logos_orig$Tweak$CNContactHeaderDisplayView$setBackgroundColor$);Class _logos_class$Tweak$CNContactListTableView = objc_getClass("CNContactListTableView"); MSHookMessageEx(_logos_class$Tweak$CNContactListTableView, @selector(setBackgroundColor:), (IMP)&_logos_method$Tweak$CNContactListTableView$setBackgroundColor$, (IMP*)&_logos_orig$Tweak$CNContactListTableView$setBackgroundColor$);Class _logos_class$Tweak$CNActionsView = objc_getClass("CNActionsView"); MSHookMessageEx(_logos_class$Tweak$CNActionsView, @selector(setBackgroundColor:), (IMP)&_logos_method$Tweak$CNActionsView$setBackgroundColor$, (IMP*)&_logos_orig$Tweak$CNActionsView$setBackgroundColor$);Class _logos_class$Tweak$CNContactListTableViewCell = objc_getClass("CNContactListTableViewCell"); MSHookMessageEx(_logos_class$Tweak$CNContactListTableViewCell, @selector(setBackgroundColor:), (IMP)&_logos_method$Tweak$CNContactListTableViewCell$setBackgroundColor$, (IMP*)&_logos_orig$Tweak$CNContactListTableViewCell$setBackgroundColor$);Class _logos_class$Tweak$CNContactActionCell = objc_getClass("CNContactActionCell"); MSHookMessageEx(_logos_class$Tweak$CNContactActionCell, @selector(setBackgroundColor:), (IMP)&_logos_method$Tweak$CNContactActionCell$setBackgroundColor$, (IMP*)&_logos_orig$Tweak$CNContactActionCell$setBackgroundColor$);Class _logos_class$Tweak$CNPropertyPhoneNumberCell = objc_getClass("CNPropertyPhoneNumberCell"); MSHookMessageEx(_logos_class$Tweak$CNPropertyPhoneNumberCell, @selector(setBackgroundColor:), (IMP)&_logos_method$Tweak$CNPropertyPhoneNumberCell$setBackgroundColor$, (IMP*)&_logos_orig$Tweak$CNPropertyPhoneNumberCell$setBackgroundColor$);Class _logos_class$Tweak$CNPropertyEmailAddressCell = objc_getClass("CNPropertyEmailAddressCell"); MSHookMessageEx(_logos_class$Tweak$CNPropertyEmailAddressCell, @selector(setBackgroundColor:), (IMP)&_logos_method$Tweak$CNPropertyEmailAddressCell$setBackgroundColor$, (IMP*)&_logos_orig$Tweak$CNPropertyEmailAddressCell$setBackgroundColor$);Class _logos_class$Tweak$CNContactListHeaderFooterView = objc_getClass("CNContactListHeaderFooterView"); MSHookMessageEx(_logos_class$Tweak$CNContactListHeaderFooterView, @selector(initWithReuseIdentifier:), (IMP)&_logos_method$Tweak$CNContactListHeaderFooterView$initWithReuseIdentifier$, (IMP*)&_logos_orig$Tweak$CNContactListHeaderFooterView$initWithReuseIdentifier$);Class _logos_class$Tweak$UITableViewLabel = objc_getClass("UITableViewLabel"); MSHookMessageEx(_logos_class$Tweak$UITableViewLabel, @selector(setBackgroundColor:), (IMP)&_logos_method$Tweak$UITableViewLabel$setBackgroundColor$, (IMP*)&_logos_orig$Tweak$UITableViewLabel$setBackgroundColor$);} } }
