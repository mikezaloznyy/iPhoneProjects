//
//  ImageHopViewController.m
//  ImageHop
//
//  Created by Mykhaylo Zaloznyy on 3/25/11.
//  Copyright 2011 CSN. All rights reserved.
//

#import "ImageHopViewController.h"

@implementation ImageHopViewController

@synthesize toggleButton;
@synthesize imageView;
@synthesize animationSpeed;
@synthesize hopsPerSecond;

-(IBAction) toggleAnimation:(id)sender {
	// if the image is animating, stop the animation and reset the button's title to "Hop!"
	if (imageView.isAnimating) {
		[imageView stopAnimating];
		
		// reset the slider to the default value
		animationSpeed.value = 2.0;
		hopsPerSecond.text = @"0.50 hps";
		
		[toggleButton setTitle:@"Hop!" forState:UIControlStateNormal];
	}
	// if the image is NOT animating, start the animation and reset the button's title to "Sit Still!"
	else {
		// initialize animation duration speed
		imageView.animationDuration = 4 - animationSpeed.value;

		[imageView startAnimating];
		[toggleButton setTitle:@"Sit Still!" forState:UIControlStateNormal];
	}

}

-(IBAction) setSpeed:(id)sender {
	// this string will hold hops per second indicator
	NSString *hopRateString;
	
	// change animation's speed
	imageView.animationDuration = 4 - animationSpeed.value;
	[imageView startAnimating]; // make sure the image animates
	[toggleButton setTitle:@"Sit Still!" forState:UIControlStateNormal]; // reset the button's title to "Sit Still!"
	
	hopRateString = [[NSString alloc] initWithFormat:@"%1.2f hps", 1/(4-animationSpeed.value)]; // compute hopRate
	hopsPerSecond.text = hopRateString; // display hopRate in a label output
	[hopRateString release];
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
	NSArray *hopAnimation;
	
	// initialize the animation array with our 20 images
	hopAnimation = [[NSArray alloc] initWithObjects:
					[UIImage imageNamed:@"frame-1.png"],
					[UIImage imageNamed:@"frame-2.png"],
					[UIImage imageNamed:@"frame-3.png"],
					[UIImage imageNamed:@"frame-4.png"],
					[UIImage imageNamed:@"frame-5.png"],
					[UIImage imageNamed:@"frame-6.png"],
					[UIImage imageNamed:@"frame-7.png"],
					[UIImage imageNamed:@"frame-8.png"],
					[UIImage imageNamed:@"frame-9.png"],
					[UIImage imageNamed:@"frame-10.png"],
					[UIImage imageNamed:@"frame-11.png"],
					[UIImage imageNamed:@"frame-12.png"],
					[UIImage imageNamed:@"frame-13.png"],
					[UIImage imageNamed:@"frame-14.png"],
					[UIImage imageNamed:@"frame-15.png"],
					[UIImage imageNamed:@"frame-16.png"],
					[UIImage imageNamed:@"frame-17.png"],
					[UIImage imageNamed:@"frame-18.png"],
					[UIImage imageNamed:@"frame-19.png"],
					[UIImage imageNamed:@"frame-20.png"],
					nil
					];
	
	// assign our animation array to animationImages property of our imageView
	imageView.animationImages = hopAnimation;
	
	imageView.animationDuration = 1; // animation will run 1 second 

	[hopAnimation release];
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
	[toggleButton release];
	[imageView release];
	[hopsPerSecond release];
	[animationSpeed release];
    [super dealloc];
}

@end
