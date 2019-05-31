//
//  main.m
//  simple-app
//
//  Created by Aleksei Kanatev on 26/05/2019.
//  Copyright © 2019 Aleksei Kanatev. All rights reserved.
//

#import <Foundation/Foundation.h>

        //Задание 1


        // Создаем функцию определения соответствия введенной буквы английскому алфавиту
        void checkLetter(NSString* userLetter) {
            NSArray *letterBox = [[NSArray alloc] initWithObjects: @"a", @"b", @"c", @"d", @"e", @"f", @"g", @"h", @"i", @"j", @"k", @"l", @"m", @"n", @"o", @"p", @"q", @"r", @"s", @"t", @"u", @"v", @"w", @"x", @"w", @"z", nil];
            
            BOOL isEnglish = YES;

            //пробегаемся по массиву
            for (NSMutableString *i in letterBox) {
                if (i == userLetter) {
                    isEnglish = YES;
                } else if (i != userLetter) {
                    isEnglish = NO;
                }
            }
            
            if (isEnglish == YES) {
                NSLog(@"Введенная буква есть в английском алфавите");
            } else {
                NSLog(@"Введенной буквы нет в английском алфавите");
            }
        }

        //Задание 2

        int addition(int a, int b) {
            return a + b;
        }

        int subtraction(int a, int b) {
            return a - b;
        }

        int multiplication(int a, int b) {
            return a * b;
        }

        int division(int a, int b) {
            return a / b;
        }

        int remain(int a, int b) {
            return a % b;
        }

        



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //Задание 1
        NSLog(@"Введите букву: ");
        char userCharLetter[2];
        scanf("%c", userCharLetter);
        NSString *userLetter = [NSString stringWithFormat:@"%s", userCharLetter];
        checkLetter(userLetter);
        
        
        
        //Задание 2
        int new1 = addition(3, 4);
        int new2 = subtraction(3, 2);
        int new3 = multiplication(4, 5);
        int new4 = division(6, 3);
        int new5 = remain(9, 2);
        
        NSLog(@"Результат сложения: %i", new1);
        NSLog(@"Результат вычитания: %i", new2);
        NSLog(@"Результат умножения: %i", new3);
        NSLog(@"Результат деления: %i", new4);
        NSLog(@"Результат остатка от деления: %i", new5);
        
    }
    return 0;
}

