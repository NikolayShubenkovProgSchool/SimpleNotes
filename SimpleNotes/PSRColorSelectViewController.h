//
//  PSRColorSelectViewController.h
//  SimpleNotes
//
//  Copyright (c) 2014 Ostashkov Ilya. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PSRNote.h"

#define sliderValuePerRGB 0.39216

@class PSRColorSelectViewController;
@protocol PSRColorSelectViewControllerDelegate <NSObject>

- (void)psr_colorSelectViewXontroller:(PSRColorSelectViewController *)controller chooseColor:(UIColor *)color;

@end

@interface PSRColorSelectViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIView *colorView;
@property (strong, nonatomic) IBOutlet UISlider *RColorSlider;
@property (strong, nonatomic) IBOutlet UISlider *GColorSlider;
@property (strong, nonatomic) IBOutlet UISlider *BColorSlider;

@property (strong, nonatomic) UIColor *color;

@property (nonatomic, weak) id <PSRColorSelectViewControllerDelegate> delegate;

@end
