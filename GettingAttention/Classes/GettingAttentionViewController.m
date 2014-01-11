//
//  GettingAttentionViewController.m
//  GettingAttention
//
//  Created by Mykhaylo Zaloznyy on 4/11/11.
//  Copyright 2011 CSN. All rights reserved.
//

#import "GettingAttentionViewController.h"

@implementation GettingAttentionViewController

@synthesize userOutput;

-(IBAction)doAlert:(id)sender {
	UIAlertView *alertDialog;
	
	alertDialog = [[UIAlertView alloc]
				  initWithTitle:@"Alert Button Selected" 
				  message:@"I need your attention NOW!"
				  delegate: nil
				  cancelButtonTitle: @"OK" 
				  otherButtonTitles: nil];
				   
	[alertDialog show];
	[alertDialog release];
}

-(IBAction)doMultiButtonAlert:(id)sender {
	UIAlertView *alertDialog;
	
	alertDialog = [[UIAlertView alloc]
				   initWithTitle:@"Alert Button Selected" 
				   message:@"I need your attention NOW!"
				   delegate: self
				   cancelButtonTitle: @"OK" 
				   otherButtonTitles: @"Maybe Later", @"Never", nil];
	
	[alertDialog show];
	[alertDialog release];
}

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
	NSString *buttonTitle = [alertView buttonTitleAtIndex: buttonIndex];
	
	if([buttonTitle isEqualToString:@"Maybe Later"]) {
		userOutput.text = @"Clicked 'Maybe Later'";
	}	
	else if ([buttonTitle isEqualToString:@"Never"]){
		userOutput.text = @"Clicked 'Never'";
	}
	else {
		userOutput.text = @"Clicked 'Ok'";
	}

}

-(IBAction)doAlertInput:(id)sender {
	
}

-(IBAction)doActionSheet:(id)sender {
	
}

-(IBAction)doSound:(id)sender {
	SystemSoundID soundID;
	
	NSString *soundFile = [[NSBundle mainBundle] pathForResource:@"soundeffect" ofType:@"wav"];
	
	AudioServicesCreateSystemSoundID((CFURLRef) [NSURL fileURLWithPath:soundFile], &soundID);
	AudioServicesPlaySystemSound(soundID);
}

-(IBAction)doAlertSound:(id)sender {
	SystemSoundID soundID;
	
	NSString *soundFile = [[NSBundle mainBundle] pathForResource:@"alertsound" ofType:@"wav"];
	
	AudioServicesCreateSystemSoundID((CFURLRef) [NSURL fileURLWithPath:soundFile], &soundID);
	AudioServicesPlayAlertSound(soundID);
	
}

-(IBAction)doVibration:(id)sender {
	AudioServicesPlaySystemSound(kSystemSoundID_Vibrate);
}


/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
	[userOutput release];
    [super dealloc];
}

@end
