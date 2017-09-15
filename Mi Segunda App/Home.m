//
//  ViewController.m
//  Mi Segunda App
//
//  Created by Walter Gonzalez Domenzain on 13/09/17.
//  Copyright © 2017 wgdomenzain. All rights reserved.
//

#import "Home.h"

@interface Home ()

@end

@implementation Home

NSArray *etiquetas;
NSArray *colores;

int i;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    etiquetas = [NSArray arrayWithObjects: @"Preparando...", @"Mezclando las piezas", @"Jugando con ellas", @"Armando piezas", @"Reto completado", nil];
    colores = [NSArray arrayWithObjects: [UIColor blackColor],[UIColor greenColor],[UIColor blueColor],[UIColor orangeColor],[UIColor redColor],nil];
    i=0;
}

- (IBAction)changeButtonPressed:(id)sender {
    self.lblWelcome.text = [etiquetas objectAtIndex : i ];
    self.lblWelcome.textColor = [colores objectAtIndex : i];
    i=i+1;
    if (i>4){
        i=0;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
