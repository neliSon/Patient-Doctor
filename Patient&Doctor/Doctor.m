//
//  Doctor.m
//  Patient&Doctor
//
//  Created by Nelson Chow on 2016-03-10.
//  Copyright © 2016 Nelson Chow. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"

@implementation Doctor

- (instancetype)initWithName: (NSString *) name andSpecialization: (NSString *) specialization
{
    self = [self init];
    if (self) {
        _name = name;
        _specialization = specialization;
        
    }
    return self;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _acceptedPatients = [NSMutableSet set];
        _prescribedDrugs = [NSMutableSet set];
        _prescriptions = @{@"stupidity":@"no known cure / education is key"};
    }
    return self;
}



//- (void) askForHealthCard:(id)Patient {
//    if ([Patient hasHealthCard]) {
//        [self.acceptedPatients addObject:Patient];
//
//    }
//}

- (void) acceptPatient:(Patient *) patient {
    if ([patient hasHealthCard]) {
        [self.acceptedPatients addObject: patient];
        NSLog(@"%@ accepts %@ as a patient", self.name, patient.name);
    }else {
        NSLog(@"%@ needs a health card to be accepted as a patient", patient.name);
    }

}

- (void) prescribeDrug: (Patient *) patient {
    if ([self.acceptedPatients containsObject: patient]) {
        for (NSString *symptom in patient.setOfSymptoms) {
            NSString *drug = [self.prescriptions objectForKey:symptom];
            NSLog(@"%@", drug);
            [self.prescribedDrugs addObject:drug];
        }
    }else {
        NSLog(@"Not a patient.");
    }
        
}

@end
