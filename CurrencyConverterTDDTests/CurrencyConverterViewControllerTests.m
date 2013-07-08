//
//  CurrencyConverterViewControllerTests.m
//  CurrencyConverterTDD
//
//  Created by mdlugajczyk on 05.07.2013.
//  Copyright (c) 2013 Marcin Długajczyk. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>
#import "CurrencyConverterViewController_Outlets.h"

#define HC_SHORTHAND
#import <OCHamcrest/OCHamcrest.h>

@interface CurrencyConverterViewControllerTests : SenTestCase

@end

@implementation CurrencyConverterViewControllerTests

- (void)testCurrencyConverterViewController_ShouldHaveTextFiledConnected {
    // given
    CurrencyConverterViewController *sut = [[CurrencyConverterViewController alloc] init];
    
    // when
    [sut view];
    
    // then
    assertThat([sut currencyInput], is(notNilValue()));
}

@end
