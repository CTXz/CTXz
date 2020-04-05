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
   * Description: Hardware abstraction routines for the LED strip
   * 
   */

#include <stdlib.h>
#include <string.h>
#include <math.h>

#include "ws2812.h"
#include "strip.h"

void inline rgb_apply_brightness(RGB_t rgb, uint8_t brightness)
{
        rgb[R] = round(((double)brightness/255) * (double)rgb[R]);
        rgb[G] = round(((double)brightness/255) * (double)rgb[G]);
        rgb[B] = round(((double)brightness/255) * (double)rgb[B]);
}

void inline strip_apply_brightness(strip *strp, uint8_t brightness)
{
        for (uint16_t i = 0; i < strp->n_substrips; i++) 
                rgb_apply_brightness(strp->substrips[i].rgb, brightness);
}

void inline strip_cpy(strip *dst, strip *src)
{
        dst->substrips = malloc(sizeof(substrip) * src->n_substrips);
        dst->n_substrips = src->n_substrips;
        memcpy(dst->substrips, src->substrips, sizeof(substrip) * dst->n_substrips);
}

void inline strip_free(strip *strp)
{
        free(strp->substrips);
}

void inline strip_set_all(RGB_ptr_t rgb, uint8_t brightness, uint16_t pixels)
{
        RGB_t rgb_cpy;
        memcpy(&rgb_cpy, rgb, sizeof(RGB_t));
        rgb_apply_brightness(rgb_cpy, brightness);
  
        ws2812_prep_tx();
        while (pixels--) {
                ws2812_tx_byte(rgb_cpy[WS2812_WIRING_RGB_0]);
                ws2812_tx_byte(rgb_cpy[WS2812_WIRING_RGB_1]);
                ws2812_tx_byte(rgb_cpy[WS2812_WIRING_RGB_2]);
        }
        ws2812_end_tx();
}

void inline strip_set(strip strp, uint8_t brightness)
{
        strip strp_cpy;
        strip_cpy(&strp_cpy, &strp);
        strip_apply_brightness(&strp_cpy, brightness);

        ws2812_prep_tx();
        for (uint16_t i = 0; i < strp_cpy.n_substrips; i++) {
                for (uint16_t j = 0; j < strp_cpy.substrips[i].length; j++) {
                        ws2812_tx_byte(strp_cpy.substrips[i].rgb[WS2812_WIRING_RGB_0]);
                        ws2812_tx_byte(strp_cpy.substrips[i].rgb[WS2812_WIRING_RGB_1]);
                        ws2812_tx_byte(strp_cpy.substrips[i].rgb[WS2812_WIRING_RGB_2]);
                }
        }
        ws2812_end_tx();

        strip_free(&strp_cpy);
}