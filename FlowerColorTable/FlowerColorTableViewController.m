//
//  FlowerColorTableViewController.m
//  FlowerColorTable
//
//  Created by Mykhaylo Zaloznyy on 5/22/11.
//  Copyright 2011 CSN. All rights reserved.
//

#define sectionCount 2
#define redSection 0
#define blueSection 1

#import "FlowerColorTableViewController.h"


@implementation FlowerColorTableViewController

#pragma mark -
#pragma mark Initialization

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView 
{ 
	return sectionCount; 
} 

// Customize the number of rows in the table view. 
- (NSInteger)tableView:(UITableView *)tableView 
 numberOfRowsInSection:(NSInteger)section
{ 
	switch (section) {
		case redSection:
			return [redFlowers count];
		case blueSection:
			return [blueFlowers count];
		default:
			return 0;
	}
} 

- (NSString *)tableView:(UITableView *)tableView 
titleForHeaderInSection:(NSInteger)section {
    switch (section) {
        case redSection:
            return @"Red";
        case blueSection:
            return @"Blue";
        default:
            return @"Unknown";
    }
}

/*
- (id)initWithStyle:(UITableViewStyle)style {
    // Override initWithStyle: if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization.
    }
    return self;
}
*/


#pragma mark -
#pragma mark View lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
	redFlowers = [[NSMutableArray alloc] 
				  initWithObjects:@"Gerbera",@"Peony",@"Rose",@"Poppy",nil];
	blueFlowers = [[NSMutableArray alloc] 
				   initWithObjects:@"Hyacinth",@"Hydrangea",@"Sea Holly",@"Phlox",@"Iris",nil];
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
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


// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView 
		 cellForRowAtIndexPath:(NSIndexPath *)indexPath 
{
	static NSString *CellIdentifier = @"Cell";
	
	UITableViewCell *cell = (UITableViewCell*)[tableView 
                                               dequeueReusableCellWithIdentifier:CellIdentifier];
	if(cell == nil) 
	{
		cell = [[[UITableViewCell alloc] 
				 initWithFrame:CGRectZero 
				 reuseIdentifier:CellIdentifier] autorelease];
	}
	
	switch (indexPath.section) {
		case redSection:
			[[cell textLabel] 
			 setText:[redFlowers objectAtIndex:indexPath.row]];
			break;
		case blueSection:
			[[cell textLabel] 
			 setText:[blueFlowers objectAtIndex:indexPath.row]];
			break;
		default:
			[[cell textLabel] 
			 setText:@"Unknown"];
	}
	return cell;
}

- (void)tableView:(UITableView *)tableView 
didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	UIAlertView *showSelection;
	NSString	*flowerMessage;
	switch (indexPath.section) {
		case redSection:
			flowerMessage=[[NSString alloc] 
						   initWithFormat:
						   @"You chose the red flower - %@",
						   [redFlowers objectAtIndex: indexPath.row]];
			break;
		case blueSection:
			flowerMessage=[[NSString alloc] 
						   initWithFormat:
						   @"You chose the blue flower - %@",
						   [blueFlowers objectAtIndex: indexPath.row]];
			break;
		default:
			flowerMessage=[[NSString alloc] 
						   initWithFormat:
						   @"I have no idea what you chose!?"];
			break;
	}
	
	showSelection = [[UIAlertView alloc] 
					 initWithTitle: @"Flower Selected" 
					 message:flowerMessage 
					 delegate: nil 
					 cancelButtonTitle: @"Ok" 
					 otherButtonTitles: nil];
	[showSelection show];
	[showSelection release];
	[flowerMessage release];
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/


/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source.
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
    }   
}
*/


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
    
    // Relinquish ownership any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
    // Relinquish ownership of anything that can be recreated in viewDidLoad or on demand.
    // For example: self.myOutlet = nil;
}


- (void)dealloc {
	[redFlowers release];
	[blueFlowers release];
    [super dealloc];
}


@end

