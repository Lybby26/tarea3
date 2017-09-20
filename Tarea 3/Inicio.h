//
//  ViewController.h
//  Tarea 3
//
//  Created by Mac Mini on 9/18/17.
//  Copyright © 2017 lybby26. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Inicio : UIViewController
//circulo
@property (strong, nonatomic) IBOutlet UILabel *lblCirculo;

//Sliders
@property (strong, nonatomic) IBOutlet UISlider *sliderRed;
@property (strong, nonatomic) IBOutlet UISlider *sliderGreen;
@property (strong, nonatomic) IBOutlet UISlider *sliderBlue;

//Sliders labels
@property (strong, nonatomic) IBOutlet UILabel *lblRed;
@property (strong, nonatomic) IBOutlet UILabel *lblGreen;
@property (strong, nonatomic) IBOutlet UILabel *lblBlue;

//Show and hide circle
@property (strong, nonatomic) IBOutlet UISwitch *switchOffOn;

//Get a random color
@property (strong, nonatomic) IBOutlet UIButton *btnRandom;

//Show alert
@property (strong, nonatomic) IBOutlet UITextField *txtName;
@property (strong, nonatomic) IBOutlet UITextField *txtPhone;
@property (strong, nonatomic) IBOutlet UIButton *btnShowAlert;

@property (strong, nonatomic) IBOutlet UILabel *lblNombre;

@property (strong, nonatomic) IBOutlet UILabel *lblPhone;


@end

