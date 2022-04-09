//
//  Stk.hpp
//  STK
//
//  Created by Kota Nakano on 4/9/22.
//
#ifndef Stk_hpp
#define Stk_hpp
#import<Foundation/Foundation.h>
float Stk_sampleRate(void const*__nonnull const);
void Stk_setSampleRate(void const*__nonnull const, float sampleRate);
void Stk_inRange(void const*__nonnull const, float value, float min, float max);
#endif /* Stk_hpp */
