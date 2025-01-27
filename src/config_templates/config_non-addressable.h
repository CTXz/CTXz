  /*
   * Copyright (C) 2020  Patrick Pedersen

   * This program is free software: you can redistribute it and/or modify
   * it under the terms of the GNU General Public License as published by
   * the Free Software Foundation, either version 3 of the License, or
   * (at your option) any later version.

   * This program is distributed in the hope that it will be useful,
   * but WITHOUT ANY WARRANTY; without even the implied warranty of
   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   * GNU General Public License for more details.

   * You should have received a copy of the GNU General Public License
   * along with this program.  If not, see <https://www.gnu.org/licenses/>.
   * 
   * Author: Patrick Pedersen <ctx.xda@gmail.com>
   * Description: Configuration file for the Not-so-Tiny dimmer firmware.
   * 
   */

#include <stdlib.h>

#include "conifg_enums.h"

#include "ws2812.h"
#include "strip.h"
#include "patch_macros.h"

//////////////////////////////
// Non-Addressable RGB Strip
//////////////////////////////

#define STRIP_TYPE NON_ADDR

#define NON_ADDR_STRIP_R PB0 // Red LED pin (must support PWM)
#define NON_ADDR_STRIP_G PB1 // Green LED pin (must support PWM)
#define NON_ADDR_STRIP_B PB4 // Blue LED pin (must support PWM)

//////////////////////////////
// WS2812
//////////////////////////////

// #define STRIP_TYPE WS2812

// #define WS2812_DIN PB0                          // WS2812 DIN pin
// #define WS2812_PIXELS 35                        // !! UPDATE THIS !! Number of pixels on the WS2812 strip
// #define WS2812_COLOR_ORDER GRB                  // Order in which color should be parsed to the strip (Most WS2812 strips use BGR)
// #define WS2812_RESET_TIME  30                   // Time required for the WS2812 to reset
//                                                 // If runtime between strip writes exceeds the 
//                                                 // necessary reset time, this may be set to 0

//////////////////////////////
// Potentiometer
//////////////////////////////

// Potentiometer input ADMUX mask
#define BRIGHTNESS_POT_ADMUX_MSK (X << MUX0)|\
                                 (X << MUX1)|\
                                 (X << MUX2)|\
                                 (X << MUX3)
                                 
#define ADC_AVG_SAMPLES 255                                   // Max 255 - Number of samples used to determine the average potentiometer value.
                                                              // Increase this if the LED strip is noisy, especially at lower settings.
                                                              // Higher values will reserve more runtime
                                                              // Set to <= 1 or comment out to disable

// #define POT_LOWER_BOUND 0                                  // Max 255 - Any potentiometer value lower or equal to the lower bound will disable the strip
                                                              // Set to 0 or comment out to disable

//////////////////////////////
// Push Button
//////////////////////////////

#define BTN PB2                                                // Push button pin

#define BTN_DEBOUNCE_TIME 100                                  // ms - Time to wait for button to debounce. Increasing this will reduce false trigger due to
                                                               // bouncing, but add a slight delay to color toggling.
                                                               // Set to 0 or comment out to disable
                                                
#define BTN_MIN_RELEASED_READS 300000                          // Reduce the read of false releases when holding down noisy push buttons. If your strip randomly
                                                               // toggles while holding the button, set this value higher. Increasing this will add a delay to
                                                               // button releases. Set to <= 1 or comment out to disable. 

//////////////////////////////
// Patches
//////////////////////////////

// For a list of available patches, please refer to the
// patch_macros.h header

#define NUM_PATCHES 9 // Max 10 (To increase, add cases to update_strip() in main.c)

#define PATCH_0 PATCH_SET_ALL(255, 0, 0)                       // Red
#define PATCH_1 PATCH_SET_ALL(0, 255, 0)                       // Green
#define PATCH_2 PATCH_SET_ALL(0, 0, 255)                       // Blue
#define PATCH_3 PATCH_SET_ALL(255, 255, 0)                     // Yellow
#define PATCH_4 PATCH_SET_ALL(0, 255, 255)                     // Cyan
#define PATCH_5 PATCH_SET_ALL(255, 0, 255)                     // Purple
#define PATCH_6 PATCH_SET_ALL(255, 255, 255)                   // White
#define PATCH_7 PATCH_ANIMATION_RAINBOW_POT_CTRL               // Rainbow fade
#define PATCH_8 PATCH_ANIMATION_BREATHE_RAINBOW_POT_CTRL(10)   // Rainbow breathe
