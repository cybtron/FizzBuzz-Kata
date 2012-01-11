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

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testNumberShouldReturnNumber
{
    FizzBuzzCalculator* fizzBuzzCalulator = [[FizzBuzzCalculator alloc] init]; 
    NSString* result = [fizzBuzzCalulator calculate: 1];
    STAssertEqualObjects(result, @"1", @"test failed");
}
- (void)test3ShouldReturnFizz
{
    FizzBuzzCalculator* fizzBuzzCalulator = [[FizzBuzzCalculator alloc] init]; 
    NSString* result = [fizzBuzzCalulator calculate: 3];
    STAssertEqualObjects(result, @"fizz", @"test failed");
}

- (void)testMultipleOf3ShouldReturnFizz
{
    FizzBuzzCalculator* fizzBuzzCalulator = [[FizzBuzzCalculator alloc] init]; 
    NSString* result = [fizzBuzzCalulator calculate: 6];
    STAssertEqualObjects(result, @"fizz", @"test failed");
    
    result = [fizzBuzzCalulator calculate: 9];
    STAssertEqualObjects(result, @"fizz", @"test failed");
    
}

- (void)test5ShouldReturnBuzz
{
    FizzBuzzCalculator* fizzBuzzCalulator = [[FizzBuzzCalculator alloc] init]; 
    NSString* result = [fizzBuzzCalulator calculate: 5];
    STAssertEqualObjects(result, @"buzz", @"test failed");
}


- (void)testMultipleOf5ShouldReturnFizz
{
    FizzBuzzCalculator* fizzBuzzCalulator = [[FizzBuzzCalculator alloc] init]; 
    
    NSString* result = [fizzBuzzCalulator calculate: 10];
    STAssertEqualObjects(result, @"buzz", @"test failed");
    
    result = [fizzBuzzCalulator calculate: 20];
    STAssertEqualObjects(result, @"buzz", @"test failed");
    
    result = [fizzBuzzCalulator calculate: 25];
    STAssertEqualObjects(result, @"buzz", @"test failed");
}


- (void)testMultipleOf3And5ShouldReturnBuzz
{
    FizzBuzzCalculator* fizzBuzzCalulator = [[FizzBuzzCalculator alloc] init]; 
    NSString* result = [fizzBuzzCalulator calculate: 15];
    STAssertEqualObjects(result, @"fizzbuzz", @"test failed");
}

@end
