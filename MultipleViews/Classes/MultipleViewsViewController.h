//
//  MultipleViewsViewController.h
//  MultipleViews
//
//  Created by Mykhaylo Zaloznyy on 4/27/11.
//  Copyright 2011 CSN. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FirstViewController;
@class SecondViewController;
@class ThirdViewController;

@interface MultipleViewsViewController : UIViewController {
	IBOutlet FirstViewController *firstViewController;
	IBOutlet SecondViewController *secondViewController;
	IBOutlet ThirdViewController *thirdViewController;
}

@property (retain, nonatomic) FirstViewController *firstViewController;
@property (retain, nonatomic) SecondViewController *secondViewController;
@property (retain, nonatomic) ThirdViewController *thirdViewController;

-(IBAction) loadSecondView:(id)sender;
-(IBAction) loadThirdView:(id)sender;
-(IBAction) loadFirstView:(id)sender;

-(void) clearView;

@end

