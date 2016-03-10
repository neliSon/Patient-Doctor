//
//  Patient.h
//  Patient&Doctor
//
//  Created by Nelson Chow on 2016-03-10.
//  Copyright © 2016 Nelson Chow. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "PatientDelegate.h"

@interface Patient : NSObject <PatientDelegate>

@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) int age;
@property (nonatomic, assign) BOOL hasHealthCard;


// - (void) visitDoctor: Doctor;

@end