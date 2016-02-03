//
//  AClass.h
//  crash-reproduce-static-swift-objc
//
//  Created by Thomas Harada on 2/2/16.
//  Copyright © 2016 NCR. All rights reserved.
//

#import <Foundation/Foundation.h>

extern const NSString *k_str;

@interface AClass : NSObject

+ (void)createNSMutableStringAndAssignToRandomStaticLocation;

@end
