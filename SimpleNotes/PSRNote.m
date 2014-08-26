//
//  PSRNote.m
//  SimpleNotes
//
//  Created by Daniil Korotin on 24.04.14.
//  Copyright (c) 2014 Daniil Korotin. All rights reserved.
//

#import "PSRNote.h"

@implementation PSRNote

- (id)init {
    self = [super init];
    
    if (self) {
        self.text = @"New note";
        self.date = [NSDate date];
        self.color = [UIColor blackColor];
    }
    
    return self;
}

- (void)encodeWithCoder:(NSCoder *)coder {
    [coder encodeObject:self.text forKey:@"text"];
    [coder encodeObject:self.date forKey:@"date"];
    [coder encodeObject:self.color forKey:@"color"];
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super init];
    
    if (self) {
        self.text = [aDecoder decodeObjectForKey:@"text"];
        self.date = [aDecoder decodeObjectForKey:@"date"];
        self.color = [aDecoder decodeObjectForKey:@"color"];
    }
    
    return self; 
}
@end
