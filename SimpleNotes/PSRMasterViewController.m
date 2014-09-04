//
//  PSRMasterViewController.m
//  SimpleNotes
//
//  Copyright (c) 2014 Ostashkov Ilya. All rights reserved.
//

#import "PSRMasterViewController.h"
#import "PSRNoteManager.h"
#import "PSRDetailViewController.h"

#define showNoteEditingSegueName @"showNoteEditing"

@interface PSRMasterViewController ()

@end

@implementation PSRMasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(10, 65, 300, 405) style:UITableViewStylePlain];
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    
    [self.view addSubview:self.tableView];
    self.navigationItem.title = @"Notes";
    
    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addNote)];
    self.navigationItem.rightBarButtonItem = addButton;
}

- (void)addNote {
    PSRNote *note = [[PSRNote alloc] init];
    [[PSRNoteManager sharedManager] addOrUpdateNote:note];
    [self.tableView reloadData];
}

- (void)viewWillAppear:(BOOL)animated
{
    [self.tableView reloadData];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.identifier isEqualToString:showNoteEditingSegueName] &&
       [sender isKindOfClass:[NSIndexPath class]])
    {
        NSIndexPath *indexPath = (NSIndexPath *)sender;
        if (!indexPath)
            return;
        
        PSRDetailViewController *detailVC = (PSRDetailViewController *)segue.destinationViewController;
        
        PSRNote *note = [[[PSRNoteManager sharedManager] notes] objectAtIndex:indexPath.row];
        detailVC.note = note;
    }
}

#pragma mark - UITableView delegate methods

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [[[PSRNoteManager sharedManager] notes] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    PSRNote *note = [[[PSRNoteManager sharedManager] notes] objectAtIndex:indexPath.row];
    cell.textLabel.text = note.text;
    cell.textLabel.textColor = note.color;
    cell.textLabel.font = note.font;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self performSegueWithIdentifier:showNoteEditingSegueName sender:indexPath];
}

@end
