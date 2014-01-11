//
//  RootViewController.h
//  FinalProject
//
//  Created by Mykhaylo Zaloznyy on 5/22/11.
//  Copyright 2011 CSN. All rights reserved.
//

#import <UIKit/UIKit.h>
@class GasManager, DetailViewController;

@interface RootViewController : UITableViewController {
	FinalProjectAppDelegate *appDelegate;
	DetailViewController *dvController;
}

@end
