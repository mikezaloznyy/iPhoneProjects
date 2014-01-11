//
//  FlowerColorTableAppDelegate.h
//  FlowerColorTable
//
//  Created by Mykhaylo Zaloznyy on 5/22/11.
//  Copyright 2011 CSN. All rights reserved.
//

#import <UIKit/UIKit.h>
@class FlowerColorTableViewController; // add FlowerColorTableViewController class

@interface FlowerColorTableAppDelegate : NSObject <UIApplicationDelegate> {
	IBOutlet FlowerColorTableViewController *flowerColorTableViewController;
	UIWindow *window;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@end

