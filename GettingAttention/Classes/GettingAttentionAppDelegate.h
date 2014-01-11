//
//  GettingAttentionAppDelegate.h
//  GettingAttention
//
//  Created by Mykhaylo Zaloznyy on 4/11/11.
//  Copyright 2011 CSN. All rights reserved.
//

#import <UIKit/UIKit.h>

@class GettingAttentionViewController;

@interface GettingAttentionAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    GettingAttentionViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet GettingAttentionViewController *viewController;

@end

