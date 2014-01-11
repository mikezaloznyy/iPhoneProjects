//
//  MiniBrowserAppDelegate.h
//  MiniBrowser
//
//  Created by Mykhaylo Zaloznyy on 4/6/11.
//  Copyright 2011 CSN. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MiniBrowserViewController;

@interface MiniBrowserAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    MiniBrowserViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet MiniBrowserViewController *viewController;

@end

