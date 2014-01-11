//
//  FieldButtonFunAppDelegate.h
//  FieldButtonFun
//
//  Created by Mykhaylo Zaloznyy on 3/16/11.
//  Copyright 2011 CSN. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FieldButtonFunViewController;

@interface FieldButtonFunAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    FieldButtonFunViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet FieldButtonFunViewController *viewController;

@end

