#!/bin/bash

# Check if the user provided a file
if [ -z "$1" ]; then
  echo "please insert path of the file as shown: 
        ./network_analysis.sh <filepath>"
  exit 1
fi

PCAP_FILE=$1

# Ensure the file exists
if [ ! -f "$PCAP_FILE" ]; then
  echo "File $PCAP_FILE does not exist."
  exit 1
fi

# Extract total number of packets
total_packets=$(tshark -r "$PCAP_FILE" | wc -l)

# Extract protocol statistics
protocol_stats=$(tshark -r "$PCAP_FILE" -q -z io,phs )

# Extract top 5 source IPs
top_src_ips=$(tshark -r "$PCAP_FILE" -T fields -e ip.src | sort | uniq -c | sort -nr | head -n 5 | column -t -o "   ") 

# Extract top 5 destination IPs
top_dst_ips=$(tshark -r "$PCAP_FILE" -T fields -e ip.dst | sort | uniq -c | sort -nr | head -n 5 | column -t -o "   ")

# Generate the report
echo "Network Traffic Analysis Report"
echo "=============================" 
echo "Total Packets: $total_packets" 
echo "" 
echo "Protocol Statistics:" 
echo "$protocol_stats" 
echo "" 
echo "Top 5 Source IP Addresses:" 
echo "$top_src_ips" 
echo "" 
echo "Top 5 Destination IP Addresses:" 
echo "$top_dst_ips" 

# Print the summary report path
echo "Analysis complete."

                                   
