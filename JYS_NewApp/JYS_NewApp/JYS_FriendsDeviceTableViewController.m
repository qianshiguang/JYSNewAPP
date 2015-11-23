//
//  JYS_FriendsDeviceTableViewController.m
//  JYS_NewApp
//
//  Created by Jianying Sun on 15/11/23.
//  Copyright © 2015年 Netviewtech. All rights reserved.
//

#import "JYS_FriendsDeviceTableViewController.h"
#import "JYS_DeviceInfoTableViewCell.h"

@interface JYS_FriendsDeviceTableViewController ()

@end

@implementation JYS_FriendsDeviceTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.titleView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"logo_ios7"]];
    UIBarButtonItem *rightBarItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"add"] style:UIBarButtonItemStylePlain target:self action:@selector(helpPage:)];
    rightBarItem.tintColor = self.view.tintColor ;
    rightBarItem.tag = 1;
    self.navigationItem.rightBarButtonItem = rightBarItem;
    
    UIBarButtonItem *eftBarItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"card"] style:UIBarButtonItemStylePlain target:self action:@selector(helpPage:)];
    eftBarItem.tintColor = self.view.tintColor ;
    eftBarItem.tag = 0;
    self.navigationItem.leftBarButtonItem = eftBarItem;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

//- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
//{
//    return 5;
//}


//- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
//    
//    NSString *CellIdentifier = @"";
//        switch ([indexPath row])
//        {
//            case 0:
//                CellIdentifier = @"Cell";
//                break;
//            case 1:
//                CellIdentifier = @"Cell1";
//                break;
//            case 2:
//                CellIdentifier = @"Cell2";
//                break;
//            case 3:
//                CellIdentifier = @"Cell3";
//                break;
//            case 4:
//                CellIdentifier = @"Cell4";
//                break;
//            case 5:
//                CellIdentifier = @"Cell5";
//                break;
//            default:
//                break;
//        }
//    JYS_DeviceInfoTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellIdentifier" ];
//    
//    // Configure the cell...
//    
//    return cell;
//}


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

- (void)helpPage:(UIBarButtonItem *)sender
{
    if (sender.tag == 0) {
        NSLog(@"更多");
        
    }else{
        
        NSLog(@"添加");
        
    }
}
@end
