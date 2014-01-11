//
//  ObjC_DemosAppDelegate.h
//  ObjC-Demos
//
//  Created by Mykhaylo Zaloznyy on 2/27/11.
//  Copyright 2011 CSN. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ObjC_DemosAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@end

