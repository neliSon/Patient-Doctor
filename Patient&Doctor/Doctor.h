//
//  Doctor.h
//  Patient&Doctor
//
//  Created by Nelson Chow on 2016-03-10.
//  Copyright © 2016 Nelson Chow. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"
#import "PatientDelegate.h"

@interface Doctor : NSObject

@property (nonatomic) id<PatientDelegate> patient;

@property (nonatomic) NSString *name, *specialization;

- (void) askForHealthCard: Patient;
- (void) acceptPatient: Patient;

@end
