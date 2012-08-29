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
		 * @param value
		 * @param percentageValue
		 * @return the percentage of any number
		 * @usage NumberConverter.percentageValue(100, 10) // output 10;
		 * 
		 */		
		public static function percentageValue(value:Number, percentageValue:Number):Number{
			return value * (percentageValue / 100);
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
		
		
		
		
	}
}