//
//  LFAlert.h
//  AlertDemo
//
//  Created by archerLj on 2018/2/4.
//  Copyright © 2018年 com.bocodo.csr. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface LFAlert : NSObject

+(id)shared;
-(void)showAlertWithTitle:(NSString *)title
                  message:(NSString *)message
              cancelTitle:(NSString *)cancelTitle
             cancelAction:(void (^)(void))cancelAction
                  okTitle:(NSString *)okTitle
                 okAction:(void (^)(void))okAction;

@end
