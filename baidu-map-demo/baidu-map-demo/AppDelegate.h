//
//  AppDelegate.h
//  baidu-map-demo
//
//  Created by AnyDATA-LBS-TZQ on 13-4-8.
//  Copyright (c) 2013年 AnyDATA-LBS-TZQ. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ViewController;
#import "BMapKit.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
    BMKMapManager *_mapManager;
}

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) ViewController *viewController;

@end
