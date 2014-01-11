//
//  AreaViewController.m
//  TabbedCalculation
//
//  Created by Mykhaylo Zaloznyy on 4/28/11.
//  Copyright 2011 CSN. All rights reserved.
//

#import "VolumeViewController.h"
#import "SummaryViewController.h"
#import "AreaViewController.h"

#define Pi 3.1415926 // define Pi constant for calculation of the circle's area
@implementation AreaViewController

// define getters and setters
@synthesize rectWidth;
@synthesize rectLength;
@synthesize rectResult;
@synthesize circleRadius;
@synthesize circleResult;

- (void)viewWillAppear:(BOOL)animated {
	// sync rectangle width, length and radius between areaView and volumeView and clear the results labels
	if(rectWidth.text != volumeViewController.boxWidth.text) {
        rectWidth.text = volumeViewController.boxWidth.text;
        
        rectResult.text = @"";
        circleResult.text = @"";
    }
	
    if(rectLength.text != volumeViewController.boxLength.text) {
        rectLength.text = volumeViewController.boxLength.text;
    
        rectResult.text = @"";
        circleResult.text = @"";
    }
	
    if(circleRadius.text != volumeViewController.sphereRadius.text) {
		circleRadius.text = volumeViewController.sphereRadius.text;
    
        rectResult.text = @"";
        circleResult.text = @"";
    }
	
    [super viewWillAppear:animated];
}

-(IBAction)calculate:(id)sender {
	
	float floatRectResult = [rectWidth.text floatValue] * [rectLength.text floatValue]; // compute the area of the rectangle
	float floatCircleResult = [circleRadius.text floatValue] * [circleRadius.text floatValue] * Pi; // compute the area of the circle
	
	NSString *stringRectResult = [[NSString alloc] initWithFormat:@"%1.2f", floatRectResult]; // hold the result of the rectangle area calculation
	NSString *stringCircleResult = [[NSString alloc] initWithFormat:@"%1.2f", floatCircleResult]; // hold the result of the circle area calculation

	rectResult.text = stringRectResult; // assign result to the text fields
	circleResult.text = stringCircleResult;
	
	// release previously allocated objects
	[stringRectResult release];
	[stringCircleResult release];
	
	// update the total in summaryViewController
	[summaryViewController updateTotal];
}

-(IBAction)hideKeyboard:(id)sender {
	// this function will make sure the keyboard is hidden once the user stopped typing in the input
	[rectWidth resignFirstResponder];
	[rectLength resignFirstResponder];
	[circleRadius resignFirstResponder];
}

// The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
/*
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization.
    }
    return self;
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
    // Return YES for supported orientations.
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
	// release previously allocated objects
	[rectWidth release];
	[rectLength release];
	[circleRadius release];
	[rectResult release];
	[circleResult release];
    [super dealloc];
}


@end
