//
//  FinalProjectAppDelegate.h
//  FinalProject
//
//  Created by Mykhaylo Zaloznyy on 5/22/11.
//  Copyright 2011 CSN. All rights reserved.
//

#import <UIKit/UIKit.h>
@class GasManager;

@interface FinalProjectAppDelegate : NSObject <UIApplicationDelegate> {
    
    UIWindow *window;
    UINavigationController *navigationController;

	// to hold a list of gas_bookkeeping objects
	NSMutableArray *gasArray;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UINavigationController *navigationController;
@property (nonatomic, retain) NSMutableArray *gasArray;

-(void)copyDatabaseIfNeeded;
-(NSString *)getDBPath;
@end

