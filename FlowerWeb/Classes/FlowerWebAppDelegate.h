//
//  FlowerWebAppDelegate.h
//  FlowerWeb
//
//  Created by John Ray on 6/21/10.
//  Copyright Poisontooth Enterprises 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FlowerWebViewController;

@interface FlowerWebAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    FlowerWebViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet FlowerWebViewController *viewController;

@end

