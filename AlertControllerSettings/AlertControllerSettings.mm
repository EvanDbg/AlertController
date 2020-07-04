//#import <Preferences/PSViewController.h>
#import <Preferences/PSListController.h>
#import <Preferences/PSSpecifier.h>

@interface PSControlTableCell : PSTableCell
- (UIControl *)control;
@end

@interface PSSwitchTableCell : PSControlTableCell
@end

@interface PSListController (AlertController)
-(BOOL)containsSpecifier:(id)arg1;
@end

@interface AlertControllerSettings : PSListController
@property (nonatomic, retain) NSMutableDictionary *savedSpecifiers;
@end

@implementation AlertControllerSettings
- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [self loadSpecifiersFromPlistName:@"Root" target:self];
	}
	return _specifiers;
}

- (void) showExampleAlert {
	UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Title of Example Alert" message:@"This is message of example Alert feel free to ignore what is written here, more words to make it a litle bit longer. \n All glory Hypnotoad." preferredStyle:UIAlertControllerStyleAlert];
	[alert addAction:[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil]];
	[alert addAction:[UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:nil]];
	[self presentViewController:alert animated:YES completion:nil];
}
- (void) showExampleTextAlert {
	UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Title of Example Text Alert" message:@"This is example of Alert with ability to type text in it (like login alerts)." preferredStyle:UIAlertControllerStyleAlert];
	[alert addTextFieldWithConfigurationHandler:^(UITextField *textField) {
		textField.placeholder = @"Username";
	}];
	[alert addTextFieldWithConfigurationHandler:^(UITextField *textField) {
		textField.placeholder = @"Password";
		textField.secureTextEntry = YES;
	}];
	[alert addAction:[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil]];
	[alert addAction:[UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:nil]];
	[self presentViewController:alert animated:YES completion:nil];
}
- (void) showExampleActionSheet {
	UIAlertController *actionSheet = [UIAlertController alertControllerWithTitle:@"Title of Example Action Sheet" message:@"This is message of example Action Sheet feel free to ignore what is written here, more words to make it a litle bit longer." preferredStyle:UIAlertControllerStyleActionSheet];
	[actionSheet addAction:[UIAlertAction actionWithTitle:@"(•_•)" style:UIAlertActionStyleDefault handler:nil]];
	[actionSheet addAction:[UIAlertAction actionWithTitle:@"( •_•)>⌐■-■" style:UIAlertActionStyleDefault handler:nil]];
	[actionSheet addAction:[UIAlertAction actionWithTitle:@"(⌐■_■)" style:UIAlertActionStyleDefault handler:nil]];
	[actionSheet addAction:[UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:nil]];
	[self presentViewController:actionSheet animated:YES completion:nil];
}

-(void)TweakSourceCode {
	NSURL *tweakSourceCode = [NSURL URLWithString:@"https://github.com/tomaszpoliszuk/AlertController"];
	[[UIApplication sharedApplication] openURL:tweakSourceCode options:@{} completionHandler:nil];
}

-(void)TweakReportIssue {
	NSURL *tweakReportIssue = [NSURL URLWithString:@"https://github.com/tomaszpoliszuk/AlertController/issues/new"];
	[[UIApplication sharedApplication] openURL:tweakReportIssue options:@{} completionHandler:nil];
}

-(void)TomaszPoliszukOnGithub {
	NSURL *tomaszPoliszukOnGithub = [NSURL URLWithString:@"https://github.com/tomaszpoliszuk/"];
	[[UIApplication sharedApplication] openURL:tomaszPoliszukOnGithub options:@{} completionHandler:nil];
}

@end
