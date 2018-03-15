//
//  LFAlert.m
//  AlertDemo
//
//  Created by archerLj on 2018/2/4.
//  Copyright © 2018年 com.bocodo.csr. All rights reserved.
//

#import "LFAlert.h"

typedef void(^ Action)(void);
@interface LFAlert() <UIAlertViewDelegate>
@property (copy, nonatomic) Action cancelAction;
@property (copy, nonatomic) Action okAction;
@end

@implementation LFAlert

static id _instance = nil;
+(id)shared {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[LFAlert alloc] init];
    });
    return _instance;
}

-(void)showAlertWithTitle:(NSString *)title
                  message:(NSString *)message
              cancelTitle:(NSString *)cancelTitle
             cancelAction:(void (^)(void))cancelAction
                  okTitle:(NSString *)okTitle
                 okAction:(void (^)(void))okAction {

    // 9.0之后用UIAlertController
    NSString *version = [UIDevice currentDevice].systemVersion;
    if (version.doubleValue >= 9.0) {

        UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
        
        if (cancelTitle != nil) {
            UIAlertAction *cancel = [UIAlertAction actionWithTitle:cancelTitle style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
                if (cancelAction != nil) {
                    cancelAction();
                }
            }];
            [alertVC addAction:cancel];
        }
        
        if (okTitle != nil) {
            UIAlertAction *ok = [UIAlertAction actionWithTitle:okTitle style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
                if (okAction != nil) {
                    okAction();
                }
            }];
            [alertVC addAction:ok];
        }
        [[self currentController] presentViewController:alertVC animated:YES completion:nil];
    
    // 9.0之前用UIAlertView
    } else {
        self.cancelAction = cancelAction;
        self.okAction = okAction;
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:title message:message delegate:self cancelButtonTitle:cancelTitle otherButtonTitles:okTitle, nil];
        [alert show];
    }
}

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    
    if (buttonIndex == 0) {
        if (self.cancelAction != nil) {
            self.cancelAction();
        }
    } else if (buttonIndex == 1) {
        if (self.okAction != nil) {
            self.okAction();
        }
    }
}

-(UIViewController *)currentController {
    UIWindow *keyWindow = [UIApplication sharedApplication].keyWindow;
    UIViewController *rootVC = keyWindow.rootViewController;
    while (rootVC.presentedViewController) {
        rootVC = rootVC.presentedViewController;
        
        if ([rootVC isKindOfClass:[UINavigationController class]]) {
            rootVC = [(UINavigationController *)rootVC visibleViewController];
        } else if ([rootVC isKindOfClass:[UITabBarController class]]) {
            rootVC = [(UITabBarController *)rootVC selectedViewController];
        }
    }
    return rootVC;
}
@end
