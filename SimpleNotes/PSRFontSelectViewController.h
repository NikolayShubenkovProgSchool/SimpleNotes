//
//  PSRFontSelectViewController.h
//  SimpleNotes
//
//  Created by Admin on 01.09.14.
//  Copyright (c) 2014 Daniil Korotin. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PSRFontSelectViewController;
@protocol PSRFontSelectViewControllerDelegate <NSObject>

- (void)psr_fontSelectViewXontroller:(PSRFontSelectViewController *)controller selectFont:(UIFont *)font;

@end

@interface PSRFontSelectViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (nonatomic, weak) id <PSRFontSelectViewControllerDelegate> delegate;

@end
