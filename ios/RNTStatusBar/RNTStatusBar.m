#import "RNTStatusBar.h"

@implementation RNTStatusBar

- (dispatch_queue_t)methodQueue {
    return dispatch_get_main_queue();
}

RCT_EXPORT_MODULE(RNTStatusBar);

RCT_EXPORT_METHOD(setStyle:(NSString *)style animated:(BOOL)animated) {

    UIStatusBarStyle barStyle = UIStatusBarStyleDefault;

    if ([style isEqualToString:@"light"]) {
        barStyle = UIStatusBarStyleLightContent;
    }

    [RCTSharedApplication() setStatusBarStyle:barStyle animated:animated];
    
}

RCT_EXPORT_METHOD(setHidden:(BOOL)hidden withAnimation:(NSString *)animation) {

    UIStatusBarAnimation barAnimation = UIStatusBarAnimationNone;

    if ([animation isEqualToString:@"fade"]) {
        barAnimation = UIStatusBarAnimationFade;
    }
    else if ([animation isEqualToString:@"slide"]) {
        barAnimation = UIStatusBarAnimationSlide;
    }

    [RCTSharedApplication() setStatusBarHidden:hidden withAnimation:barAnimation];

}

RCT_EXPORT_METHOD(setNetworkActivityIndicatorVisible:(BOOL)visible) {
    RCTSharedApplication().networkActivityIndicatorVisible = visible;
}

@end
