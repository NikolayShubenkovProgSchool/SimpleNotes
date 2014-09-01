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
    
    if (self.note) {
        self.textView.text = self.note.text;
    }
    
    self.navigationItem.title = self.note.text;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.destinationViewController isKindOfClass:[PSRColorSelectViewController class]])
    {
        PSRColorSelectViewController *colorSelectViewController = segue.destinationViewController;
        colorSelectViewController.delegate = self;
        colorSelectViewController.color = self.note.color;
    }
}

- (void)viewWillDisappear:(BOOL)animated
{
    self.note.text = self.textView.text;
}

- (void)viewWillAppear:(BOOL)animated
{
    self.textView.textColor = self.note.color;
}

#pragma mark - PSRColorSelectViewControllerDelegate -

- (void)psr_colorSelectViewXontroller:(PSRColorSelectViewController *)controller chooseColor:(UIColor *)color
{
    if (color)
    {
        self.note.color = color;
        self.textView.textColor = self.note.color;
    }
}

@end
