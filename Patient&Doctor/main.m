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
        
        Patient *patient = [[Patient alloc]init];
        Doctor *doctor = [[Doctor alloc] init];
        
        [patient setName:@"Ill"];
        [patient setHasHealthCard:true];
        NSLog(@"%@", [patient name]);
        
        [doctor setName:@"Who"];

        [patient visitDoctor: doctor];
        [doctor acceptPatient: patient];
//        [doctor askForHealthCard: patient];
        
        
    }
    return 0;
}
