//
//  PSRColorSelectViewController.m
//  SimpleNotes
//
//  Created by Admin on 26.08.14.
//  Copyright (c) 2014 Daniil Korotin. All rights reserved.
//

#import "PSRColorSelectViewController.h"

@interface PSRColorSelectViewController ()
{
    CGFloat red;
    CGFloat green;
    CGFloat blue;
    CGFloat alpha;
}

@end

@implementation PSRColorSelectViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self configureView];
}

- (void)configureView
{
    self.colorView.backgroundColor = self.note.color;
    
    [self.note.color getRed:&red green:&green blue:&blue alpha:&alpha];
    
    self.RColorSlider.value = red;
    self.GColorSlider.value = green;
    self.BColorSlider.value = blue;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillDisappear:(BOOL)animated
{
    self.note.color = self.colorView.backgroundColor;
}

- (IBAction)rColorSliderTouchUpInside:(id)sender
{
    red = self.RColorSlider.value;
    self.note.color = [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
    self.colorView.backgroundColor = self.note.color;
}

- (IBAction)gColorSliderTouchUpInside:(id)sender
{
    green = self.GColorSlider.value;
    self.note.color = [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
    self.colorView.backgroundColor = self.note.color;
}


- (IBAction)bColorSliderTouchUpInside:(id)sender
{
    blue = self.BColorSlider.value;
    self.note.color = [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
    self.colorView.backgroundColor = self.note.color;
}

@end
