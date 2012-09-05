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
					break;
				case "green":
					myColorObj.r = 100;
					myColorObj.g = 255;
					myColorObj.b = 100;
					break;
				case "blue":
					myColorObj.r = 100;
					myColorObj.g = 100;
					myColorObj.b = 255;
					break;
				case "customRange":
					HEXtoRGB.convert(hex);
					myColorObj.r = HEXtoRGB.convert(hex).red;
					myColorObj.g = HEXtoRGB.convert(hex).green;
					myColorObj.b = HEXtoRGB.convert(hex).blue;
					break;
			}
			
			randomizeColor();
			
			return RGBtoHEX.convert(myColorObj);
		}
		
		private function randomizeColor():void{
			for(var i:* in myColorObj){
				var channel:Number = myColorObj[i];
				var randomize:Number = minColorChannel + Math.random() * (maxColorChannel-minColorChannel);
				channel += (Math.round(Math.random()) ? randomize : -randomize);
				myColorObj[i] = Math.max(0, Math.min(channel, 255));
			}
		}
		
	}
}