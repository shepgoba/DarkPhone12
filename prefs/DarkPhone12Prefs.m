#include "DarkPhone12Prefs.h"
#import <spawn.h>

@implementation DPPRootListController

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"Root" target:self] retain];
	}

	return _specifiers;
}
@end
