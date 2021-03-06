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
@class PSRColorSelectView;
@protocol PSRColorSelectViewControllerDelegate <NSObject>

- (void)psr_colorSelectViewXontroller:(PSRColorSelectViewController *)controller chooseColor:(UIColor *)color;

@end

@interface PSRColorSelectViewController : UIViewController

@property (weak, nonatomic) IBOutlet PSRColorSelectView *colorSelectView;

@property (strong, nonatomic) UIColor *color;

@property (nonatomic, weak) id <PSRColorSelectViewControllerDelegate> delegate;

@end
