//
//  ViewController.m
//  baidu-map-demo
//
//  Created by AnyDATA-LBS-TZQ on 13-4-8.
//  Copyright (c) 2013年 AnyDATA-LBS-TZQ. All rights reserved.
//

#import "ViewController.h"
#import "BMKMapView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    BMKMapView *mapView = [[BMKMapView alloc] initWithFrame:CGRectMake(0, 0, 320, 480)];
    self.view = mapView;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
