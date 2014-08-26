//
//  PSRDetailViewController.m
//  SimpleNotes
//
//  Created by Daniil Korotin on 24.04.14.
//  Copyright (c) 2014 Daniil Korotin. All rights reserved.
//

#import "PSRDetailViewController.h"

@interface PSRDetailViewController ()

@end

@implementation PSRDetailViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.textView = [[UITextView alloc] initWithFrame:CGRectMake(10, 65, 300, 405)];
    [self.view addSubview:self.textView];
    
    if (self.note) {
        self.textView.text = self.note.text;
    }
    
    self.navigationItem.title = self.note.text;
    
    //UIBarButtonItem *cancelButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCancel target:self action:@selector(cancel)];
    //self.navigationItem.rightBarButtonItem = cancelButton;
}

/*- (void)cancel {
    
}*/

- (void)viewWillDisappear:(BOOL)animated
{
    self.note.text = self.textView.text;
}

@end
