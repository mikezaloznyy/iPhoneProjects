//
//  MiniBrowserViewController.h
//  MiniBrowser
//
//  Created by Mykhaylo Zaloznyy on 4/6/11.
//  Copyright 2011 CSN. All rights reserved.
//

#import <UIKit/UIKit.h>

// add the <UIWebViewDelegate> to the end of our interface declaration
@interface MiniBrowserViewController : UIViewController<UIWebViewDelegate> {
	IBOutlet UITextField *addressBar;	// outlet for users to enter the web address that want to go to
	IBOutlet UISegmentedControl *favoriteSites; // outlet that will hold user's favorite web sites
	IBOutlet UISwitch *showControls; // outlet that will allow users to hide the favorite sites bar
	
	IBOutlet UIWebView *webView; // outlet will hold the web page itself
	IBOutlet UIActivityIndicatorView *activityIndicator; // outlet holds the busy activity indicator 
	IBOutlet UILabel *favoritesLabel; // we will need to toggle this outlet, so we need to declare it
}

// create getters and setters
@property(nonatomic, retain) UITextField *addressBar;
@property(nonatomic, retain) UISegmentedControl *favoriteSites;
@property(nonatomic, retain) UISwitch *showControls;
@property(nonatomic, retain) UIWebView *webView;
@property(nonatomic, retain) UIActivityIndicatorView *activityIndicator;
@property(nonatomic, retain) UILabel *favoritesLabel;

-(IBAction)loadWebPage:(id)sender; // this action will load the web page into the web view
-(IBAction)goBack:(id)sender; // this action will load previous web page from history
-(IBAction)goForward:(id)sender; // this action will load next web page from history
-(IBAction)toggleControls:(id)sender; // this action will toggle the favorite sites bar
-(IBAction)setFavoritePage:(id)sender; // this action will set the favorites page

@end

