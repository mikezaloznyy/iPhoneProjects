//
//  DisconnectedViewController.m
//  Disconnected
//
//  Created by John Ray on 5/28/10.
//  Copyright Poisontooth Enterprises 2010. All rights reserved.
//

#import "DisconnectedViewController.h"

@implementation DisconnectedViewController

@synthesize colorChoice;
@synthesize chosenColor;
@synthesize flowerView;

-(IBAction)getFlower:(id)sender {
	NSString *outputHTML;
	NSString *color;
	NSString *colorVal;
	int colorNum;
	colorNum=colorChoice.selectedSegmentIndex;
	switch (colorNum) {
		case 0:
			color=@"Red";
			colorVal=@"red";
			break;
		case 1:
			color=@"Blue";
			colorVal=@"blue";
			break;
		case 2:
			color=@"Yellow";
			colorVal=@"yellow";
			break;
		case 3:
			color=@"Green";
			colorVal=@"green";
			break;
	}
	chosenColor.text=[[NSString alloc] initWithFormat:@"%@",color];
	outputHTML=[[NSString alloc] initWithFormat:@"<body style='margin: 0px; padding: 0px'><img src='http://www.floraphotographs.com/showrandom.php?color=%@'></body>",colorVal];
	[flowerView loadHTMLString:outputHTML baseURL:nil];
	[color release];
	[colorVal release];
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
    chosenColor.text=@"None";
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
    [super dealloc];
}

@end
