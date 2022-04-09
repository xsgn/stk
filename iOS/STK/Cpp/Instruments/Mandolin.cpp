//
//  Mandolin.cpp
//  STK
//
//  Created by Kota Nakano on 4/9/22.
//
extern "C" {
    #include "Mandolin.hpp"
}
#include"../../../../include/Mandolin.h"
using namespace stk;
#define STK(ref) reinterpret_cast<Mandolin*>(const_cast<void*>(ref))
void const*const __nonnull Mandolin_new() {
    return reinterpret_cast<void*>(new Mandolin(100));
}
void Mandolin_delete(void const*__nonnull const ref) {
    delete STK(ref);
}
