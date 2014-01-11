//
//  DisconnectedViewController.h
//  Disconnected
//
//  Created by John Ray on 5/28/10.
//  Copyright Poisontooth Enterprises 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DisconnectedViewController : UIViewController {
	IBOutlet UISegmentedControl *colorChoice;
	IBOutlet UIWebView *flowerView;
	IBOutlet UILabel *chosenColor;
}

-(IBAction)getFlower:(id)sender;

@property (nonatomic, retain) UISegmentedControl *colorChoice;
@property (nonatomic, retain) UIWebView *flowerView;
@property (nonatomic, retain) UILabel *chosenColor;

@end

