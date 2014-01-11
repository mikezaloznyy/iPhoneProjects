//
//  FieldButtonFunViewController.m
//  FieldButtonFun
//
//  Created by Mykhaylo Zaloznyy on 3/16/11.
//  Copyright 2011 CSN. All rights reserved.
//

#import "FieldButtonFunViewController.h"

@implementation FieldButtonFunViewController

@synthesize thePlace;
@synthesize theVerb;
@synthesize theNumber;
@synthesize thePlace2;
@synthesize theVerb2;
@synthesize theNumber2;
@synthesize theAdjective;
@synthesize theStory;
@synthesize theTemplate;
@synthesize generateStory;

-(IBAction) createStory:(id)sender {
	theStory.text = [theTemplate.text stringByReplacingOccurrencesOfString:@"<place>" withString:thePlace.text];
	theStory.text = [theStory.text stringByReplacingOccurrencesOfString:@"<place2>" withString:thePlace2.text];
	theStory.text = [theStory.text stringByReplacingOccurrencesOfString:@"<verb>" withString:theVerb.text];
	theStory.text = [theStory.text stringByReplacingOccurrencesOfString:@"<verb2>" withString:theVerb2.text];
	theStory.text = [theStory.text stringByReplacingOccurrencesOfString:@"<adjective>" withString:theAdjective.text];
	theStory.text = [theStory.text stringByReplacingOccurrencesOfString:@"<number>" withString:theNumber.text];
	theStory.text = [theStory.text stringByReplacingOccurrencesOfString:@"<number2>" withString:theNumber2.text];
}

-(IBAction) hideKeyboard:(id)sender {
	[thePlace resignFirstResponder];
	[thePlace2 resignFirstResponder];
	[theVerb resignFirstResponder];
	[theVerb2 resignFirstResponder];
	[theNumber resignFirstResponder];
	[theNumber2 resignFirstResponder];
	[theAdjective resignFirstResponder];
	[theTemplate resignFirstResponder];
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
	UIImage *normalImage = [[UIImage imageNamed:@"whiteButton@.png"]stretchableImageWithLeftCapWidth:12.0 topCapHeight:0.0];
	[generateStory setBackgroundImage:normalImage forState:UIControlStateNormal];
	
	UIImage *pressedImage = [[UIImage imageNamed:@"blueButton.png"]stretchableImageWithLeftCapWidth:12.0 topCapHeight:0.0];
	[generateStory setBackgroundImage:pressedImage forState:UIControlStateHighlighted];
	
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
	[thePlace release];
	[thePlace2 release];
	[theVerb release];
	[theVerb2 release];
	[theNumber release];
	[theNumber2 release];
	[theAdjective release];
	[theStory release];
	[theTemplate release];
	[generateStory release];
    [super dealloc];
}

@end
