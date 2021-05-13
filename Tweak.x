#include "Tweak.h"

%hook SpringBoard 
-(void)applicationDidFinishLaunching:(id)application { 
%orig; 
BOOL enabled = NO;
    if (enabled) {
        UIAlertView *alert = [[UIAlertView alloc]
            initWithTitle:@"Welcome" 
            message:@"You resprung your device!" 
            delegate:self 
            cancelButtonTitle:@"Dismiss" 
            otherButtonTitles:nil];
        [alert show];
    }
}
%end

