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


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
