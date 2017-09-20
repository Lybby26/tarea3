//
//  ViewController.h
//  Tarea 3
//
//  Created by Mac Mini on 9/18/17.
//  Copyright © 2017 lybby26. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Inicio : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *lblCirculo;
@property (strong, nonatomic) IBOutlet UISlider *sliderRed;
@property (strong, nonatomic) IBOutlet UISlider *sliderGreen;
@property (strong, nonatomic) IBOutlet UISlider *sliderBlue;

@property (strong, nonatomic) IBOutlet UILabel *lblRed;

@property (strong, nonatomic) IBOutlet UILabel *lblGreen;

@property (strong, nonatomic) IBOutlet UILabel *lblBlue;

@property (strong, nonatomic) IBOutlet UISwitch *switchOffOn;

@property (strong, nonatomic) IBOutlet UIButton *btnRandom;

@end

