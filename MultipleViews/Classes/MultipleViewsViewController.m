//
//  MultipleViewsViewController.m
//  MultipleViews
//
//  Created by Mykhaylo Zaloznyy on 4/27/11.
//  Copyright 2011 CSN. All rights reserved.
//

#import "MultipleViewsViewController.h"
// import other view controllers
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"

@implementation MultipleViewsViewController

// set setters and getters
@synthesize firstViewController;
@synthesize secondViewController;
@synthesize thirdViewController;

// method to load the first view
-(IBAction) loadFirstView:(id)sender {
	[self clearView];
	[self.view insertSubview:firstViewController.view atIndex:0];
}

-(IBAction) loadSecondView:(id)sender {
	[self clearView];
	[self.view insertSubview:secondViewController.view atIndex:0];
}

-(IBAction) loadThirdView:(id)sender {
	[self clearView];
	[self.view insertSubview:thirdViewController.view atIndex:0];
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
	[self loadFirstView:nil];
    [super viewDidLoad];
}

-(void) clearView {
	if(firstViewController.view.superview) {
		[firstViewController.view removeFromSuperview];
	}
	else if(secondViewController.view.superview){
		[secondViewController.view removeFromSuperview];
	}
	else {
		[thirdViewController.view removeFromSuperview];
	}
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
	[firstViewController release];
	[secondViewController release];
	[thirdViewController release];
    [super dealloc];
}

@end
