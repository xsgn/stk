//
//  Stk.cpp
//  STK
//
//  Created by Kota Nakano on 4/9/22.
//
extern "C" {
    #include"Stk.hpp"
}
#include"../../../../include/Stk.h"
using namespace stk;
#define STK(ref) reinterpret_cast<Stk*>(const_cast<void*>(ref))
float Stk_sampleRate(void const*__nonnull const ref) {
    return STK(ref)->sampleRate();
}
void Stk_setSampleRate(void const*__nonnull const ref, float sampleRate) {
    STK(ref)->setSampleRate(sampleRate);
}
void Stk_inRange(void const*__nonnull const ref, float value, float min, float max) {
    STK(ref)->inRange(value, min, max);
}
