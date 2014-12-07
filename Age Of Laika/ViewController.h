//
//  ViewController.h
//  Age Of Laika
//
//  Created by Itamar Nakar on 18/11/14.
//  Copyright (c) 2014 Itamar Nakar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *answerLable;
@property (strong, nonatomic) IBOutlet UITextField *ageTextField;


- (IBAction)checkAge:(UIButton *)sender;

@end

