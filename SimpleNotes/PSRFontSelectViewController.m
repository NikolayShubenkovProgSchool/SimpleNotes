//
//  PSRFontSelectViewController.m
//  SimpleNotes
//
//  Created by Admin on 01.09.14.
//  Copyright (c) 2014 Daniil Korotin. All rights reserved.
//

#import "PSRFontSelectViewController.h"

@interface PSRFontSelectViewController ()
{
    NSMutableArray *fonts;
}

@end

@implementation PSRFontSelectViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    
    self.navigationItem.title = @"Fonts";
    
    [self getAllAvailableFonts];
}

-(void)getAllAvailableFonts
{
    if (!fonts)
        fonts = [NSMutableArray new];
        
    NSArray *familyNames = [[NSArray alloc] initWithArray:[UIFont familyNames]];
    
    NSArray *fontNames;
    NSInteger indFamily, indFont;
    for (indFamily=0; indFamily<[familyNames count]; ++indFamily)
    {
        fontNames = [[NSArray alloc] initWithArray:
                     [UIFont fontNamesForFamilyName:
                      [familyNames objectAtIndex:indFamily]]];
        for (indFont=0; indFont<[fontNames count]; ++indFont)
        {
            [fonts addObject:[fontNames objectAtIndex:indFont]];
        }
    }
    
    //sort
    NSSortDescriptor * sortDesc = [[NSSortDescriptor alloc] initWithKey:@"self" ascending:YES];
    [fonts sortUsingDescriptors:[NSArray arrayWithObject:sortDesc]];
}

#pragma mark - UITableView delegate methods

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [fonts count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"fontCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    cell.textLabel.text = [fonts objectAtIndex:indexPath.row];
    cell.textLabel.font = [UIFont fontWithName:cell.textLabel.text size:14];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UIFont *font = [UIFont fontWithName:[fonts objectAtIndex:indexPath.row] size:14];
    [self.delegate psr_fontSelectViewXontroller:self selectFont:font];
    
    [self.navigationController popViewControllerAnimated:YES];
}

@end
