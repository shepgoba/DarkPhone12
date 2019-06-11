#include "DarkPhone12Prefs.h"
#import <spawn.h>

@implementation DarkPhone12Prefs
- (void) viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    UIBarButtonItem *applySettingsBtn = [[UIBarButtonItem alloc] initWithTitle:@"Apply" style:UIBarButtonItemStylePlain target:self action:@selector(respringDevice)];
    self.navigationItem.rightBarButtonItem = applySettingsBtn;
}
- (NSArray *) specifiers {
	if (!_specifiers) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"Root" target:self] retain];
	}

	return _specifiers;
}

- (void) respringDevice 
{
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Apply settings?" message:@"This will respring your device" preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *ok = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) 
    {
        pid_t pid;
        const char* args[] = {"killall", "-9", "backboardd", NULL};
        posix_spawn(&pid, "/usr/bin/killall", NULL, NULL, (char* const*)args, NULL);
    }];

    UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:nil];
    [alert addAction:ok];
    [alert addAction:cancel];
    [self presentViewController:alert animated:YES completion:nil];
}

- (void) openTwitter
{
	[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://twitter.com/shepgoba"]];
}

- (void) openPayPal
{
	[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://paypal.me/shepgobadev"]];
}


@end
