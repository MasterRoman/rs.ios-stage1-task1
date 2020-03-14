#import "T1Array.h"

@implementation T1Array

// Complete the following fuction
- (NSArray *)convertToHappy:(NSArray *)sadArray {
    NSMutableArray *mutableArray = [sadArray mutableCopy];
    if (mutableArray.count>0) {
        for (int i=1; i<mutableArray.count-1; i++) {
            
            int sum = [mutableArray[i-1] intValue] + [mutableArray[i+1] intValue];
            if ([mutableArray[i] intValue]>sum){
                [mutableArray removeObjectsAtIndexes:[NSIndexSet indexSetWithIndex:i]];
                if (i>=2)
                {i-=2;
                }
            }
        }
    }
    return mutableArray ;
}

@end
