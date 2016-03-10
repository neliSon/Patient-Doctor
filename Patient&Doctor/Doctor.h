//
//  Doctor.h
//  Patient&Doctor
//
//  Created by Nelson Chow on 2016-03-10.
//  Copyright © 2016 Nelson Chow. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PatientDelegate.h"

@class Patient;

@interface Doctor : NSObject

@property (nonatomic) id<PatientDelegate> patient;

@property (nonatomic,strong) NSString *name, *specialization;
@property (strong) NSMutableSet *acceptedPatients, *prescribedDrugs;
@property (strong) NSDictionary *prescriptions;


//- (void) askForHealthCard: Patient;
- (instancetype)initWithName: (NSString *) name andSpecialization: (NSString *) specialization;
- (void) acceptPatient:(Patient *) Patient;
- (void) prescribeDrug:(Patient *) Patient;

@end
