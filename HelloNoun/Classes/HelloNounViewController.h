//
//  HelloNounViewController.h
//  HelloNoun
//
//  Created by Mykhaylo Zaloznyy on 3/9/11.
//  Copyright 2011 CSN. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HelloNounViewController : UIViewController {
	IBOutlet UILabel *userOutput;
	IBOutlet UITextField *userInput;
}

@property (retain, nonatomic) UITextField *userInput;
@property (retain, nonatomic) UILabel *userOutput;

-(IBAction)setOutput:(id)sender;

@end

