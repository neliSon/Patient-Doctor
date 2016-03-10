//
//  Patient.h
//  Patient&Doctor
//
//  Created by Nelson Chow on 2016-03-10.
//  Copyright © 2016 Nelson Chow. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PatientDelegate.h"

@interface Patient : NSObject <PatientDelegate>

@property (nonatomic,strong) NSString *name;
@property (nonatomic) int age;
@property (nonatomic) BOOL hasHealthCard;

@property (strong) NSMutableSet *setOfSymptoms;


- (instancetype)initWithName: (NSString *) name andAge: (int) age;

// - (void) visitDoctor: Doctor;

@end