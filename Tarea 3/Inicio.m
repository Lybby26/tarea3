//
//  ViewController.m
//  Tarea 3
//
//  Created by Mac Mini on 9/18/17.
//  Copyright © 2017 lybby26. All rights reserved.
//

#import "Inicio.h"
#import <QuartzCore/QuartzCore.h>

@interface Inicio ()

@end

@implementation Inicio

- (void)viewDidLoad {
    [super viewDidLoad];
    //Convertir etiqueta en circulo
    _lblCirculo.layer.cornerRadius = 30;
    _lblCirculo.clipsToBounds = YES;
}

- (IBAction)getRedColor:(id)sender {
    self.lblRed.text = [NSString stringWithFormat:@"%f", self.sliderRed.value];
     [self sliderValueChanged:_sliderRed];}


- (IBAction)getGreenColor:(id)sender {
    self.lblGreen.text = [NSString stringWithFormat:@"%f", self.sliderGreen.value];
     [self sliderValueChanged:_sliderGreen];}


- (IBAction)getBlueColor:(id)sender {
    self.lblBlue.text = [NSString stringWithFormat:@"%f", self.sliderBlue.value];

    [self sliderValueChanged:_sliderBlue];
}

//Cambiar color
-(void)sliderValueChanged:(UISlider*)slider
{
    NSLog(@"%f", _sliderRed.value);
    NSLog(@"%f", _sliderGreen.value);
    NSLog(@"%f", _sliderBlue.value);
    
    float r=[[NSString stringWithFormat:@"%.0f",_sliderRed.value] floatValue];
    float g=[[NSString stringWithFormat:@"%.0f",_sliderGreen.value]floatValue];
    float b=[[NSString stringWithFormat:@"%.0f",_sliderBlue.value]floatValue];
    
    UIColor *colorToSet=[UIColor colorWithRed:(r/255.0f) green:(g/255.0f) blue:(b/255.0f) alpha:1];
    
    NSLog(@"%@", colorToSet);
    [_lblCirculo setBackgroundColor:colorToSet];
}


- (IBAction)showHideCircle:(id)sender {
   
      if(_switchOffOn.on){
        
        self.lblCirculo.hidden = NO;
        
        }else{
            
        self.lblCirculo.hidden = YES;
        }
    }





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
