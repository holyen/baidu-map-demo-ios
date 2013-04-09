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
    [mapView setMapType:BMKMapTypeSatellite];//设定为卫星地图
    [mapView setMapType:BMKMapTypeTrafficOn];//打开实时路况图层
    
    //添加覆盖物:标注,层等.
    mapView.delegate = self;
    BMKPointAnnotation *annotation = [[BMKPointAnnotation alloc] init];//创建一个标注
    CLLocationCoordinate2D coor;
    coor.latitude = 39.915;
    coor.longitude = 116.404;
    annotation.coordinate = coor;
    annotation.title = @"这里是天朝的首都,cccc";
    [mapView addAnnotation:annotation];
    
//    [mapView removeAnnotation:annotation];//去除标注
    [mapView release];
    
    //添加折线
//    mapView.delegate = self;
    CLLocationCoordinate2D coors[2] = {0};
    coors[0].latitude = 39.315;
    coors[0].longitude = 116.304;
    coors[1].latitude = 39.515;
    coors[1].longitude = 116.504;
    BMKPolyline *polyline = [BMKPolyline polylineWithCoordinates:coors count:2];
    [mapView addOverlay:polyline];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma BMKMapViewDelegate - Method

- (BMKAnnotationView *)mapView:(BMKMapView *)mapView viewForAnnotation:(id<BMKAnnotation>)annotation
{
    if ([annotation isKindOfClass:[BMKPointAnnotation class]]) {
        BMKPinAnnotationView *newAnnotationView = [[[BMKPinAnnotationView alloc] initWithAnnotation:annotation
                                                                                   reuseIdentifier:@"myAnnotation"] autorelease];
        newAnnotationView.pinColor = BMKPinAnnotationColorPurple;
        newAnnotationView.animatesDrop = YES;//标注的动画效果.
        return newAnnotationView;
    }
    return nil;
}

- (BMKOverlayView *)mapView:(BMKMapView *)mapView viewForOverlay:(id<BMKOverlay>)overlay
{
    if ([overlay isKindOfClass:[BMKPolyline class]]) {
        BMKPolylineView *polylineView = [[[BMKPolylineView alloc] initWithOverlay:overlay] autorelease];
        polylineView.strokeColor = [[UIColor purpleColor] colorWithAlphaComponent:1];
        polylineView.lineWidth = 5.0;
        return polylineView;
    }
    return nil;
}

@end
