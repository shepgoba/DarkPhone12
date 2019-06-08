
#define UIColorMake(r, g, b, a) [UIColor colorWithRed:r/255.0f green:g/255.0f blue:b/255.0f alpha:a]
#define SEPARATOR_GREY UIColorMake(255, 255, 255, 1)
#define PREFS_PATH @"/var/mobile/Library/Preferences/com.shepgoba.darkphone12.plist"
#define PREFS_DEFAULT_PATH @"/Library/PreferenceBundles/DarkPhone12.bundle/defaults.plist"

@interface UITableViewCellContentView : UIView
@end

@interface HKMedicalIDEditorMultilineStringCell : UIView
@end

@interface PHHandsetDialerNumberPadButton : UIView
@end