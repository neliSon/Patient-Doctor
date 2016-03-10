//
//  PatientDelegate.h
//  Patient&Doctor
//
//  Created by Nelson Chow on 2016-03-10.
//  Copyright © 2016 Nelson Chow. All rights reserved.
//

@class Doctor;

@protocol PatientDelegate

@property (nonatomic) BOOL hasHealthCard;

- (void) visitDoctor:(Doctor*) Doctor;
- (void) requestMedication:(Doctor*) Doctor;

@end