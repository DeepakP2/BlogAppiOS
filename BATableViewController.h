//
//  BATableViewController.h
//  UIOfBlogApp
//
//  Created by Deepak on 21/03/16.
//  Copyright © 2016 Deepak. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BATableViewController : UITableViewController<UITabBarDelegate,UITableViewDataSource,UINavigationBarDelegate,UINavigationControllerDelegate>

- (IBAction)sideManuBar:(id)sender;
@property (strong, nonatomic) IBOutlet UITableView *sideTable;


@end
