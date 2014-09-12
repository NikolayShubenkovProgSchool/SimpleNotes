//
//  PSRMasterViewController.h
//  SimpleNotes
//
//  Copyright (c) 2014 Ostashkov Ilya. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PSRMasterViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) IBOutlet UITableView *tableView;

@end
