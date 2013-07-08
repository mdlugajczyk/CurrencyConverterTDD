//
//  AppDelegateTests.m
//  CurrencyConverterTDD
//
//  Created by mdlugajczyk on 08.07.2013.
//  Copyright (c) 2013 Marcin Długajczyk. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>
#import "AppDelegate.h"
#import "CurrencyConverterViewController.h"

#define HC_SHORTHAND
#import <OCHamcrest/OCHamcrest.h>

@interface AppDelegateTests : SenTestCase

@end

@implementation AppDelegateTests

- (void)testAppDelegate_ShouldSetCorrectRootViewController
{
    // given
    AppDelegate *sut = [AppDelegate new];
    
    // when
    [sut application:nil didFinishLaunchingWithOptions:nil];
    
    // then
    assertThat([sut.window rootViewController], instanceOf([CurrencyConverterViewController class]));
    
}

@end
