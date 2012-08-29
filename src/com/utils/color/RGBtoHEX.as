/**
 *
 * @author Marcelo Duende
 * @company TBWA/CHIAT/DAY
 * @license MIT
 *
 */

package com.utils.color
{
	public class RGBtoHEX
	{
		public static function convert(colorObj:Object):Number{
			return(colorObj.r<<16 | colorObj.g<<8 | colorObj.b);
		}
	}
}