//
//  DisconnectedAppDelegate.h
//  Disconnected
//
//  Created by John Ray on 5/28/10.
//  Copyright Poisontooth Enterprises 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DisconnectedViewController;

@interface DisconnectedAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    DisconnectedViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet DisconnectedViewController *viewController;

@end

