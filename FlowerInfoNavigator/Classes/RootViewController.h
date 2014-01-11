//
//  RootViewController.h
//  FlowerInfoNavigator
//
//  Created by Mykhaylo Zaloznyy on 5/22/11.
//  Copyright 2011 CSN. All rights reserved.
//

#import "FlowerDetailViewController.h"

@interface RootViewController : UITableViewController {
	NSMutableArray *flowerData;
	NSMutableArray *flowerSections;
}

-(void) createFlowerData;
@end
