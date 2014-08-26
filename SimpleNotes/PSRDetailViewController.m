//
//  PSRDetailViewController.m
//  SimpleNotes
//
//  Copyright (c) 2014 Ostashkov Ilya. All rights reserved.
//

#import "PSRDetailViewController.h"
#import "PSRColorSelectViewController.h"

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
    
    UIBarButtonItem *selectColorButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemEdit target:self action:@selector(selectColor)];
    self.navigationItem.rightBarButtonItem = selectColorButton;
}

- (void)selectColor
{
    PSRColorSelectViewController *colorSelectVC =
    [[UIStoryboard storyboardWithName:@"Main" bundle:nil]instantiateViewControllerWithIdentifier:@"colorSelectVC"];
    
    self.note.color = self.textView.textColor;
    colorSelectVC.note = self.note;
    
    [self.navigationController pushViewController:colorSelectVC animated:YES];
}

- (void)viewWillDisappear:(BOOL)animated
{
    self.note.text = self.textView.text;
}

- (void)viewWillAppear:(BOOL)animated
{
    self.textView.textColor = self.note.color;
}
@end
