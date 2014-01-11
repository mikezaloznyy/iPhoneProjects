//
//  SummaryViewController.h
//  TabbedCalculation
//
//  Created by Mykhaylo Zaloznyy on 4/28/11.
//  Copyright 2011 CSN. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface SummaryViewController : UIViewController {
	// create label to hold the output
	IBOutlet UILabel *totalCalculations;

	int calcCount;
}

@property (retain, nonatomic) UILabel *totalCalculations;

-(void) updateTotal;
@end
