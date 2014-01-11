//
//  HelloSimulatorViewController.m
//  HelloSimulator
//
//  Created by John Ray on 5/28/10.
//  Modified by Mike Zaloznyy on 2/27/2011
//  Copyright Poisontooth Enterprises 2010. All rights reserved.
//

#import "HelloSimulatorViewController.h"

@implementation HelloSimulatorViewController


@synthesize webView;

- (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event {	
	UIAlertView *alertDialog;
	
	alertDialog = [[UIAlertView alloc] 
				   initWithTitle: @"Stop shaking me!!!" 
				   message:@"I'm about to get seasick!" 
				   delegate: nil 
				   cancelButtonTitle: @"Ok"
				   otherButtonTitles: nil];
	[alertDialog show];
	[alertDialog release];
}

/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
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



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	[webView loadHTMLString:@"<html><body style='width:100%;text-align: center; font-family: Helvetica; font-size:72px; margin-right:0px; margin-left:0px; margin-top:25px;'>Hello<br/> iPhone Simulator<br/><br/><img style='width:100%' src='http://www.floraphotographs.com/showrandom.php'></body></html>" baseURL:nil];
	[self.view becomeFirstResponder];
    [super viewDidLoad];
}


- (void) viewDidAppear:(BOOL)animated
{
    [self becomeFirstResponder];
    [super viewDidAppear:animated];
}


// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return YES;
}

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
	
	UIAlertView *alertDialog;
	alertDialog = [[UIAlertView alloc] 
				   initWithTitle: @"Where did my memory go ?" 
				   message:@"I'm losing my mind!" 
				   delegate: nil 
				   cancelButtonTitle: @"Ok"
				   otherButtonTitles: nil];
	[alertDialog show];
	[alertDialog release];
	
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (BOOL)canBecomeFirstResponder { 
	return YES; 
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [webView release];
    [super dealloc];
}

@end
