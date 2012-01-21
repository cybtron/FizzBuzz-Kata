//
//  FizzBuzzCalculator.m
//  FizzBuzzKataUsingOCunit
//
//  Created by Hasaan Gilani on 1/8/12.
//  Copyright (c) 2012 HG Corporation. All rights reserved.
//

#import "FizzBuzzCalculator.h"

@implementation FizzBuzzCalculator

-(NSString *) calculate:(int) number
{
    if (number% 3 ==0 && number % 5 == 0) {
        return @"fizzbuzz";
    }
    if (number % 5 == 0) {
        return @"buzz";
    }
    if (number%3 == 0) {
        return @"fizz";
    }
    return   [NSString stringWithFormat:@"%d", number];;
    
}
@end
