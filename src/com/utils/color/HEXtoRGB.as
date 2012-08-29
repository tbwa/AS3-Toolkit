/**
 *
 * @author Marcelo Duende
 * @company TBWA/CHIAT/DAY
 * @license MIT
 *
 */

package com.utils.color
{
	public class HEXtoRGB
	{
		
		/**
		 * 
		 * @hex = hexadecimal (0xFF0000);
		 * @return = An Object, to access a property, just seek for the color 
		 * Eg: 
		 * HEXtoRGB.convert(0xFF00CC).red; // output is 255;
		 * HEXtoRGB.convert(0xFF00CC).green; // output is 0;
		 * HEXtoRGB.convert(0xFF00CC).blue; // output is 204;
		 * 
		 */
		public static function convert(hex:uint):Object
		{
			var rgbObj:Object = {
				red: ((hex & 0xFF0000) >> 16),
				green: ((hex & 0x00FF00) >> 8),
				blue: ((hex & 0x0000FF))
			};
			return rgbObj;
		}
	}
}