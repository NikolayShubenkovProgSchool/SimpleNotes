//
//  PSRNoteManager.h
//  SimpleNotes
//
//  Copyright (c) 2014 Ostashkov Ilya. All rights reserved.
//

#import "PSRNote.h"

@interface PSRNoteManager : NSObject {
    NSMutableArray *_notes;
}

@property (nonatomic, strong, readonly) NSArray *notes;

+ (instancetype)sharedManager;

- (void)saveToFile;
- (void)loadFromFile;
- (void)addOrUpdateNote:(PSRNote *)note;
- (void)removeNote:(PSRNote *)note;

@end
