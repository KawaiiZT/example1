#!/bin/bash
speedtest-cli --csv-header > speedtest_trisit.csv
for server in 18487 16061 22667 37033 65397 23295 16062 17241 37240 42132
do
	speedtest-cli --csv --server $server >> speedtest_trisit.csv
	if [ $? -ne 0 ]
	then
		echo "Error Error I can't connect it!"
	fi
done
