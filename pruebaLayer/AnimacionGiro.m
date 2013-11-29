//
//  AnimacionGiro.m
//  pruebaLayer
//
//  Created by Dacio Leal Rodriguez on 26/11/13.
//  Copyright (c) 2013 Dacio Leal Rodriguez. All rights reserved.
//

#import "AnimacionGiro.h"

@interface AnimacionGiro () {
    
    
}

@end

@implementation AnimacionGiro

@synthesize capaArriba, capaAbajo, vista;


- (void) animarCapa:(CALayer *)capaSuperior andCapa:(CALayer *)capaInferior inView:(UIViewController *) vistaControlador
{
    
    
    capaArriba = capaSuperior;
    capaAbajo = capaInferior;
    vista = vistaControlador;    
    
    
    CABasicAnimation *animacionRotacionIda = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
    animacionRotacionIda.fromValue = [NSNumber numberWithFloat:0];
    animacionRotacionIda.toValue = [NSNumber numberWithFloat:2*M_PI];
    animacionRotacionIda.duration = 1.5;
    
    CABasicAnimation *animacionEscaladoIda = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
    animacionEscaladoIda.fromValue = [NSNumber numberWithFloat:1.0];
    animacionEscaladoIda.toValue = [NSNumber numberWithFloat:0.0];
    animacionEscaladoIda.duration = 1.5;
    
    CAAnimationGroup *animacionIda = [CAAnimationGroup animation];
    animacionIda.animations = [NSArray arrayWithObjects:animacionRotacionIda, animacionEscaladoIda, nil];
    animacionIda.duration = 1.5;
    
    animacionIda.delegate = self;
    
    [capaAbajo addAnimation:animacionIda forKey:@"Ida"];
    
}

- (void)animationDidStop:(CAAnimation *)theAnimation finished:(BOOL)flag
{
    
    if (flag) {
        
        static BOOL repeticion;
        if ( repeticion == YES ) {
            
            repeticion =NO;
            
        } else {
            
            repeticion = YES;
        }
        
        capaArriba.hidden = repeticion;
        
        CABasicAnimation *animacionRotacionVuelta = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
        animacionRotacionVuelta.fromValue = [NSNumber numberWithFloat:0];
        animacionRotacionVuelta.toValue = [NSNumber numberWithFloat:-2*M_PI];
        animacionRotacionVuelta.duration = 1.5;
        
        
        CABasicAnimation *animacionEscaladoVuelta = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
        animacionEscaladoVuelta.fromValue = [NSNumber numberWithFloat:0.0];
        animacionEscaladoVuelta.toValue = [NSNumber numberWithFloat:1.0];
        animacionEscaladoVuelta.duration = 1.5;
        
        
        CAAnimationGroup *animacionVuelta = [CAAnimationGroup animation];
        animacionVuelta.animations = [NSArray arrayWithObjects:animacionRotacionVuelta, animacionEscaladoVuelta, nil];
        animacionVuelta.duration = 1.5;
        [capaAbajo addAnimation:animacionVuelta forKey:@"Vuelta"];
        
    }
    
}

@end
