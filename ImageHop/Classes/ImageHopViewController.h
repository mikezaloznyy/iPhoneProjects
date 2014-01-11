//
//  ImageHopViewController.h
//  ImageHop
//
//  Created by Mykhaylo Zaloznyy on 3/25/11.
//  Copyright 2011 CSN. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ImageHopViewController : UIViewController {
	IBOutlet UIImageView *imageView;
	IBOutlet UIButton *toggleButton;
	IBOutlet UISlider *animationSpeed;
	IBOutlet UILabel *hopsPerSecond;
}

@property (retain, nonatomic) UIImageView *imageView;
@property (retain, nonatomic) UIButton *toggleButton;
@property (retain, nonatomic) UISlider *animationSpeed;
@property (retain, nonatomic) UILabel *hopsPerSecond;

-(IBAction)toggleAnimation:(id)sender;
-(IBAction)setSpeed:(id)sender;

@end

