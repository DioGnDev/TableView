//
//  MyTableViewController.m
//  TableView
//
//  Created by Dio Ilham on 7/10/15.
//  Copyright (c) 2015 Dio Ilham. All rights reserved.
//

#import "MyTableViewController.h"

@interface MyTableViewController () {
    NSArray *day;
    NSArray *comment;
    NSArray *listColor;

}

@end

@implementation MyTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    day = [NSArray arrayWithObjects:
           @"Senin",@"Selasa",
           @"Rabu",@"Kamis",
           @"Jumat",@"Sabtu",
           @"Minggu", nil];
    
    comment = [NSArray arrayWithObjects:@"hari pertama",@"hari kedua",@"hari ketiga",@"hari ke empat",@"hari ke lima",@"hari ke enam",@"hari ke tujuh", nil];
    
    listColor = [NSArray arrayWithObjects:[UIColor redColor],[UIColor orangeColor],[UIColor yellowColor],[UIColor greenColor], [UIColor blueColor], [UIColor magentaColor], [UIColor purpleColor], nil];
    
    

    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    
    return [day count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSString *identifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    
       if(cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:identifier];
    }
    
    // Configure the cell...
    
    cell.textLabel.text = [day objectAtIndex:indexPath.row];
    cell.detailTextLabel.text = [comment objectAtIndex:indexPath.row];
    cell.backgroundColor = [listColor objectAtIndex:indexPath.row];
    
    return cell;
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
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
