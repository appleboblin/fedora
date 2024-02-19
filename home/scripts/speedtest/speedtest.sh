#!/bin/bash
# output file name
CURRENTDATE=`date +"%Y%m%d-%H%M"`
SPEED='_speedtest.csv'
OUTPUT_FILE="${CURRENTDATE}${SPEED}"
# set csv header
speedtest-cli --csv-header >> $OUTPUT_FILE
# test counter
counter=0
# remaining timer
sleep_timer=30
minutes=$(( sleep_timer / 60 ))
remaining_seconds=$(( sleep_timer % 60 ))
# Run the speed test continuously and output the results to a CSV file
while true; do
    ((counter ++))
    echo "Test $counter..."
    speedtest-cli --csv >> $OUTPUT_FILE
    #speedtest-cli --csv | awk -F',' '{printf "%s,%s,%0.2f Mbit/s,%0.2f Mbit/s\n", $4,$6,$7/1000000,$8/1000000}' >> $OUTPUT_FILE
    #echo "testtt" >> $OUTPUT_FILE
    echo -ne "Done, next test is in $minutes minutes and $remaining_seconds seconds\033[0K\r"
    # sleep $sleep_timer
    # Loop that updates the output every second
    prompt_timer=$sleep_timer
    while [ $prompt_timer -gt 0 ]; do
        # Wait for 1 second
        sleep 1

        # Decrement the number of seconds and update the minutes and remaining seconds
        (( prompt_timer-- ))
        minutes=$(( prompt_timer / 60 ))
        remaining_seconds=$(( prompt_timer % 60 ))

        # Output the updated result in the format "X minutes Y seconds"
        echo -ne "Done, next test is in $minutes minutes and $remaining_seconds seconds\033[0K\r"
    done
    echo
done