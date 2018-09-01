//
//  ViewController.m
//  first-weekday-date-picker
//
//  Created by Adam Wulf on 9/1/18.
//  Copyright © 2018 Milestone Made. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController{
    IBOutlet NSDatePicker *_datePicker;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    NSCalendar *calendar = [NSCalendar currentCalendar];
    
    // choose a non-sunday first weekday, but the NSDatePicker still
    // shows the calendar starting on Sunday
    [calendar setFirstWeekday:3];
    
    [_datePicker setCalendar:calendar];
}

@end
