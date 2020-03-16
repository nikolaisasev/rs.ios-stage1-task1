#import "MiniMaxArrayConverter.h"

@implementation MiniMaxArrayConverter

// Complete the convertFromArray function below.
- (NSArray<NSNumber*>*)convertFromArray:(NSArray<NSNumber*>*)array {
    NSMutableArray <NSNumber*>* temp_arr;
    
    for (size_t i = 0; i < [array count]; ++i) {
        NSInteger *sum = 0;
        for (size_t j = 0; [array count]; ++j) {
            if (i != j) sum += [[array objectAtIndex:(j)] intValue];
        }
        [temp_arr addObject:@(i)];
    }
    NSNumber* min = [temp_arr valueForKeyPath:@"@min.self"];
    NSNumber* max = [temp_arr valueForKeyPath:@"@max.self"];
    
    NSMutableArray <NSNumber*>* result = [NSMutableArray arrayWithObjects:min, max, nil];
    
    return @[result];
}

@end
