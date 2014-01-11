//
//  HelloNounAppDelegate.h
//  HelloNoun
//
//  Created by Mykhaylo Zaloznyy on 3/9/11.
//  Copyright 2011 CSN. All rights reserved.
//

#import <UIKit/UIKit.h>

@class HelloNounViewController;

@interface HelloNounAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    HelloNounViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet HelloNounViewController *viewController;

@end

