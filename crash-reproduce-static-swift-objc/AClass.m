//
//  AClass.m
//  crash-reproduce-static-swift-objc
//
//  Created by Thomas Harada on 2/2/16.
//  Copyright © 2016 NCR. All rights reserved.
//

#import "AClass.h"

NSString *k_str = @"INITIAL_VALUE";

@implementation AClass

+ (void)createNSMutableStringAndAssignToRandomStaticLocation {
  // Uncomment this instead to make it work:
  // k_str = [[[NSMutableString alloc] initWithString:@"hi"] copy];
  k_str = [[NSMutableString alloc] initWithString:@"hi"];
}
@end
