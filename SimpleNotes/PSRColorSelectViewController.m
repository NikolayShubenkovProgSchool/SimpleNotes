//
//  PSRColorSelectViewController.m
//  SimpleNotes
//
//  Copyright (c) 2014 Ostashkov Ilya. All rights reserved.
//

#import "PSRColorSelectViewController.h"
#import "PSRColorSelectView.h"

@implementation PSRColorSelectViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.colorSelectView setupColor:self.color];
}

- (void)viewWillDisappear:(BOOL)animated
{
    self.color = self.colorSelectView.selectedColor;
    [self.delegate psr_colorSelectViewXontroller:self chooseColor:self.color];
}

@end
