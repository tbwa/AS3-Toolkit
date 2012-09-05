/**
 *
 * @author Marcelo Duende
 * @company TBWA/CHIAT/DAY
 * @license MIT
 *
 */

package com.utils.color
{
	public class Colors
	{
		
		private var minColorChannel:Number = 5;
		private var maxColorChannel:Number = 50;
		private var myColorObj:Object = {};
		
		public function randomColor(tone:String = "globalRange", hex:uint = 123456789123456789):uint{
			switch (tone){
				case "globalRange":
					return Math.random() * 0xFFFFFF;
					break;
				case "red":	
					myColorObj.r = 255;
					myColorObj.g = 100;
					myColorObj.b = 100;
					randomizeColor(myColorObj, minColorChannel, maxColorChannel);
					break;
				case "green":
					myColorObj.r = 100;
					myColorObj.g = 255;
					myColorObj.b = 100;
					randomizeColor(myColorObj, minColorChannel, maxColorChannel);
					break;
				case "blue":
					myColorObj.r = 100;
					myColorObj.g = 100;
					myColorObj.b = 255;
					randomizeColor(myColorObj, minColorChannel, maxColorChannel);
					break;
				case "customRange":
					HEXtoRGB.convert(hex);
					myColorObj.r = HEXtoRGB.convert(hex).red;
					myColorObj.g = HEXtoRGB.convert(hex).green;
					myColorObj.b = HEXtoRGB.convert(hex).blue;
					randomizeColor(myColorObj, minColorChannel, maxColorChannel);
					break;
			}
			
			return RGBtoHEX.convert(myColorObj);
		}
		
		
		private function randomizeColor(colorObj:Object, min:Number, max:Number):Object{
			for(var i:* in colorObj){
				var channel:Number = colorObj[i];
				var randomize:Number = min + Math.random() * (max-min);
				channel += (Math.round(Math.random()) ? randomize : -randomize);
				colorObj[i] = Math.max(0, Math.min(channel, 255));
			}
			return colorObj;
		}
		
		
		
		
	}
}