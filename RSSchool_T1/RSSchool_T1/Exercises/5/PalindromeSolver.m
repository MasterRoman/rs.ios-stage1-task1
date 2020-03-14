#import "PalindromeSolver.h"

@implementation PalindromeSolver

// Complete the highestValuePalindrome function below.
- (NSString *) highestValuePalindrome:(NSString *)s n:(NSNumber *)n k:(NSNumber *)k {
    int mistakes = 0;
    int zmist = 0;
    for (int i=0; i<s.length/2; i++) {
        if ([s characterAtIndex:i]!=[s characterAtIndex:([n intValue]-i-1)]){
            if (([s characterAtIndex:i]==[@'9' charValue] ) || ([s characterAtIndex:([n intValue]-i-1)]==[@'9' charValue])) {
                zmist++;
            } else {
                mistakes+=2;
                zmist++;
            }
        }
    }
    if ([k intValue]<zmist){
        return @"-1";
    }
    mistakes+=zmist/2;
    for (int i=0; i<s.length/2; i++) {
        if ([s characterAtIndex:i]!=[s characterAtIndex:([n intValue]-i-1)]){
            char first = [s characterAtIndex:i];
            char second = [s characterAtIndex:[n intValue]-i-1];
            if (([k intValue]>=2) && (mistakes>=2)  && (first != [@'9' charValue])){
              s = [s stringByReplacingCharactersInRange:NSMakeRange(i, 1) withString:@"9"];
              s = [s stringByReplacingCharactersInRange:NSMakeRange(s.length-i-1, 1) withString:@"9"];
                mistakes-=2;
            }
            else if (first>second){
                s = [s stringByReplacingCharactersInRange:NSMakeRange(s.length-i-1, 1) withString:[NSString stringWithFormat:@"%c",first]];
                
            }else{
                s = [s stringByReplacingCharactersInRange:NSMakeRange(i, 1) withString: [NSString stringWithFormat:@"%c",second]];
         
            }
        }
    }
    return s;


}

@end
