//
//  AreaViewController.h
//  TabbedCalculation
//
//  Created by Mykhaylo Zaloznyy on 4/28/11.
//  Copyright 2011 CSN. All rights reserved.
//

#import <UIKit/UIKit.h>
@class SummaryViewController; // import SummaryViewController
@class VolumeViewController; // import VolumeViewController

@interface AreaViewController : UIViewController {
	
	// declare the outlets
	IBOutlet UITextField *rectWidth;
	IBOutlet UITextField *rectLength;
	IBOutlet UITextField *circleRadius;
	IBOutlet UILabel *rectResult;
	IBOutlet UILabel *circleResult;
	
	// access SummaryViewController's methods
	IBOutlet SummaryViewController *summaryViewController;
	
	// access AreaViewController's methods
	IBOutlet VolumeViewController *volumeViewController;
}

@property (retain, nonatomic) UITextField *rectWidth;
@property (retain, nonatomic) UITextField *rectLength;
@property (retain, nonatomic) UITextField *circleRadius;
@property (retain, nonatomic) UILabel *rectResult;
@property (retain, nonatomic) UILabel *circleResult;

-(IBAction)calculate:(id)sender;
-(IBAction)hideKeyboard:(id)sender;

@end
