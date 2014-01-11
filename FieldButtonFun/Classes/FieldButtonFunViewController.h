//
//  FieldButtonFunViewController.h
//  FieldButtonFun
//
//  Created by Mykhaylo Zaloznyy on 3/16/11.
//  Copyright 2011 CSN. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FieldButtonFunViewController : UIViewController {
	IBOutlet UITextField *thePlace;
	IBOutlet UITextField *theVerb;
	IBOutlet UITextField *theNumber;
	IBOutlet UITextField *thePlace2;
	IBOutlet UITextField *theVerb2;
	IBOutlet UITextField *theNumber2;
	IBOutlet UITextField *theAdjective;
	IBOutlet UITextView *theStory;
	IBOutlet UITextView *theTemplate;
	IBOutlet UIButton *generateStory;
}

@property (retain, nonatomic) UITextField *thePlace;
@property (retain, nonatomic) UITextField *theVerb;
@property (retain, nonatomic) UITextField *theNumber;
@property (retain, nonatomic) UITextField *thePlace2;
@property (retain, nonatomic) UITextField *theVerb2;
@property (retain, nonatomic) UITextField *theNumber2;
@property (retain, nonatomic) UITextField *theAdjective;
@property (retain, nonatomic) UITextView *theStory;
@property (retain, nonatomic) UITextView *theTemplate;
@property (retain, nonatomic) UIButton *generateStory;

-(IBAction)createStory:(id)sender;
-(IBAction)hideKeyboard:(id)sender;

@end

