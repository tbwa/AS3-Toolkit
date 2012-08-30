/**
 *
 * @author Marcelo Duende
 * @company TBWA/CHIAT/DAY
 * @license MIT
 *
 */

package com.utils.numbers
{
	import flash.geom.Point;

	public class MathUtils
	{
		/**
		 * 
		 * @param value
		 * @param percentageValue
		 * @return the percentage of any number
		 * @usage NumberConverter.percentageValue(100, 10) // output 10;
		 * 
		 */
		public static function getPercentage(_value:Number, _percentageValue:Number):Number{
			return _value * (_percentageValue / 100);
		}
		
		
		/**
		 * 
		 * @param _point1
		 * @param _point2
		 * @return degrees
		 * @usage MathUtils.getAngle(myPoint1, myPoint2); // output an angle
		 *  
		 */		
		public static function getAngle(_point1:Point, _point2:Point):Number{
			var radian:Number = Math.atan2( _point2.y - _point1.y, _point2.x - _point1.x );
			return NumberConverter.radiansToDegrees(radian);
		}
		
		
		/**
		 * 
		 * @param _x1
		 * @param _y1
		 * @param _x2
		 * @param _y2
		 * @usage MathUtils.getDistance(startPoint.x, mouseX, startPoint.y, mouseY); //output the distance in Number 
		 */		
		public static function getDistance(_x1:Number, _x2:Number, _y1:Number, _y2:Number):Number{
			var dx:Number = _x1 - _x2;
			var dy:Number = _y1 - _y2;
			return Math.sqrt(dx * dx + dy * dy);
		}
		
		
		/**
		 * 
		 * @param _list
		 * @return the average, of a sum of, all the indexes divided by the amount of indexes
		 * 
		 */		
		public static function getAverage(_list:Vector.<Number>):Number{
			var average:Number = 0;
			for each(var i:Number in _list){
				average += i;
			}
			return average / _list.length;
		}
		
	}
}