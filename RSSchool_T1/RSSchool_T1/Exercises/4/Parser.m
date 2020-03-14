#import "Parser.h"

@implementation Parser

// Complete the parseString function below.
- (NSArray <NSString*>*)parseString:(NSString*)string {
    int leftside = 0;
    int rightside = 0;
    int repeating;
    NSString *res = @"";
    NSMutableArray *newArr =  [NSMutableArray arrayWithCapacity:0];
    for (int i=0; i<=string.length-1; i++) {
        leftside = i;
        rightside = i+1;
        repeating = 0;
        if ([string characterAtIndex:leftside] == '<'){
            while ((rightside <=  string.length) && (([string characterAtIndex:rightside] !='>') || (repeating>0))){
                if ([string characterAtIndex:rightside] == '<'){
                    repeating++;
                } else
                    if ([string characterAtIndex:rightside] == '>'){
                        repeating--;
                    }
                rightside++;
            }
            if (rightside<string.length){
                NSRange range = NSMakeRange(leftside+1, rightside-leftside-1);
                res = [string substringWithRange:(range)];
            }
        }
        else  if ([string characterAtIndex:leftside] == '('){
            
            while ((rightside <=  string.length) && (([string characterAtIndex:rightside] !=')') || (repeating>0))){
                if ([string characterAtIndex:rightside] == '('){
                    repeating++;
                } else
                    if ([string characterAtIndex:rightside] == ')'){
                        repeating--;
                    }
                rightside++;
            }
            if (rightside<string.length){
                NSRange range = NSMakeRange(leftside+1, rightside-leftside-1);
                res = [string substringWithRange:(range)];
            }
        }
        else  if ([string characterAtIndex:leftside] == '['){
            while ((rightside <=  string.length) && (([string characterAtIndex:rightside] !=']') || (repeating>0))){
                if ([string characterAtIndex:rightside] == '['){
                    repeating++;
                } else
                    if ([string characterAtIndex:rightside] == ']'){
                        repeating--;
                    }
                rightside++;
            }
            if (rightside<string.length){
                NSRange range = NSMakeRange(leftside+1, rightside-leftside-1);
                res = [string substringWithRange:(range)];
            }
        }
        if (res.length >0){
            [newArr addObject:res];
            res = @"";
        }
    }
    return newArr;
}
@end
