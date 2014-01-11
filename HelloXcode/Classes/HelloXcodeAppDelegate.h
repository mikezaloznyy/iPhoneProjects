//
//  HelloXcodeAppDelegate.h
//  HelloXcode
//
//  Created by Mykhaylo Zaloznyy on 2/27/11.
//  Copyright 2011 CSN. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HelloXcodeAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@end

