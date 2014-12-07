//
//  ViewController.m
//  Age Of Laika
//
//  Created by Itamar Nakar on 18/11/14.
//  Copyright (c) 2014 Itamar Nakar. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.ageTextField becomeFirstResponder];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

    }

-(float) dogYearCalculator:(NSString *)nputAgeInHumanYears {
    //The formula is: a= (d-2)x4+(2 x 10.5)
    float humanYears = [nputAgeInHumanYears floatValue];
    float dogYears;
    if (humanYears <= 2) {
        dogYears = (humanYears*10.5);
    } else {
        dogYears = (humanYears-2)*4+(2*10.5);
    }
    
    return dogYears;
}

- (IBAction)checkAge:(UIButton *)sender {
    
    float answerAge =[self dogYearCalculator:self.ageTextField.text];
    self.answerLable.text = [NSString stringWithFormat:@"Your dog is %f years old",answerAge];
    //[self.ageTextField resignFirstResponder];
}
@end
