#import "T1Array.h"

@implementation T1Array

// Complete the following fuction
- (NSArray *)convertToHappy:(NSArray *)sadArray {
    NSMutableArray *to_mutable = [NSArray copy];
    for (size_t i = 1; i < [to_mutable count] - 1; ++i) {
        int is_sad = [[to_mutable objectAtIndex:(i - 1)] intValue] + [[to_mutable objectAtIndex: (i + 1)] intValue],
        current_el = [[to_mutable objectAtIndex: i] intValue];
        
        if (is_sad < current_el) {
            [to_mutable removeObjectAtIndex : i];
        }
    }
    NSArray *result = [to_mutable copy];
    
    return @[result];
}

@end
