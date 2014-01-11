//
//  DateCalcAppDelegate.h
//  DateCalc
//
//  Created by Mykhaylo Zaloznyy on 4/20/11.
//  Copyright 2011 CSN. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DateCalcViewController;

@interface DateCalcAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    DateCalcViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet DateCalcViewController *viewController;

@end

