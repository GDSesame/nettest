//
//  NetworkCommenHeader.h
//  NetworkTest
//
//  Created by GD on 2019/4/18.
//  Copyright © 2019 GD. All rights reserved.
//

#import <Foundation/Foundation.h>

#ifndef NetworkCommenHeader_h
#define NetworkCommenHeader_h


#endif /* NetworkCommenHeader_h */

typedef NS_ENUM(NSUInteger, httpType) {
    httpPost,
    httpGet
};

typedef enum : NSUInteger {
    pushdetailAPI,
    loginAPI,
    pushlistAPI,
    newsAPI,
    mylistAPI,
    friendAPI,
    studentAPI
} APIScheme;

static NSString *baseurl = @"http://www.baidu.com/";

