//
//  VolumeViewController.h
//  TabbedCalculation
//
//  Created by Mykhaylo Zaloznyy on 4/28/11.
//  Copyright 2011 CSN. All rights reserved.
//

#import <UIKit/UIKit.h>
@class SummaryViewController; // import SummaryViewController
@class AreaViewController; // import AreaViewController

@interface VolumeViewController : UIViewController {
	// define necessary inputs
	IBOutlet UITextField *boxWidth;
	IBOutlet UITextField *boxHeight;
	IBOutlet UITextField *boxLength;
	IBOutlet UITextField *sphereRadius;
	IBOutlet UILabel *boxResult;
	IBOutlet UILabel *sphereResult;
	
	// access SummaryViewController's methods
	IBOutlet SummaryViewController *summaryViewController;

	// access AreaViewController's methods
	IBOutlet AreaViewController *areaViewController;
}

@property (retain, nonatomic) UITextField *boxWidth;
@property (retain, nonatomic) UITextField *boxHeight;
@property (retain, nonatomic) UITextField *boxLength;
@property (retain, nonatomic) UITextField *sphereRadius;
@property (retain, nonatomic) UILabel *boxResult;
@property (retain, nonatomic) UILabel *sphereResult;

-(IBAction)calculate:(id)sender;
-(IBAction)hideKeyboard:(id)sender;
@end
