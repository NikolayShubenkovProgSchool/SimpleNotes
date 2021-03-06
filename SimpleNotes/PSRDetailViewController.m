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
    
    if (self.note)
        self.textView.text = self.note.text;
    
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
    else if ([segue.destinationViewController isKindOfClass:[PSRFontSelectViewController class]])
    {
        PSRFontSelectViewController *fontSelectViewController = segue.destinationViewController;
        fontSelectViewController.delegate = self;
    }
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    self.note.text = self.textView.text;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.textView.textColor = self.note.color;
    self.textView.font = self.note.font;
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

#pragma mark - PSRFontSelectViewControllerDelegate -

- (void)psr_fontSelectViewXontroller:(PSRFontSelectViewController *)controller selectFont:(UIFont *)font
{
    if (font)
    {
        self.note.font = font;
        self.textView.font = font;
    }
}

@end
