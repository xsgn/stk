//
//  Instrmnt.cpp
//  STK
//
//  Created by Kota Nakano on 4/9/22.
//
extern "C" {
    #include "Instrmnt.hpp"
}
#include"../../../../include/Instrmnt.h"
using namespace stk;
#define STK(ref) reinterpret_cast<Instrmnt*>(const_cast<void*>(ref))
float Instrmnt_tick(void const*__nonnull const ref) {
    return STK(ref)->tick();
}
void Instrmnt_noteOn(void const*__nonnull const ref, float frequency, float amplitude) {
    STK(ref)->noteOn(frequency, amplitude);
}
void Instrmnt_noteOff(void const*__nonnull const ref, float amplitude) {
    STK(ref)->noteOff(amplitude);
}
