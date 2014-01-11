//
//  DateCalcViewController.m
//  DateCalc
//
//  Created by Mykhaylo Zaloznyy on 4/20/11.
//  Copyright 2011 CSN. All rights reserved.
//

#import "DateCalcViewController.h"

@implementation DateCalcViewController

// declare the label that will display the difference between dates
@synthesize differenceResult;

// action that would be called when the user changes the value on the date picker
-(IBAction)showDate:(id)sender {
	// current date
	NSDate *todaysDate;
	
	// difference between two dates in custom date format
	NSString *differenceOutput;
	
	// today's date string in custom date format
	NSString *todaysDateString;
	
	// formatter to hold custom date format
	NSDateFormatter *dateFormat;
	
	// difference between two dates in seconds
	NSTimeInterval difference;
	
	// get today's date
	todaysDate = [[NSDate alloc] init];
	
	// compute the difference between today's date and what user entered in the date picker, in days
	difference = [todaysDate timeIntervalSinceDate:[sender date]] / 86400; // there is 86400 seconds in one day
	
	// create custom date format
	dateFormat = [[NSDateFormatter alloc] init];
	
	// set custom's date format
	[dateFormat setDateFormat:@"MMMM d, yyyy hh:mm:ssa"];
	
	// transform today's date string into the custom format
	todaysDateString = [dateFormat stringFromDate:todaysDate];

	// difference between two dates in the custom format
	differenceOutput = [[NSString alloc] initWithFormat:
						@"Difference between chosen date and today (%@) in days: %1.2f",
						todaysDateString, fabs(difference)];
	
	// set the text of the label
	differenceResult.text = differenceOutput;
	
	// release today's date object
	[todaysDate release];
	
	// release date's format object
	[dateFormat release];
	
	// release differenceOutput variable
	[differenceOutput release];
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


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	// create NSDate with current date
	NSDate *now = [[NSDate alloc] init];

    // initialize our date picker with current date
	[datePicker setDate: now animated: YES];
    
	// release current date object
	[now release];
	
    [super viewDidLoad];
}


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
	// release previously allocated variables
	[differenceResult release];
    [super dealloc];
}

@end
