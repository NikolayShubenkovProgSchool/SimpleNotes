//
//  PSRColorSelectViewController.m
//  SimpleNotes
//
//  Copyright (c) 2014 Ostashkov Ilya. All rights reserved.
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
    self.colorView.backgroundColor = self.color;
    
    [self.color getRed:&red green:&green blue:&blue alpha:&alpha];
    
    self.RColorSlider.value = red;
    self.GColorSlider.value = green;
    self.BColorSlider.value = blue;
}

- (void)viewWillDisappear:(BOOL)animated
{
    [self.delegate psr_colorSelectViewXontroller:self chooseColor:self.color];
}

- (IBAction)rColorSliderTouchUpInside:(id)sender
{
    red = self.RColorSlider.value;
    self.color = [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
    self.colorView.backgroundColor = self.color;
}

- (IBAction)gColorSliderTouchUpInside:(id)sender
{
    green = self.GColorSlider.value;
    self.color = [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
    self.colorView.backgroundColor = self.color;
}


- (IBAction)bColorSliderTouchUpInside:(id)sender
{
    blue = self.BColorSlider.value;
    self.color = [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
    self.colorView.backgroundColor = self.color;
}

@end
