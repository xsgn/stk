//
//  Guitar.cpp
//  STK
//
//  Created by Kota Nakano on 4/9/22.
//
extern "C" {
    #include "Guitar.hpp"
}
#include"../../../../include/Guitar.h"
using namespace stk;
#define STK(ref) reinterpret_cast<Guitar*>(const_cast<void*>(ref))
void const*const __nonnull Guitar_new() {
    return reinterpret_cast<void*>(new Guitar);
}
void Guitar_delete(void const*__nonnull const ref) {
    delete STK(ref);
}
