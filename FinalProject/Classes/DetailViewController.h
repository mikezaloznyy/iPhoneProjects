//
//  DetailViewController.h
//  FinalProject
//
//  Created by Mykhaylo Zaloznyy on 5/22/11.
//  Copyright 2011 CSN. All rights reserved.
//

#import <UIKit/UIKit.h>

@class GasManager;

@interface DetailViewController : UIViewController <UITableViewDataSource, UITableViewDelegate> {

	IBOutlet UITableView *tableView;
	GasManager *gasManagerObj;
}

@property (nonatomic, retain) GasManager *gasManagerObj;

@end
