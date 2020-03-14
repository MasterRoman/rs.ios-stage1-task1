#import "MiniMaxArrayConverter.h"

@implementation MiniMaxArrayConverter

// Complete the convertFromArray function below.
- (NSArray<NSNumber*>*)convertFromArray:(NSArray<NSNumber*>*)array {
    NSArray *sortedArray = [array sortedArrayUsingSelector:@selector(compare:)];
    int sumMin=0;
    int sumMax=0;
    for (int i=0; i<sortedArray.count-1; i++) {
         sumMin += [sortedArray[i] intValue];
    }
    sumMax = sumMin - [sortedArray[0] intValue] + [sortedArray[sortedArray.count-1] intValue];
    NSNumber *min = [NSNumber numberWithInt: sumMin];
    NSNumber *max = [NSNumber numberWithInt: sumMax];
    NSArray *solution = @[min,max];
    return solution;
}

@end
