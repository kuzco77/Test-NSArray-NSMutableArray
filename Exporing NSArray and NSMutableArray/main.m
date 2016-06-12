//
//  main.m
//  Exporing NSArray and NSMutableArray
//
//  Created by Chu Nam Anh on 6/11/16.
//  Copyright © 2016 Chu Nam Anh. All rights reserved.
//

#import <Foundation/Foundation.h>



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        NSArray *a = [NSArray arrayWithObjects:@"object 1",@"object 2",@"holy hell",nil];
        
        NSMutableArray *b = [[NSMutableArray alloc] init];
        NSDate *now = [NSDate date];
        NSDate *yesterday = [now dateByAddingTimeInterval:-24.0*60.0*60.0];
        NSArray *datalist = [NSArray arrayWithObjects:now,yesterday, nil];
        
        // Cach dung NSArray
        [a containsObject:@"object 2"] ? NSLog(@"Yes") : NSLog(@"no");
        NSLog(@"So phan tu trong mang la: %ld",[a count]);
        NSLog(@"Phan tu cuoi cung : %@",[a lastObject]);
        for (int i=0;i < [a count];i++)
        {
            NSLog(@" Phan tu thu %d la : %@",i+1,[a objectAtIndex:i]);
        }
        
        // Cach dung NSMutable Array
        [b addObjectsFromArray:a];
        for (int i=0;i<[datalist count];i++)
        {
            [b addObject:[datalist objectAtIndex:i]];
        }
        for (int i=0;i<[b count];i++)
        {
            NSLog(@" Phan tu thu %d la : %@",i+1,[b objectAtIndex:i]);
        }
    }
    return 0;
}
