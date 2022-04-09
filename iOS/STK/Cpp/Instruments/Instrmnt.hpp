//
//  Instrmnt.hpp
//  STK
//
//  Created by Kota Nakano on 4/9/22.
//

#ifndef Instrmnt_hpp
#define Instrmnt_hpp
float Instrmnt_tick(void const*__nonnull const);
void Instrmnt_noteOn(void const*__nonnull const, float frequency, float amplitude);
void Instrmnt_noteOff(void const*__nonnull const, float amplitude);
#endif /* Instrmnt_hpp */
