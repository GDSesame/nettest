//
//  Networkapiclient.h
//  NetworkTest
//
//  Created by GD on 2019/4/18.
//  Copyright © 2019 GD. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Networkapiclient : NSObject

+(instancetype)shareclient;

-(void)getrequestwithapidetail:(APIScheme)apidetail
                       parames:(id)parames
                       success:(void(^)(NSURLResponse *response))success
                       failure:(void(^)(NSError *error))failure;

-(void)postrequestwiyhdetail:(APIScheme)apidetail
                     parames:(id)parames
                     success:(void(^)(NSURLResponse *response))success
                     failure:(void(^)(NSError *error))failure;

@end

NS_ASSUME_NONNULL_END
