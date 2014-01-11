//
//  FlowerWebViewController.h
//  FlowerWeb
//
//  Created by Mike Zaloznyy on 4/13/11 based on FlowerWeb book example in chapter9.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h> // add the AudioToolbox header file in order to be able to play the *.wav sounds

@interface FlowerWebViewController : UIViewController <UIAlertViewDelegate>{
	IBOutlet UISegmentedControl *colorChoice;
	IBOutlet UIWebView *flowerView;
	IBOutlet UIWebView *flowerDetailView;
}

-(IBAction)getFlower:(id)sender;
-(IBAction)toggleFlowerDetail:(id)sender;

@property (nonatomic, retain) UISegmentedControl *colorChoice;
@property (nonatomic, retain) UIWebView *flowerView;
@property (nonatomic, retain) UIWebView *flowerDetailView;

@end
