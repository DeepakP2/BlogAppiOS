//
//  BATableViewController.m
//  UIOfBlogApp
//
//  Created by Deepak on 21/03/16.
//  Copyright © 2016 Deepak. All rights reserved.
//

#import "BATableViewController.h"

@interface BATableViewController ()
@property (nonatomic, strong) NSArray *imgArray;
@end
NSInteger i = 0;
NSInteger j = 1;
NSInteger k = 2;
NSInteger l = 3;
@implementation BATableViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    _imgArray = [NSArray arrayWithObjects:@"1.jpg",@"2.jpg",@"3.jpg",@"4.jpg",@"5.jpg",@"6.jpg",@"7.jpg",@"8.jpg",@"9.jpg",@"10.jpg",@"11.jpg",@"12.jpg", nil];
    
    
    [self.sideTable setFrame:CGRectMake(0, 40, 200, 400)];
    [self.sideTable isHidden];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
//     self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//#warning Incomplete implementation, return the number of rows
    return 10;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if ((indexPath.row == 0) || (indexPath.row == 4) || (indexPath.row == 8)) {
        return 220;
        
    }else if ((indexPath.row == 1) || (indexPath.row == 5) ||(indexPath.row == 9)){
        return 117;
    }else if ((indexPath.row == 2) || (indexPath.row == 6) || (indexPath.row == 10)) {
        return 110;
    }else if ((indexPath.row == 3) || (indexPath.row == 7) ||(indexPath.row == 11)) {
        
        return 210;
    }else{
        return 200;
    }
    
}





- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [[UITableViewCell alloc]init];
    UIButton*bOne = (UIButton*)[self.tableView viewWithTag:100];
    UIButton*bTwo = (UIButton*)[self.tableView viewWithTag:101];
    UIButton*bThree = (UIButton*)[self.tableView viewWithTag:102];
    UIButton*bFour = (UIButton*)[self.tableView viewWithTag:103];
    UIButton*bFive = (UIButton*)[self.tableView viewWithTag:104];
    UIButton*bSix = (UIButton*)[self.tableView viewWithTag:105];
    UIButton*bSeven = (UIButton*)[self.tableView viewWithTag:106];
    UIButton*bEight = (UIButton*)[self.tableView viewWithTag:107];
   
    
    
 //bOne.contentEdgeInsets=UIEdgeInsetsMake(170, 0, 20, 0);
   [bOne setTitleEdgeInsets:UIEdgeInsetsMake(150, 0, 20, 0)];
  [bOne setTitle:@"helloWorld" forState:0];
   
    //--------------CellCreatingAndRepeat start------------
    
    
    
    
            if ((indexPath.row == 0) || (indexPath.row == 4) || (indexPath.row == 8)) {
                cell = [tableView dequeueReusableCellWithIdentifier:@"tableCellOne" forIndexPath:indexPath];
               
                //[bOne backgroundImageForState:[_imgArray indexOfObject:indexPath]];
                //i=indexPath.row+4;
                
            }else if ((indexPath.row == 1) || (indexPath.row == 5) ||(indexPath.row == 9)){
                cell = [tableView dequeueReusableCellWithIdentifier:@"tableCellTwo" forIndexPath:indexPath];
                //j=indexPath.row+4;
            }else if ((indexPath.row == 2) || (indexPath.row == 6) || (indexPath.row == 10)) {
                cell = [tableView
                        dequeueReusableCellWithIdentifier:@"tableCellThree" forIndexPath:indexPath];
                //k=indexPath.row+4;
            }else if ((indexPath.row == 3) || (indexPath.row == 7) ||(indexPath.row == 11)) {
                
                cell = [tableView dequeueReusableCellWithIdentifier:@"tableCellFour" forIndexPath:indexPath];
                //l=indexPath.row+4;
                //j = indexPath.row;
            }
    //--------------CellCreatingAndRepeat end------------
    
    
    [self.tableView setSeparatorStyle:UITableViewCellSeparatorStyleNone];
  
    
    //cell.imageView.image =[UIImage imageNamed:[NSString stringWithFormat:@"%@",[_imgArray objectAtIndex:indexPath.row]]];
    
//    NSLog(@"%ld",(long)indexPath.row);
//    if (indexPath.row == 0) {
//        //[bOne setBackgroundImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@",[_imgArray objectAtIndex:indexPath.row]]] forState:UIControlStateNormal];
//        bOne=[[UIButton alloc]init];
//        [[bOne imageView] setContentMode: UIViewContentModeScaleAspectFit];
//        [bOne setImage:[_imgArray objectAtIndex:0] forState:UIControlStateNormal];
//         NSLog(@"%ld",(long)indexPath.row);
//    }else if (indexPath.row == 4){
//        [bOne setBackgroundImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@",[_imgArray objectAtIndex:indexPath.row]]] forState:UIControlStateNormal];
//    }else if(indexPath.row == 8){
//        [bOne setBackgroundImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@",[_imgArray objectAtIndex:indexPath.row]]] forState:UIControlStateNormal];
//    }
//    
//    
//    
    
    
    

//    for (int i=(int)indexPath.row; i<5; i++) {
//        [bOne setBackgroundImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@",[_imgArray objectAtIndex:i]]] forState:UIControlStateNormal];
//        [bTwo setBackgroundImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@",[_imgArray objectAtIndex:i+1]]] forState:UIControlStateNormal];
//        [bThree setBackgroundImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@",[_imgArray objectAtIndex:i+2]]] forState:UIControlStateNormal];
//        [bFour setBackgroundImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@",[_imgArray objectAtIndex:i+3]]] forState:UIControlStateNormal];
//        [bFive setBackgroundImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@",[_imgArray objectAtIndex:i+4]]] forState:UIControlStateNormal];
//        [bSix setBackgroundImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@",[_imgArray objectAtIndex:i+5]]] forState:UIControlStateNormal];
//        [bSeven setBackgroundImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@",[_imgArray objectAtIndex:i+6]]] forState:UIControlStateNormal];
//        [bEight setBackgroundImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@",[_imgArray objectAtIndex:i+7]]] forState:UIControlStateNormal];
//        
//    }
   
    
    
    
    
    
    
    
    
    
    
    
    
    
//    NSLog(@"%ld",(long)indexPath.row);
//    // Configure the cell...
//    NSLog(@"i=%ld,j=%ld,k=%ld,l=%ld",(long)i,(long)j,(long)k,(long)l);
    
    return cell;
}


-(NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    return nil;
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

    
//    NSLog(@"%ld",(long)indexPath.row);
}


// Override to support conditional editing of the table view.
//- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
//    // Return NO if you do not want the specified item to be editable.
//    return YES;
//}


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


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
   
}


- (IBAction)sideManuBar:(id)sender {
    
    [self.sideTable setHidden:NO];
}
@end
