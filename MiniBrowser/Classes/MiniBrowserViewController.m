//
//  MiniBrowserViewController.m
//  MiniBrowser
//
//  Created by Mykhaylo Zaloznyy on 4/6/11.
//  Copyright 2011 CSN. All rights reserved.
//

#import "MiniBrowserViewController.h"

@implementation MiniBrowserViewController

// implement getters and setters
@synthesize addressBar;
@synthesize favoriteSites;
@synthesize showControls;
@synthesize webView;
@synthesize activityIndicator;
@synthesize favoritesLabel;

// this action will get the url from address bar and will load the page into the browser
// Note: loadWebPage() is hooked up to "Did End On Exit" method of the text field
-(IBAction)loadWebPage:(id)sender{
	// declare our variables
	NSString *urlAddress;
	NSURL *url;
	
	// load address from address bar (what the user typed)
	urlAddress = [[NSString alloc] initWithString:[addressBar text]];
	url = [[NSURL alloc] initWithString:urlAddress];
		
	// load url into the web view
	[webView loadRequest:[NSURLRequest requestWithURL:url]];
	
	// clear the background color
	webView.backgroundColor = [UIColor clearColor];
	
	// get rid of the keyboard once the user finished typing
	[addressBar resignFirstResponder];	
	
	// release our variables
	[urlAddress release];
	[url release];
}

// This action will be hooked up to the 'back' button. It is the browser's back button
-(IBAction)goBack:(id)sender{
	[webView goBack];
}

// This action will be hooked up to the 'forward' button. It is the browser's forward button
-(IBAction)goForward:(id)sender{
	[webView goForward];
}

// this method will show or hide (toggle) favorites bar depending on what user selected in the switch
-(IBAction)toggleControls:(id)sender{
	// toggle favorite bar based on a switch
	favoriteSites.hidden = ![sender isOn];
	favoritesLabel.hidden = ![sender isOn];	
}

// this method will set the favorites page
-(IBAction)setFavoritePage:(id)sender{
	// declare variable for to hold our url selection
	int urlSelection;
	
	// declare our variables
	NSString *urlAddress;
	NSURL *url;
	
	urlSelection = favoriteSites.selectedSegmentIndex;
	
	switch (urlSelection) {
		case 0:
			urlAddress = [[NSString alloc] initWithString:@"http://google.com"];			
			break;
		case 1:
			urlAddress = [[NSString alloc] initWithString:@"http://wikipedia.org"];	
			break;
		case 2:
			urlAddress = [[NSString alloc] initWithString:@"http://nba.com"];	
			break;
		default:
			// should never be called
			urlAddress = [[NSString alloc] initWithString:@"http://google.com"];	
			break;
	}

	// load the url
	url = [[NSURL alloc] initWithString:urlAddress];
	
	// load the address into address bar
	[addressBar setText:urlAddress];
	
	// load url into the web view
	[webView loadRequest:[NSURLRequest requestWithURL:url]];
	
	// clear the background color
	webView.backgroundColor = [UIColor clearColor];
	
	// release our variables
	[urlAddress release];
	[url release];
}

// This method will show activity indicator to the user to show that the page is loading
-(void)webViewDidStartLoad:(UIWebView *)webView{
	[activityIndicator startAnimating];
}

// This method will stop activity indicator
-(void)webViewDidFinishLoad:(UIWebView *)webView {
	[activityIndicator stopAnimating];
}

// This method allows us to reset the address bar address when the user clicks a link
-(BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType {
	// declare our variables
	NSURL *url;
	
	if( navigationType == UIWebViewNavigationTypeLinkClicked){
		// get request's url
		url = [request URL];
		
		// check if url is a valid http address
		if([[url scheme] isEqualToString:@"http"]){
			 [addressBar setText:[url absoluteString]];
			 [self loadWebPage:nil];
		}
		return NO;
	}
	return YES;
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
    [super viewDidLoad];
	
	// instantiate the delegate - very important: without this line, nothing will work
	[[self webView] setDelegate: self];
	
	// declare our variables
	NSString *defaultUrlAddress;
	NSURL *defaultUrl;
	
	// we will set our homepage to google.com. It will be loaded upon first load of the page
	defaultUrlAddress = [[NSString alloc] initWithString:@"http://google.com"];
	defaultUrl = [[NSURL alloc] initWithString:defaultUrlAddress];
	
	// load the address into address bar
	[addressBar setText:defaultUrlAddress];
	
	// load url into the web view
	[webView loadRequest:[NSURLRequest requestWithURL:defaultUrl]];
	
	// clear the background color
	webView.backgroundColor = [UIColor clearColor];
	
	// release our variables
	[defaultUrlAddress release];
	[defaultUrl release];
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
	// release previously allocated objects
	[addressBar release];
	[favoriteSites release];
	[showControls release];
	[webView release];
	[activityIndicator release];
	[favoritesLabel release];
	
    [super dealloc];
}

@end
