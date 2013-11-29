//
//  AnimacionGiro.h
//  pruebaLayer
//
//  Created by Dacio Leal Rodriguez on 26/11/13.
//  Copyright (c) 2013 Dacio Leal Rodriguez. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AnimacionGiro : NSObject

@property (weak, nonatomic) CALayer *capaArriba;
@property (weak, nonatomic) CALayer *capaAbajo;
@property (weak, nonatomic) UIViewController *vista;

- (void) animarCapa:(CALayer *)capaSuperior andCapa:(CALayer *)capaInferior inView:(UIViewController *) vistaControlador;

@end
