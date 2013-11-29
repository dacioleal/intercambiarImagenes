//
//  ViewController.m
//  pruebaLayer
//
//  Created by Dacio Leal Rodriguez on 25/11/13.
//  Copyright (c) 2013 Dacio Leal Rodriguez. All rights reserved.
//

#import "ViewController.h"
#import "AnimacionGiro.h"


@interface ViewController ()


@end

@implementation ViewController

@synthesize capaSuperior, capaInferior, tigreImage, florImage;


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.layer.backgroundColor = [UIColor blackColor].CGColor;
    
    florImage = [UIImage imageNamed:@"flor_azul.jpg"];
    capaInferior = [CALayer layer];
    
    capaInferior.bounds = CGRectMake(0, 0, 150, 150);
    capaInferior.position = CGPointMake(CGRectGetMidX(self.view.bounds), CGRectGetMidY(self.view.bounds));
    capaInferior.anchorPoint = CGPointMake(0.5, 0.5);
    capaInferior.borderColor = [UIColor whiteColor].CGColor;
    capaInferior.borderWidth = 4.0;
    capaInferior.contents = (id) florImage.CGImage;
    
    [self.view.layer addSublayer:capaInferior];

	
    
    tigreImage = [UIImage imageNamed:@"tigre.jpg"];
    capaSuperior = [CALayer layer];
   
    capaSuperior.bounds = CGRectMake(0, 0, 150, 150);
    capaSuperior.position = CGPointMake(CGRectGetMidX(capaInferior.bounds),CGRectGetMidY(capaInferior.bounds));
    capaSuperior.anchorPoint = CGPointMake(0.5, 0.5);
    capaSuperior.borderColor = [UIColor whiteColor].CGColor;
    capaSuperior.borderWidth = 4.0;
    capaSuperior.contents = (id) tigreImage.CGImage;
    
    [capaInferior addSublayer:capaSuperior];
        
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)cambiarImagen:(id)sender {
    
    AnimacionGiro *animacionGiro = [[AnimacionGiro alloc] init];
    [animacionGiro animarCapa:capaSuperior andCapa:capaInferior inView:self];
    
//    CALayer *temp = [CALayer layer];
//    temp = capaSuperior;
//    capaSuperior = capaInferior;
//    capaInferior = temp;
    
    
}



@end





















