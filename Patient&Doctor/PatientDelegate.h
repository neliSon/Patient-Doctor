//
//  PatientDelegate.h
//  Patient&Doctor
//
//  Created by Nelson Chow on 2016-03-10.
//  Copyright © 2016 Nelson Chow. All rights reserved.
//

@protocol PatientDelegate

@property (nonatomic) BOOL hasHealthCard;

- (void) visitDoctor: Doctor;

@end