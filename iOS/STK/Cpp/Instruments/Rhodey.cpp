//
//  Rhodey.cpp
//  STK
//
//  Created by Kota Nakano on 4/9/22.
//
extern "C" {
    #include "Rhodey.hpp"
}
#include"../../../../include/Rhodey.h"
using namespace stk;
#define STK(ref) reinterpret_cast<Rhodey*>(const_cast<void*>(ref))
void const*const __nonnull Rhodey_new() {
    return reinterpret_cast<void*>(new Rhodey);
}
void Rhodey_delete(void const*__nonnull const ref) {
    delete STK(ref);
}
