
#define UIColorMake(r, g, b, a) [UIColor colorWithRed:r/255.0f green:g/255.0f blue:b/255.0f alpha:a]
#define APPLE_DEFAULT_BLUE UIColorMake(0, 122, 255, 1.0)

#define SEPARATOR_GREY UIColorMake(255, 255, 255, 1)
#define PREFS_PATH @"/var/mobile/Library/Preferences/com.shepgoba.darkphone12.plist"
#define COLOR_PREFS_PATH @"/var/mobile/Library/Preferences/com.shepgoba.darkphone12color.plist"
#define PREFS_DEFAULT_PATH @"/Library/PreferenceBundles/DarkPhone12.bundle/defaults.plist"

@interface UITableViewCellContentView : UIView
@end

@interface HKMedicalIDEditorMultilineStringCell : UIView
@end

@interface PHHandsetDialerNumberPadButton : UIView
@end

@interface CNUINavigationListViewCell : UITableViewCell
@end

@interface _UIVisualEffectSubview : UIView
@end
@interface UIButtonLabel : UILabel
-(void)setTextColor:(id)arg1 ;
@end
@interface TKVibrationRecorderTouchSurface : UIView
@end
@interface TKVibrationRecorderRippleView : UIView
@end
@interface TKVibrationRecorderContentViewController : UIViewController
@end
@interface CNContactListTableView : UITableView
@end
@interface CNContactListHeaderFooterView : UITableViewCell
@end