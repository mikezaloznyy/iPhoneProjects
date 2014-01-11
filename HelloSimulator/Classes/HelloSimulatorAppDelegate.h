//
//  HelloSimulatorAppDelegate.h
//  HelloSimulator
//
//  Created by John Ray on 5/28/10.
//  Copyright Poisontooth Enterprises 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class HelloSimulatorViewController;

@interface HelloSimulatorAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    HelloSimulatorViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet HelloSimulatorViewController *viewController;

@end

