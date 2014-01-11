//
//  ImageHopAppDelegate.h
//  ImageHop
//
//  Created by Mykhaylo Zaloznyy on 3/25/11.
//  Copyright 2011 CSN. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ImageHopViewController;

@interface ImageHopAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    ImageHopViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet ImageHopViewController *viewController;

@end

