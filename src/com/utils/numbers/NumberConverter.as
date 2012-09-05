/**
 *
 * @author Marcelo Duende
 * @company TBWA/CHIAT/DAY
 * @license MIT
 *
 */

package com.utils.numbers
{
	public class NumberConverter
	{
		
		/**
		 * 
		 * @param degrees
		 * @return radians
		 * 
		 */		
		public static function degreesToRadians(degrees:Number):Number{
			return degrees * ( Math.PI / 180);
		}
		
		/**
		 * 
		 * @param radians
		 * @return degrees
		 * 
		 */		
		public static function radiansToDegrees(radians:Number):Number{
			return radians * (180 / Math.PI);
		}
		
		
		/**
		 * 
		 * @param secs
		 * @return the milliseconds into the seconds 
		 * 
		 */		
		public static function secondsToMilliseconds(seconds:Number):Number{
			return seconds * 1000;
		}
		
		/**
		 * 
		 * @param milli
		 * @return the milliseconds converted to seconds
		 * 
		 */		
		public static function millisecondsToSeconds(milliseconds:Number):Number{
			return milliseconds / 1000;
		}
		
		
		/**
		 * 
		 * @param _number
		 * @return the number in money concurrency 
		 * 
		 */		
		public static function numberToCurrency(_number:Number):String{
			var _currency:String = _number.toString();
			var _length:Number = _number.toString().length;
			var _tempString:String = new String();
			var _index:int = _length - 3;
			if(_length > 3){
				for(var i:int = _length; i >= 0; i--){
					if(i == _index && i > 0){
						_tempString =  "," + _currency.charAt(i) + _tempString;
						_index = _index - 3;
					} else {
						_tempString =  _currency.charAt(i) + _tempString;
					}
				}
				_currency = _tempString + ".00";
			} else {
				_currency = _currency + ".00";
			}
			return _currency;
		}
		
		
		
	}
}