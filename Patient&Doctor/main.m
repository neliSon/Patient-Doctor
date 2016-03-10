//
//  main.m
//  Patient&Doctor
//
//  Created by Nelson Chow on 2016-03-10.
//  Copyright © 2016 Nelson Chow. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"
#import "Doctor.h"
#import "PatientDelegate.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"Hello, World!");
        
        Patient *patient = [[Patient alloc]initWithName:@"Ill" andAge:25];
        Doctor *doctor = [[Doctor alloc] initWithName:@"Who" andSpecialization:@"Dermatology"];
        
        [patient setHasHealthCard:true];
//        NSLog(@"%@ is the patient.", [patient name]);
        
        [patient.setOfSymptoms addObject: @"stupidity"];

        [patient visitDoctor: doctor];
        [doctor acceptPatient: patient];
//        [doctor askForHealthCard: patient];
        
        [patient requestMedication: doctor];
        [doctor prescribeDrug: patient];
        
    }
    return 0;
}
