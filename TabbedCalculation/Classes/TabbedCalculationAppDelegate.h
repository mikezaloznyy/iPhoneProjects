//
//  TabbedCalculationAppDelegate.h
//  TabbedCalculation
//
//  Created by Mykhaylo Zaloznyy on 4/28/11.
//  Copyright 2011 CSN. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TabbedCalculationAppDelegate : NSObject <UIApplicationDelegate, UITabBarControllerDelegate> { // implement UITabBarControllerDelegate
    UIWindow *window;
	IBOutlet UITabBarController *tabBarController; // create an outlet for UITabBarController
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UITabBarController *tabBarController; // create setters and getters for UITabBarController

@end

