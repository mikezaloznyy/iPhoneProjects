//
//  RootViewController.m
//  FlowerInfoNavigator
//
//  Created by Mykhaylo Zaloznyy on 5/22/11.
//  Copyright 2011 CSN. All rights reserved.
//

#import "RootViewController.h"


@implementation RootViewController


#pragma mark -
#pragma mark View lifecycle


- (void)viewDidLoad {
	[self createFlowerData];
    [super viewDidLoad];

    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
	return [flowerSections objectAtIndex:section];
}

- (void)createFlowerData {
    
	NSMutableArray *redFlowers;
	NSMutableArray *blueFlowers;
	
	flowerSections=[[NSMutableArray alloc] initWithObjects:
					@"Red Flowers",@"Blue Flowers",nil];
	
	redFlowers=[[NSMutableArray alloc] init];
	blueFlowers=[[NSMutableArray alloc] init];
	
	[redFlowers addObject:[[NSMutableDictionary alloc]
						   initWithObjectsAndKeys:@"Poppy",@"name",
						   @"poppy.png",@"picture",
						   @"http://en.wikipedia.org/wiki/Poppy",@"url",nil]];
	[redFlowers addObject:[[NSMutableDictionary alloc]
						   initWithObjectsAndKeys:@"Tulip",@"name",
						   @"tulip.png",@"picture",
						   @"http://en.wikipedia.org/wiki/Tulip",@"url",nil]];
	[redFlowers addObject:[[NSMutableDictionary alloc]
						   initWithObjectsAndKeys:@"Gerbera",@"name",
						   @"gerbera.png",@"picture",
						   @"http://en.wikipedia.org/wiki/Gerbera",@"url",nil]];
	[redFlowers addObject:[[NSMutableDictionary alloc]
						   initWithObjectsAndKeys:@"Peony",@"name",
						   @"peony.png",@"picture",
						   @"http://en.wikipedia.org/wiki/Peony",@"url",nil]];
	[redFlowers addObject:[[NSMutableDictionary alloc]
						   initWithObjectsAndKeys:@"Rose",@"name",
						   @"rose.png",@"picture",
						   @"http://en.wikipedia.org/wiki/Rose",@"url",nil]];
	[redFlowers addObject:[[NSMutableDictionary alloc]
						   initWithObjectsAndKeys:@"Hollyhock",@"name",
						   @"hollyhock.png",@"picture",
						   @"http://en.wikipedia.org/wiki/Hollyhock",
						   @"url",nil]];
	[redFlowers addObject:[[NSMutableDictionary alloc]
						   initWithObjectsAndKeys:@"Straw Flower",@"name",
						   @"strawflower.png",@"picture",
						   @"http://en.wikipedia.org/wiki/Strawflower",
						   @"url",nil]];
	
	[blueFlowers addObject:[[NSMutableDictionary alloc]
							initWithObjectsAndKeys:@"Hyacinth",@"name",
							@"hyacinth.png",@"picture",
							@"http://en.wikipedia.org/wiki/Hyacinth_(flower)",
							@"url",nil]];
	[blueFlowers addObject:[[NSMutableDictionary alloc]
							initWithObjectsAndKeys:@"Hydrangea",@"name",
							@"hydrangea.png",@"picture",
							@"http://en.wikipedia.org/wiki/Hydrangea",
							@"url",nil]];
	[blueFlowers addObject:[[NSMutableDictionary alloc]
							initWithObjectsAndKeys:@"Sea Holly",@"name",
							@"seaholly.png",@"picture",
							@"http://en.wikipedia.org/wiki/Sea_holly",
							@"url",nil]];
	[blueFlowers addObject:[[NSMutableDictionary alloc]
							initWithObjectsAndKeys:@"Grape Hyacinth",@"name",
							@"grapehyacinth.png",@"picture",
							@"http://en.wikipedia.org/wiki/Grape_hyacinth",
							@"url",nil]];
	[blueFlowers addObject:[[NSMutableDictionary alloc]
							initWithObjectsAndKeys:@"Phlox",@"name",
							@"phlox.png",@"picture",
							@"http://en.wikipedia.org/wiki/Phlox",@"url",nil]];
	[blueFlowers addObject:[[NSMutableDictionary alloc]
							initWithObjectsAndKeys:@"Pin Cushion Flower",@"name",
							@"pincushionflower.png",@"picture",
							@"http://en.wikipedia.org/wiki/Scabious",
							@"url",nil]];
	[blueFlowers addObject:[[NSMutableDictionary alloc]
							initWithObjectsAndKeys:@"Iris",@"name",
							@"iris.png",@"picture",
							@"http://en.wikipedia.org/wiki/Iris_(plant)",
							@"url",nil]];
    
	flowerData=[[NSMutableArray alloc] initWithObjects:
				redFlowers,blueFlowers,nil];
    
	[redFlowers release];
	[blueFlowers release]; 
}

/*
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}
*/
/*
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}
*/
/*
- (void)viewWillDisappear:(BOOL)animated {
	[super viewWillDisappear:animated];
}
*/
/*
- (void)viewDidDisappear:(BOOL)animated {
	[super viewDidDisappear:animated];
}
*/

/*
 // Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	// Return YES for supported orientations.
	return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
 */


#pragma mark -
#pragma mark Table view data source

// Customize the number of sections in the table view.
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return [flowerSections count];
}


// Customize the number of rows in the table view.
// Customize the number of rows in the table view.
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	return [[flowerData objectAtIndex:section] count];
}



// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
    
	// Configure the cell.
	[[cell textLabel] setText:[[[flowerData objectAtIndex:indexPath.section] objectAtIndex: indexPath.row] objectForKey:@"name"]];
	[[cell imageView] setImage:[UIImage imageNamed:[[[flowerData objectAtIndex:indexPath.section] objectAtIndex: indexPath.row] objectForKey:@"picture"]]];
	cell.accessoryType=UITableViewCellAccessoryDisclosureIndicator;
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/


// Override to support row selection in the table view.
- (void)tableView:(UITableView *)tableView 
didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	
    FlowerDetailViewController *flowerDetailViewController = 
    [[FlowerDetailViewController alloc] initWithNibName:
     @"FlowerDetailViewController" bundle:nil];
	
    flowerDetailViewController.detailURL=
    [[NSURL alloc] initWithString: 
     [[[flowerData objectAtIndex:indexPath.section] objectAtIndex: 
       indexPath.row] objectForKey:@"url"]];
	
    flowerDetailViewController.title=
		[[[flowerData objectAtIndex:indexPath.section] objectAtIndex: 
		  indexPath.row] objectForKey:@"name"];
	
    [self.navigationController pushViewController:
     flowerDetailViewController animated:YES];
    [flowerDetailViewController release];
}


/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/


/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark -
#pragma mark Table view delegate

#pragma mark -
#pragma mark Memory management

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Relinquish ownership any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
    // Relinquish ownership of anything that can be recreated in viewDidLoad or on demand.
    // For example: self.myOutlet = nil;
}


- (void)dealloc {
	[flowerData release];
	[flowerSections release];
    [super dealloc];
}


@end

