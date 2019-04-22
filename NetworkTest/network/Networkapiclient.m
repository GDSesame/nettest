//
//  Networkapiclient.m
//  NetworkTest
//
//  Created by GD on 2019/4/18.
//  Copyright © 2019 GD. All rights reserved.
//

#import "Networkapiclient.h"
#import <Foundation/Foundation.h>
#import <AFHTTPSessionManager.h>

@implementation Networkapiclient

+(instancetype)shareclient {
    static Networkapiclient *client = nil;
    static dispatch_once_t oncetoken;
    dispatch_once(&oncetoken, ^{
        client = [[Networkapiclient alloc] init];
    });
    return client;
}

-(void)getrequestwithapidetail:(APIScheme)apidetail
                 parames:(id)parames
                 success:(void(^)(NSURLResponse *response))success
                 failure:(void(^)(NSError *error))failure{
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    manager.requestSerializer.timeoutInterval = 60;
    [manager GET:[self getapidetail:apidetail] parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        success(responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        failure(error);
    }];

}

-(void)postrequestwiyhdetail:(APIScheme)apidetail
                     parames:(id)parames
                     success:(void(^)(NSURLResponse *response))success
                     failure:(void(^)(NSError *error))failure{
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    manager.requestSerializer.timeoutInterval = 60.0;
    [manager POST:[self getapidetail:apidetail] parameters:parames progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        success(responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        failure(error);
    }];
}


-(NSString *)getrequestmethed:(httpType)httptype {
    if (httptype == httpGet ) {
        return @"GET";
    } else {
        return @"POST";
    }
}

-(NSString *)getapidetail:(APIScheme)requestScheme {
    NSString *urlscheme = nil;
    switch (requestScheme) {
        case pushlistAPI:
            urlscheme = @"qwqw";
            break;
        case pushdetailAPI:
            urlscheme = @"erer";
            break;
        case friendAPI:
            urlscheme = @"rtrty";
            break;
        case studentAPI:
            urlscheme = @"ytuyu";
            break;
        default:
            urlscheme = @"yiui8u";
            break;
    }
    urlscheme = [baseurl stringByAppendingString:urlscheme];
    return urlscheme;
}

@end
