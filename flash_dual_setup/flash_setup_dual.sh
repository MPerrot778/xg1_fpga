#/bin/sh

if test [! -f "./timer1.bin"];
then
	echo "Timer 1 bin file missing from directory!"
fi

if test [! -f "./timer2.bin"];
then
	echo "Timer 2 bin file missing from directory!"
fi

if test [! -f "./silver.bin"];
then
	echo "Silver bitstream file missing from directory!"
fi

echo "Applying timer 1 to /dev/mtd2"
flashcp ./timer1.bin /dev/mtd2
echo "Applying Silver bitstream to /dev/mtd3"
flashcp ./silver.bin /dev/mtd3
echo "Applying timer 2 to /dev/mtd4"
flashcp ./timer2.bin /dev/mtd4