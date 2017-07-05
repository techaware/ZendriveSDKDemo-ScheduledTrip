//
//  ScheduleStartController.m
//  ZendriveSDKDemo
//
//  Created by Rahul@CTS on 7/4/17.
//  Copyright © 2017 Zendrive. All rights reserved.
//

#import "ScheduleStartController.h"

@implementation ScheduleStartController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)backToMain:(UIButton *)sender {
    int min = roundf(self.slider.value * 60);
    [self.delegate getSliderValue:self didSetSliderValue:&min];
    [self.navigationController popViewControllerAnimated:YES];
}
- (IBAction)sliderValueChanged:(UISlider *)sender {
    int min = roundf(self.slider.value * 60);
    self.MinuteLabel.text = [NSString stringWithFormat:@"%i", min];
}

@end
