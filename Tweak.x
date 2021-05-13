#import <UIKit/UIKit.h>

%hook SpringBoard 

-(void)applicationDidFinishLaunching:(id)application { 
%orig; 
UIAlertView *alert = [[UIAlertView alloc]
    initWithTitle:@"Welcome" 
    message:@"You resprung your device!" 
    delegate:self 
    cancelButtonTitle:@"Dismiss" 
    otherButtonTitles:nil];
 [alert show];
}

%end
