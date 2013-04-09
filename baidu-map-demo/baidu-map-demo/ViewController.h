//
//  ViewController.h
//  baidu-map-demo
//
//  Created by AnyDATA-LBS-TZQ on 13-4-8.
//  Copyright (c) 2013年 AnyDATA-LBS-TZQ. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BMapKit.h"

@interface ViewController : UIViewController <BMKMapViewDelegate>
{
    IBOutlet BMKMapView *_mapView;
}

@end
