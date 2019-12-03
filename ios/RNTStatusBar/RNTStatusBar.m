//
//  RNTStatusBar.m
//  RNTStatusBar
//
//  Created by zhujl on 2019/12/3.
//  Copyright © 2019 finstao. All rights reserved.
//

#import "RNTStatusBar.h"

@implementation RNTStatusBar

RCT_EXPORT_MODULE(RNTStatusBar);

RCT_EXPORT_METHOD(getStatusBarHeight:(RCTPromiseResolveBlock)resolve reject:(RCTPromiseRejectBlock)reject) {
    
    dispatch_async(dispatch_get_main_queue(), ^{
        
        resolve(@{
          @"height": @(RCTSharedApplication().statusBarFrame.size.height),
        });
        
    });
  
}

RCT_EXPORT_METHOD(getNavigationBarInfo:(RCTPromiseResolveBlock)resolve reject:(RCTPromiseRejectBlock)reject) {
    
    dispatch_async(dispatch_get_main_queue(), ^{
        
        resolve(@{
          @"height": @(0),
          @"visible": @(FALSE),
        });
        
    });
  
}

RCT_EXPORT_METHOD(getScreenSize:(RCTPromiseResolveBlock)resolve reject:(RCTPromiseRejectBlock)reject) {
    
    dispatch_async(dispatch_get_main_queue(), ^{
        
        CGRect bounds = UIScreen.mainScreen.bounds;
        
        resolve(@{
          @"width": @(bounds.size.width),
          @"height": @(bounds.size.height),
        });
        
    });
  
}

RCT_EXPORT_METHOD(getSafeArea:(RCTPromiseResolveBlock)resolve reject:(RCTPromiseRejectBlock)reject) {
    
    dispatch_async(dispatch_get_main_queue(), ^{
        
        if (appView != nil) {
            if (@available(iOS 11.0, *)) {
                resolve(@{
                    @"top": @(appView.safeAreaInsets.top),
                    @"bottom": @(appView.safeAreaInsets.bottom),
                    @"left": @(appView.safeAreaInsets.left),
                    @"right": @(appView.safeAreaInsets.right)
                });
                return;
            }
        }
        
        resolve(@{
            @"top": @(0),
            @"bottom": @(0),
            @"left": @(0),
            @"right": @(0)
        });
        
    });
  
}

@end
