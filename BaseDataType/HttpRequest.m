//
//  HttpRequest.m
//  StudySwift
//
//  Created by xiuer on 16/9/12.
//  Copyright © 2016年 xiuer. All rights reserved.
//

#import "HttpRequest.h"

@implementation HttpRequest

-(void)getRequest:(NSString*)appki{

    NSURLRequest*request= [NSURLRequest requestWithURL:[NSURL URLWithString:@""]];

}

+(UInt8)sum:(UInt8)a withparm:(UInt8)b{
//    UInt8 a=12;
//    UInt8 b=255;
    UInt8 result=a+b;
    NSLog(@"%d,%d,%d",result,a,b);
    
//    float c=12;
//    NSLog(@"%d",c%12);
  
    return a+b;
}

- (NSString *)description
{
    return @"测试";
}
@end
