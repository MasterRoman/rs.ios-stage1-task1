#import "BillCounter.h"

@implementation BillCounter

// Complete the following fuction
- (NSString*)compareResultForBill:(NSArray<NSNumber*>*)bill notIncludingElementWithIndex:(NSInteger)index withGivenSum:(NSNumber*)sum {
    int billSum = 0;
    int wrong = 0;
    int correct = 0;
    NSString *res = @"";
    for (int i=0; i<bill.count; i++) {
        billSum += [bill[i] intValue];
    }
    wrong = billSum / 2;
    correct = billSum - [bill[index] intValue];
    if ((correct / 2) == [sum intValue]){
        res = @"Bon Appetit"; } else
        {
            wrong = [sum intValue] - correct / 2;
            res = [NSString stringWithFormat:@"%d", wrong];
        
    }
    return res;
}

@end
