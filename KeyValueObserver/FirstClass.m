//
//  FirstClass.m
//  KeyValueObserver
//
//  Created by GLB-311-PC on 20/09/17.
//  Copyright © 2017 Globussoft. All rights reserved.
//

#import "FirstClass.h"

@implementation FirstClass

- (void) observeValueForKeyPath:(NSString *)keyPath
                       ofObject:(id)object
                         change:(NSDictionary<NSKeyValueChangeKey,id> *)change
                        context:(void *)context {
    
    if ([keyPath isEqualToString:@"age"]) {
        
        NSLog(@"age value changed : %@", [object valueForKey:keyPath]);
    }
}

@end
