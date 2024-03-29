#define UIColorMake(r, g, b, a) [UIColor colorWithRed:r/255.0f green:g/255.0f blue:b/255.0f alpha:a]
#define APPLE_DEFAULT_BLUE UIColorMake(0, 122, 255, 1.0)

#define PREFS_PATH @"/var/mobile/Library/Preferences/com.shepgoba.darkphone12.plist"
#define COLOR_PREFS_PATH @"/var/mobile/Library/Preferences/com.shepgoba.darkphone12color.plist"
#define PREFS_DEFAULT_PATH @"/Library/PreferenceBundles/DarkPhone12.bundle/defaults.plist"

@interface UITableViewCellContentView : UIView
@end
@interface _UITableViewHeaderFooterViewLabel : UILabel
@end
@interface MPVoicemailMessageTableViewCell : UIView
@end
@interface TPTableViewCell : UITableViewCell
{
    UIView* _foregroundView;
}
@property (nonatomic,readonly) UIView * foregroundView;
@end
@implementation TPTableViewCell
@synthesize foregroundView=_foregroundView;
@end
@interface MPVoicemailMailboxTableViewCell : TPTableViewCell
@end

@interface MPVoicemailMessageTableViewCellScrollView : UIView
@end

@interface CNContactListHeaderFooterView : UITableViewCell
@end

@interface PHHandsetDailerNumberPadButton : UIControl 
@end

@interface PHBottomBarButton : UIButton
@end

@interface PHHandsetDialerDeleteButton : UIControl
@end