//
//  VolumeViewController.m
//  TabbedCalculation
//
//  Created by Mykhaylo Zaloznyy on 4/28/11.
//  Copyright 2011 CSN. All rights reserved.
//

#define Pi 3.1415926

#import "VolumeViewController.h"
#import "SummaryViewController.h"
#import "AreaViewController.h"

@implementation VolumeViewController

@synthesize boxWidth;
@synthesize boxHeight;
@synthesize boxLength;
@synthesize sphereRadius;
@synthesize boxResult;
@synthesize sphereResult;

- (void)viewWillAppear:(BOOL)animated {
	// sync rectangle width, length and radius between areaView and volumeView and clear the results labels
	if(boxWidth.text != areaViewController.rectWidth.text) {
        boxWidth.text = areaViewController.rectWidth.text;
        
		boxResult.text = @"";
        sphereResult.text = @"";
    }
	
    if(boxLength.text != areaViewController.rectLength.text) {
        boxLength.text = areaViewController.rectLength.text;
        
		boxResult.text = @"";
        sphereResult.text = @"";
    }
	
    if(sphereRadius.text != areaViewController.circleRadius.text) {
        sphereRadius.text = areaViewController.circleRadius.text;
    
        boxResult.text = @"";
        sphereResult.text = @"";
    }
	
    [super viewWillAppear:animated];
}

-(IBAction)calculate:(id)sender {
	// compute the volume of the box
	float floatBoxResult = [boxWidth.text floatValue] * [boxLength.text floatValue] * [boxHeight.text floatValue];
	
	// compute the volume of the sphere
	float floatSphereResult = (4.00/3) * Pi * [sphereRadius.text floatValue] * [sphereRadius.text floatValue] * [sphereRadius.text floatValue];
	
	NSString *stringBoxResult = [[NSString alloc] initWithFormat:@"%1.2f", floatBoxResult];
	NSString *stringSphereResult = [[NSString alloc] initWithFormat:@"%1.2f", floatSphereResult];
	
	// save the results into corresponding fields
	boxResult.text = stringBoxResult;
	sphereResult.text = stringSphereResult;
	[stringBoxResult release];
	[stringSphereResult release];
	
	[summaryViewController updateTotal];																							
}

-(IBAction)hideKeyboard:(id)sender {
	[boxWidth resignFirstResponder];
	[boxLength resignFirstResponder];
	[boxHeight resignFirstResponder];
	[sphereRadius resignFirstResponder];
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
	[boxWidth release];
	[boxHeight release];
	[boxLength release];
	[sphereRadius release];
	[boxResult release];
	[sphereResult release];
    [super dealloc];
}


@end
