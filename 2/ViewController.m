//
//  ViewController.m
//  2
//
//  Created by Константин Кузнецов on 26.03.2021.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *simbol = @"D";
    [self checkSimbol: simbol] ? NSLog(@"Символ %@ входит в алфавит", simbol) : NSLog(@"Символ %@ не входит в алфавит", simbol);
    
    NSInteger summ = calculate(@"+", 17, 20);
    NSLog(@"%ld", (long)summ);
    
    NSInteger surplus = calculate(@"%", 94, 13);
    NSLog(@"%ld", (long)surplus);
}

- (BOOL) checkSimbol: (NSString*) simbol{
    NSString *alphabet = @"abcdefghijklmnopqrstuvwxuz";
    
    NSString *lower = [simbol lowercaseString];
    return [alphabet rangeOfString: lower].location != NSNotFound;
}

int calculate(NSString *method, int a, int b) {
    
    if ([method isEqualToString:@"+"]) {
        return summ(a, b);
    }
    else if ([method isEqualToString:@"-"]) {
        return difference(a, b);
    }
    else if ([method isEqualToString:@"*"]) {
        return composition(a, b);
    }
    else if ([method isEqualToString:@"/"]) {
        return division(a, b);
    }
    else if ([method isEqualToString:@"%"]) {
        return surplus(a, b);
    }
    else {
        NSLog(@"Функция не знает переданный метод");
        return 0;
    }
    return summ(a, b);

}

int summ (int a, int b) {
    return a + b;
}

int difference (int a, int b){
    return a - b;
}

int composition (int a, int b){
    return a * b;
}

int division (int a, int b){
    return a / b;
}

int surplus (int a, int b){
    return a % b;
}

@end
