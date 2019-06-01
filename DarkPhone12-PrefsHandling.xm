/*#import "DarkPhone12.h"

BOOL enabled, trueBlackEnabled;

static void initPrefs() {
	NSFileManager *fileManager = [NSFileManager defaultManager];

	if (![fileManager fileExistsAtPath:PREFS_PATH]) {
		[fileManager copyItemAtPath:PREFS_DEFAULT_PATH toPath:PREFS_PATH error:nil];
	}
}

static void loadPrefs()
{
    NSDictionary *prefs = [NSMutableDictionary dictionaryWithContentsOfFile:PREFS_PATH];

    if (prefs)
    {
        enabled = [prefs objectForKey:@"enabled"] ? [[prefs objectForKey:@"enabled"] boolValue] : YES;
    }
}

%ctor
{
    initPrefs();
    loadPrefs();
}*/