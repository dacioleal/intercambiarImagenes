//
//  ViewController.h
//  pruebaLayer
//
//  Created by Dacio Leal Rodriguez on 25/11/13.
//  Copyright (c) 2013 Dacio Leal Rodriguez. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) CALayer *capaSuperior;
@property (strong, nonatomic) CALayer *capaInferior;
@property (strong, nonatomic) UIImage *tigreImage;
@property (strong, nonatomic) UIImage *florImage;

- (IBAction)cambiarImagen:(id)sender;


@end
