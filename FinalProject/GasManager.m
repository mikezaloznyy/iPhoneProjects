//
//  GasManager.m
//  FinalProject
//
//  Created by Mykhaylo Zaloznyy on 5/22/11.
//  Copyright 2011 CSN. All rights reserved.
//

#import "GasManager.h"
#import "FinalProjectAppDelegate.h"

static sqlite3 *database = nil;
static sqlite3_stmt *detailStmt = nil;

@implementation GasManager

@synthesize recordID, mileage, gasStationName, dateOfPurchase, numOfGallons, pricePerGallon, isDirty, isDetailViewHydrated;

+ (void) getInitialDataToDisplay:(NSString *)dbPath {
	
	FinalProjectAppDelegate *appDelegate = (FinalProjectAppDelegate *)[[UIApplication sharedApplication] delegate];

	if (sqlite3_open([dbPath UTF8String], &database) == SQLITE_OK) {
		
		const char *sql = "select record_id, gas_station_name, date_of_purchase, mileage, num_of_gallons, price_per_gallon from gas_bookkeeping";
		sqlite3_stmt *selectstmt;
		if(sqlite3_prepare_v2(database, sql, -1, &selectstmt, NULL) == SQLITE_OK) {
			
			while(sqlite3_step(selectstmt) == SQLITE_ROW) {
				
				NSInteger primaryKey = sqlite3_column_int(selectstmt, 0);
				GasManager *gasManagerObj = [[GasManager alloc] initWithPrimaryKey:primaryKey];
				gasManagerObj.gasStationName = [NSString stringWithUTF8String:(char *)sqlite3_column_text(selectstmt, 1)];
				
				gasManagerObj.isDirty = NO;
				
				[appDelegate.gasArray addObject:gasManagerObj];
				[gasManagerObj release];
			}
		}
	}
	else
		sqlite3_close(database); //Even though the open call failed, close the database connection to release all the memory.
}

+ (void) finalizeStatements {
	
	if(database) sqlite3_close(database);
}

- (id) initWithPrimaryKey:(NSInteger) pk {
	
	[super init];
	recordID = pk;
	
	isDetailViewHydrated = NO;
	
	return self;
}


- (void) hydrateDetailViewData {
	
	//If the detail view is hydrated then do not get it from the database.
	if(isDetailViewHydrated) return;
	
	if(detailStmt == nil) {
		const char *sql = "Select price_per_gallon, mileage, num_of_gallons from gas_bookkeeping where record_id = ?";
		if(sqlite3_prepare_v2(database, sql, -1, &detailStmt, NULL) != SQLITE_OK)
			NSAssert1(0, @"Error while creating detail view statement. '%s'", sqlite3_errmsg(database));
	}
	
	sqlite3_bind_int(detailStmt, 1, recordID);
	
	if(SQLITE_DONE != sqlite3_step(detailStmt)) {
		
		//Get the price in a temporary variable.
		NSNumber *priceDN = [[NSNumber alloc] initWithDouble:sqlite3_column_double(detailStmt, 0)];
		NSInteger test = sqlite3_column_int(detailStmt, 1);
		NSNumber *numOfGallonsDN = [[NSNumber alloc] initWithDouble:sqlite3_column_double(detailStmt, 2)];
		//Assign the price. The price value will be copied, since the property is declared with "copy" attribute.
		self.pricePerGallon = priceDN;
		self.mileage = test;
		self.numOfGallons = numOfGallonsDN;
		
		//Release the temporary variable. Since we created it using alloc, we have own it.
		[priceDN release];
		[numOfGallonsDN release];
	}
	else
		NSAssert1(0, @"Error while getting the price of the gallon. '%s'", sqlite3_errmsg(database));
	
	//Reset the detail statement.
	sqlite3_reset(detailStmt);
	
	//Set isDetailViewHydrated as YES, so we do not get it again from the database.
	isDetailViewHydrated = YES;
}

// remove previously allocated variables
-(void)dealloc {
	[gasStationName release];
	[dateOfPurchase release];
	[numOfGallons release];
	[pricePerGallon release];

	// call parent constructor
	[super dealloc];
}

@end
