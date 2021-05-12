#import <UIKit/UIKit.h>

%hook SpringBoard 

-(void)applicationDidFinishLaunching:(id)application { 
%orig; 
UIAlertView *alert = [[UIAlertView alloc]
    initWithTitle:@"Welcome" 
    message:@"" 
    delegate:self 
    cancelButtonTitle:@"Dismiss" 
    otherButtonTitles:nil];
 [alert show];
}

%end
