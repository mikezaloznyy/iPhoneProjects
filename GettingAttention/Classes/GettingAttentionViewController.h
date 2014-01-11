//
//  GettingAttentionViewController.h
//  GettingAttention
//
//  Created by Mykhaylo Zaloznyy on 4/11/11.
//  Copyright 2011 CSN. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>

@interface GettingAttentionViewController : UIViewController <UIAlertViewDelegate> {
	IBOutlet UILabel *userOutput;
}

@property (retain, nonatomic) IBOutlet UILabel *userOutput;

-(IBAction)doAlert:(id)sender;
-(IBAction)doMultiButtonAlert:(id)sender;
-(IBAction)doAlertInput:(id)sender;
-(IBAction)doActionSheet:(id)sender;
-(IBAction)doSound:(id)sender;
-(IBAction)doAlertSound:(id)sender;
-(IBAction)doVibration:(id)sender;

@end

