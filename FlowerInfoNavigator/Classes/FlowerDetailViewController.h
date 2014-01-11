//
//  FlowerDetailViewController.h
//  FlowerInfoNavigator
//
//  Created by Mykhaylo Zaloznyy on 5/22/11.
//  Copyright 2011 CSN. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface FlowerDetailViewController : UIViewController {
	IBOutlet UIWebView *detailWebView;
	NSURL	*detailURL;
}

@property (nonatomic, retain) NSURL *detailURL;
@property (nonatomic, retain) UIWebView *detailWebView;

@end
