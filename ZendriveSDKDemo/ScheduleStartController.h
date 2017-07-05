//
//  ScheduleStartController.h
//  ZendriveSDKDemo
//
//  Created by Rahul@CTS on 7/4/17.
//  Copyright © 2017 Zendrive. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ScheduleStartController;

@protocol ScheduleStartDelegate <NSObject>
- (void)getSliderValue:(ScheduleStartController *)controller didSetSliderValue:(int *)sliderValue;
@end

@interface ScheduleStartController : UIViewController

@property (nonatomic, weak) id <ScheduleStartDelegate> delegate;
@property (weak, nonatomic) IBOutlet UISlider *slider;
@property (weak, nonatomic) IBOutlet UILabel *MinuteLabel;

@end
