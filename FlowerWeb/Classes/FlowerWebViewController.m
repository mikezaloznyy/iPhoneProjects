//
//  FlowerWebViewController.m
//  FlowerWeb
//
//  Created by Mike Zaloznyy on 4/13/11 based on FlowerWeb book example in chapter9.
//

#import "FlowerWebViewController.h"

@implementation FlowerWebViewController

@synthesize colorChoice;
@synthesize flowerDetailView;
@synthesize flowerView;

-(IBAction)toggleFlowerDetail:(id)sender{
	// declare a sound id
	SystemSoundID soundID;
	
	// declare a variable that will hold our sound file
	NSString *soundFile;
	
	//flowerDetailView.hidden=![sender isOn];
	if ([sender isOn]) {
		// create the sound file
		soundFile = [[NSBundle mainBundle] pathForResource:@"show_details_on" ofType:@"wav"];
		flowerDetailView.hidden = NO;
    } 
	else {
		// create the sound file
		soundFile = [[NSBundle mainBundle] pathForResource:@"photo_details_off" ofType:@"wav"];
		flowerDetailView.hidden = YES;
     }

	// create system sound id
	AudioServicesCreateSystemSoundID((CFURLRef) [NSURL fileURLWithPath:soundFile], &soundID);
	
	// play the actual sound
	AudioServicesPlaySystemSound(soundID);
	
	// release variables we created to avoid memory leaks
	[soundFile release];
}

-(IBAction)getFlower:(id)sender {
	NSURL *imageURL;
	NSURL *detailURL;
	NSString *imageURLString;
	NSString *detailURLString;
	NSString *color;
	int sessionID;
	
	// declare a sound id
	SystemSoundID soundID;
	
	// declare a variable that will hold our sound file
	NSString *soundFile;
	
	// play the sound based on the user's flower selection
	switch(colorChoice.selectedSegmentIndex){
		case 0:
			// 0 is red flower
			// create the sound file
			soundFile = [[NSBundle mainBundle] pathForResource:@"red" ofType:@"wav"];
			break;
		case 1:
			// 1 is blue flower
			// create the sound file
			soundFile = [[NSBundle mainBundle] pathForResource:@"blue" ofType:@"wav"];
			break;
		case 2:
			// 2 is yellow flower
			// create the sound file
			soundFile = [[NSBundle mainBundle] pathForResource:@"yellow" ofType:@"wav"];
			break;
		case 3:
			// 3 is green flower
			// create the sound file
			soundFile = [[NSBundle mainBundle] pathForResource:@"green" ofType:@"wav"];
			break;
		// there is no sound by default
		default:
			break;
	}

	// create system sound id
	AudioServicesCreateSystemSoundID((CFURLRef) [NSURL fileURLWithPath:soundFile], &soundID);
	
	// play the actual sound
	AudioServicesPlaySystemSound(soundID);

	// release variables we created to avoid memory leaks
	[soundFile release];
	
	// the code that follows below is taken from the book
	color=[colorChoice titleForSegmentAtIndex:
		   colorChoice.selectedSegmentIndex];
	sessionID=random()%10000;
	
	imageURLString=[[NSString alloc] initWithFormat:
					@"http://www.floraphotographs.com/showrandomiphone.php?color=%@&session=%d"
					,color,sessionID];
	detailURLString=[[NSString alloc] initWithFormat:
					 @"http://www.floraphotographs.com/detailiphone.php?session=%d"
					 ,sessionID];
    
	imageURL=[[NSURL alloc] initWithString:imageURLString];
	detailURL=[[NSURL alloc] initWithString:detailURLString];
    
	[flowerView loadRequest:[NSURLRequest requestWithURL:imageURL]];
	[flowerDetailView loadRequest:[NSURLRequest requestWithURL:detailURL]];
	
	flowerDetailView.backgroundColor=[UIColor clearColor];
	
	[imageURLString release];
	[detailURLString release];
	[imageURL release];
	[detailURL release];
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
	flowerDetailView.hidden=YES;
	[self getFlower:nil];
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
	[colorChoice release];
	[flowerDetailView release];
	[flowerView release];
    [super dealloc];
}

@end
