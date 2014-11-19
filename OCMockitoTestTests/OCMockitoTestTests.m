//
//  OCMockitoTestTests.m
//  OCMockitoTestTests
//
//  Created by Romulo Velasquez on 11/15/14.
//  Copyright (c) 2014 PointClickCare. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>

@interface OCMockitoTestTests : XCTestCase

@end

@implementation OCMockitoTestTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)testSimpleTest
{
    NSArray *mockArray = mock([NSArray class]);
    MKTOngoingStubbing *given = given([mockArray lastObject]);
    [given willReturn:@"last"];
    assertThat([mockArray lastObject], is(@"last"));
}

@end
