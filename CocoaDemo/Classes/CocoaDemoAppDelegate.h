//
//  CocoaDemoAppDelegate.h
//  CocoaDemo
//
//  Created by Mykhaylo Zaloznyy on 2/28/11.
//  Copyright 2011 CSN. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CocoaDemoAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@end

