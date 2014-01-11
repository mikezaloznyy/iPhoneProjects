//
//  DateCalcViewController.h
//  DateCalc
//
//  Created by Mykhaylo Zaloznyy on 4/20/11.
//  Copyright 2011 CSN. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DateCalcViewController : UIViewController {
	// declare the label that will display the difference between dates
	IBOutlet UILabel *differenceResult;
	
	// create an outlet for our date picker
	IBOutlet UIDatePicker *datePicker;
}

@property (nonatomic, retain) UILabel *differenceResult;

// declare the action that would be called when the user changes the value on the date picker
-(IBAction)showDate:(id)sender;

@end

