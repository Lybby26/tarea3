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
    //Mostrar valor decimal del slider rojo
    self.lblRed.text = [NSString stringWithFormat:@"%f", self.sliderRed.value];
    
    //Ejecutar la funcion para cambiar el color del circulo
    [self sliderValueChanged:_sliderRed];}


- (IBAction)getGreenColor:(id)sender {
    //Mostrar valor decimal del slider verde
    self.lblGreen.text = [NSString stringWithFormat:@"%f", self.sliderGreen.value];
    
   //Ejecutar la funcion para cambiar el color del circulo
    [self sliderValueChanged:_sliderGreen];}


- (IBAction)getBlueColor:(id)sender {
    //Mostrar valor decimal del slider azul
    self.lblBlue.text = [NSString stringWithFormat:@"%f", self.sliderBlue.value];
    
   //Ejecutar la funcion para cambiar el color del circulo
    [self sliderValueChanged:_sliderBlue];
}

static NSString *lastColor;

//Cambiar color al circulo
-(void)sliderValueChanged:(UISlider*)slider
{
   
    
    float redF =[[NSString stringWithFormat:@"%.0f",_sliderRed.value] floatValue];
    float greenF =[[NSString stringWithFormat:@"%.0f",_sliderGreen.value]floatValue];
    float blueF =[[NSString stringWithFormat:@"%.0f",_sliderBlue.value]floatValue];
    
    NSString *r = [NSString stringWithFormat:@"%f", redF];
    NSString *g = [NSString stringWithFormat:@"%f", greenF];
    NSString *b = [NSString stringWithFormat:@"%f", blueF];
    
     lastColor = [NSString stringWithFormat:@"(%@,%@,%@)", r, g, b];
    
   
    
    UIColor *colorToSet=[UIColor colorWithRed:(redF/255.0f) green:(greenF/255.0f) blue:(blueF/255.0f) alpha:1];
    
    NSLog(@"%@", colorToSet);
    [_lblCirculo setBackgroundColor:colorToSet];
}

//Mostrar y ocultar circulo
- (IBAction)showHideCircle:(id)sender {
   
      if(_switchOffOn.on){
        
        self.lblCirculo.hidden = NO;
        
        }else{
            
        self.lblCirculo.hidden = YES;
        }
    }


//Elegir un color al azar
- (IBAction)getARandomColor:(id)sender {
    
    CGFloat red = arc4random() % 255 / 255.0;
    CGFloat green = arc4random() % 255 / 255.0;
    CGFloat blue = arc4random() % 255 / 255.0;
    
    
    
    NSString *r = [NSString stringWithFormat:@"%f", red];
    NSString *g = [NSString stringWithFormat:@"%f", green];
    NSString *b = [NSString stringWithFormat:@"%f", blue];
    
    
    lastColor = [NSString stringWithFormat:@"(%@,%@,%@)", r, g, b];
    
    
    UIColor *color = [UIColor colorWithRed:red green:green blue:blue alpha:1.0];
    _lblCirculo.backgroundColor = color;
    
}

//Mostrar un alert view con el contenido de Nombre Telefono y color
- (IBAction)showAlertWithNameandPhone:(id)sender {
    
    //Ocultar  teclado
    [self.view endEditing:YES];
    
    NSString *lblCircleContain = @"No hay circulo";
    
     NSString *namePhone = @"";
    
    if(_switchOffOn.on){
        
        if(lastColor == NULL){
            lastColor = @"(0,0,0)";
        }
        
        lblCircleContain = lastColor;
    }
    
    NSString *name =  _txtName.text;
    NSString *phone = _txtPhone.text;
    
    
    if(name == NULL){
      name= @"";
    }
    
    if(phone == NULL){
        phone= @"";
    }
    
    
    
    namePhone = [NSString stringWithFormat:@"%s:%@%s:%@","Nombre ", name, " Telefono ", phone];
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:lblCircleContain message:namePhone preferredStyle:UIAlertControllerStyleAlert];
    
    [alertController addAction:[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil]];
    
    [self presentViewController:alertController animated:YES completion:nil];

    
  
}







- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
