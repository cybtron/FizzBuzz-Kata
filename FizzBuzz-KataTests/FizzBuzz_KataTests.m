//
//  FizzBuzz_KataTests.m
//  FizzBuzz-KataTests
//
//  Created by Hasaan Gilani on 1/11/12.
//  Copyright (c) 2012 HG Corporation. All rights reserved.
//

#import "FizzBuzz_KataTests.h"
#import "FizzBuzzCalculator.h"

@implementation FizzBuzz_KataTests

FizzBuzzCalculator* fizzBuzzCalulator;
NSString *result;
- (void)setUp
{
    [super setUp];
    fizzBuzzCalulator = [[FizzBuzzCalculator alloc] init]; 
}

- (void)testNumberShouldReturnNumber
{
    result = [fizzBuzzCalulator calculate: 1];
    STAssertEqualObjects(result, @"1", @"test failed");
}
- (void)test3ShouldReturnFizz
{
    result = [fizzBuzzCalulator calculate: 3];
    STAssertEqualObjects(result, @"fizz", @"test failed");
}

- (void)testMultipleOf3ShouldReturnFizz
{
    result = [fizzBuzzCalulator calculate: 6];
    STAssertEqualObjects(result, @"fizz", @"test failed");
    
    result = [fizzBuzzCalulator calculate: 9];
    STAssertEqualObjects(result, @"fizz", @"test failed");
    
}

- (void)test5ShouldReturnBuzz
{ 
    result = [fizzBuzzCalulator calculate: 5];
    STAssertEqualObjects(result, @"buzz", @"test failed");
}


- (void)testMultipleOf5ShouldReturnFizz
{
    result = [fizzBuzzCalulator calculate: 10];
    STAssertEqualObjects(result, @"buzz", @"test failed");
    
    result = [fizzBuzzCalulator calculate: 20];
    STAssertEqualObjects(result, @"buzz", @"test failed");
    
    result = [fizzBuzzCalulator calculate: 25];
    STAssertEqualObjects(result, @"buzz", @"test failed");
}


- (void)testMultipleOf3And5ShouldReturnBuzz
{
    FizzBuzzCalculator* fizzBuzzCalulator = [[FizzBuzzCalculator alloc] init]; 
    result = [fizzBuzzCalulator calculate: 15];
    STAssertEqualObjects(result, @"fizzbuzz", @"test failed");
}

@end
