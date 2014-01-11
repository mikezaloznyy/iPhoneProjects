//
//  MultipleViewsAppDelegate.h
//  MultipleViews
//
//  Created by Mykhaylo Zaloznyy on 4/27/11.
//  Copyright 2011 CSN. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MultipleViewsViewController;

@interface MultipleViewsAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    MultipleViewsViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet MultipleViewsViewController *viewController;

@end

