<h1>Numbers</h1>
<h2>NumberConverter.as</h2>


<h1>Methods</h1>

* <strong>degreesToRadians</strong> - Number(); Returns a radian value.
* <strong>radiansToDegrees</strong> - Number(); Returns a degree value.
* <strong>secondsToMilliseconds</strong> - Number(); Returns milliseconds.
* <strong>millisecondsToSeconds</strong> - Number(); Returns seconds.
* <strong>numberToCurrency</strong> - Number(); Returns concurrency.

<p>Converting a number to concurrency</p>
	NumberConverter.numberToCurrency(2); // returns 2.00
	NumberConverter.numberToCurrency(12342); //returns 12,342.00
	NumberConverter.numberToCurrency(200000000); // returns 200,000,000.00


------------------------------------------------------------------------------------------------------------------------------






<h2>MathUtils.as</h2>


<p>Measuring percentage</p>
	MathUtils.getPercentage(3521, 33); // output is 1172.493. Eg: 33% of 3521 = 1172.493.

<p>Getting angle between two points</p>
	MathUtils.getAngle(new Point(0, 0), new Point(100, 10)); // output is 5.710593137499642.

<p>Getting distance between two points</p>
	MathUtils.getDistance(new Point(0, 0), new Point(100, 100)) // output is 141.4213562373095.

<p>Getting average between a bulk of numbers</p>
	var v:Vector.<Number> = new Vector.<Number>();			
	v.push(0);
	v.push(0);
	v.push(0);
	v.push(10);
	v.push(10);
	MathUtils.getAverage(new Vector.<Number>) // output is 4;

<p>Snapping a number to the closest interval</p>
	MathUtils.snapTo(26, 50) // outputs 50
	MathUtils.snapTo(24, 50) // outputs 0


<h1>Methods</h1>

* <strong>getPercentage</strong> - Number(); Returns the percentage of a number.
* <strong>getAngle</strong> - Number(); Returns the angle of two points.
* <strong>getDistance</strong> - Number(); Returns the distance in Number between two points.
* <strong>getAverage</strong> - Number(); Returns average result.
* <strong>snapTo</strong> - Number(); Returns the nearest number to the gap or it's multiples. Gap acts as an interval.


With all that done, you're good to mess around. Have a nice coding.

------------------------------------------------------------------------------------------------------------------------------
