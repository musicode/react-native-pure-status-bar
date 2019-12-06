#import "RNTStatusBar.h"

@implementation RNTStatusBar

- (dispatch_queue_t)methodQueue {
  return dispatch_get_main_queue();
}

static BOOL RNTViewControllerBasedStatusBarAppearance() {
  static BOOL value;
  static dispatch_once_t onceToken;
  dispatch_once(&onceToken, ^{
    value = [[[NSBundle mainBundle] objectForInfoDictionaryKey:
              @"UIViewControllerBasedStatusBarAppearance"] ?: @YES boolValue];
  });

  return value;
}

RCT_EXPORT_MODULE(RNTStatusBar);

RCT_EXPORT_METHOD(setStyle:(NSString *)style animated:(BOOL)animated) {

  if (RNTViewControllerBasedStatusBarAppearance()) {
    RCTLogError(@"RNTStatusBar module requires that the \
                UIViewControllerBasedStatusBarAppearance key in the Info.plist is set to NO");
  } else {

    UIStatusBarStyle barStyle = UIStatusBarStyleDefault;

    if ([style isEqualToString:@"light"]) {
      barStyle = UIStatusBarStyleLightContent;
    }

    [RCTSharedApplication() setStatusBarStyle:barStyle animated:animated];

  }

}

RCT_EXPORT_METHOD(setHidden:(BOOL)hidden withAnimation:(NSString *)animation) {

  if (RNTViewControllerBasedStatusBarAppearance()) {
    RCTLogError(@"RNTStatusBar module requires that the \
                UIViewControllerBasedStatusBarAppearance key in the Info.plist is set to NO");
  } else {

    UIStatusBarAnimation barAnimation = UIStatusBarAnimationNone;

    if ([animation isEqualToString:@"fade"]) {
      barAnimation = UIStatusBarAnimationFade;
    }
    else if ([animation isEqualToString:@"slide"]) {
      barAnimation = UIStatusBarAnimationSlide;
    }

    [RCTSharedApplication() setStatusBarHidden:hidden withAnimation:barAnimation];

  }

}

RCT_EXPORT_METHOD(setNetworkActivityIndicatorVisible:(BOOL)visible) {
  RCTSharedApplication().networkActivityIndicatorVisible = visible;
}

RCT_EXPORT_METHOD(setNavigationBarColor:(NSString *)color) {

  // android only

}

@end
