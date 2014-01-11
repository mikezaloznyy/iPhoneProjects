//
//  GasManager.h
//  FinalProject
//
//  Created by Mykhaylo Zaloznyy on 5/22/11.
//  Copyright 2011 CSN. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <sqlite3.h>

@interface GasManager : NSObject {
	NSInteger recordID;
	NSString *gasStationName;
	NSDate *dateOfPurchase;
	NSNumber *numOfGallons;
	NSNumber *pricePerGallon;
	NSInteger mileage;
	
	// Internal variables to keep track of the state of the object
	BOOL isDirty; // tells us if the object was changed in memory or not
	BOOL isDetailViewHydrated; // tells us if the data that shows up on a detailed view is fetched from the database or not
}

@property (nonatomic, readonly) NSInteger recordID;
@property (nonatomic, retain) NSString *gasStationName;
@property (nonatomic, retain) NSDate *dateOfPurchase;
@property (nonatomic, retain) NSNumber *numOfGallons;
@property (nonatomic, copy) NSNumber *pricePerGallon;
@property (nonatomic) NSInteger mileage;
@property (nonatomic, readwrite) BOOL isDirty;
@property (nonatomic, readwrite) BOOL isDetailViewHydrated;

//Static methods.
+ (void) getInitialDataToDisplay:(NSString *)dbPath;
+ (void) finalizeStatements;

//Instance methods.
- (id) initWithPrimaryKey:(NSInteger)pk;
- (void) hydrateDetailViewData;
@end
