# kernel-graduation-project

## Network Task Requirements Document


### 1. Objective
The primary objective of this network task is to analyze network traffic using Wireshark and automate specific tasks with a Bash script, generating a summary report.


### 2. Scope
1. Capture network traffic using Wireshark.
2. Develop a Bash script to analyze the captured data.
3. Extract relevant information like total packets, protocols, and top source/destination IP addresses.
4. Generate a summary report based on the analysis.


### 3. Prerequisites
1. Wireshark installed.
2. Permission to capture network traffic.
3. Basic Bash scripting knowledge.


### 4. Wireshark Capture
1. Start Wireshark and capture network traffic.
2. Save the captured data in a pcap file (e.g., your_capture_file.pcap).



## 5. Bash Script
1. Create a Bash script named analyze_traffic.sh.
* Use the script to:
a. Specify the path to the Wireshark pcap file.
b. Analyze the data to identify patterns.
c. Extract information like total packets, protocols, etc.
d. Generate a summary report.



### Hints:

1. Research Wireshark command-line tools like tshark for packet analysis.
2. Use filters to focus on HTTP (http) and HTTPS/TLS (tls) protocols.
3. Explore options for counting packets, extracting IP addresses, and generating summary statistics.

### 6. Output
The Bash script should output a summary report containing identified patterns and key statistics.




### 🏁🏁🏁🏁 Bash script startup code.


```bash
#!/bin/bash

# Bash Script to Analyze Network Traffic

# Input: Path to the Wireshark pcap file
pcap_file= # capture input from terminal.

# Function to extract information from the pcap file
analyze_traffic() {
    # Use tshark or similar commands for packet analysis.
    # Hint: Consider commands to count total packets, filter by protocols (HTTP, HTTPS/TLS),
    # extract IP addresses, and generate summary statistics.

    # Output analysis summary
    echo "----- Network Traffic Analysis Report -----"
    # Provide summary information based on your analysis
    # Hints: Total packets, protocols, top source, and destination IP addresses.
    echo "1. Total Packets: [your_total_packets]"
    echo "2. Protocols:"
    echo "   - HTTP: [your_http_packets] packets"
    echo "   - HTTPS/TLS: [your_https_packets] packets"
    echo ""
    echo "3. Top 5 Source IP Addresses:"
    # Provide the top source IP addresses
    echo "[your_top_source_ips]"
    echo ""
    echo "4. Top 5 Destination IP Addresses:"
    # Provide the top destination IP addresses
    echo "[your_top_dest_ips]"
    echo ""
    echo "----- End of Report -----"
}

# Run the analysis function
analyze_traffic
```
#### 🗒️ 🗒️ 🗒️ 🗒️Expected Output:

```txt
----- Network Traffic Analysis Report -----
1. Total Packets: 1000
2. Protocols:
   - HTTP: 600 packets
   - HTTPS/TLS: 400 packets

3. Top 5 Source IP Addresses:
   - 192.168.1.1: 300 packets
   - 192.168.1.2: 200 packets
   - ...

4. Top 5 Destination IP Addresses:
   - 10.0.0.1: 400 packets
   - 10.0.0.2: 300 packets
   - ...

----- End of Report -----


```

#### 🗒️  🗒️  🗒️  🗒️ My Output:

```txt



Network Traffic Analysis Report
=============================
Total Packets: 285

Protocol Statistics:

===================================================================
Protocol Hierarchy Statistics
Filter: 

eth                                      frames:285 bytes:161221
  llc                                    frames:3 bytes:180
    stp                                  frames:3 bytes:180
  ip                                     frames:277 bytes:160777
    icmp                                 frames:10 bytes:740
    tcp                                  frames:177 bytes:103702
      tls                                frames:102 bytes:97077
        tcp.segments                     frames:34 bytes:48044
          tls                            frames:31 bytes:44330
    udp                                  frames:90 bytes:56335
      dns                                frames:12 bytes:1173
      quic                               frames:78 bytes:55162
        quic                             frames:12 bytes:15528
          quic                           frames:9 bytes:11646
  arp                                    frames:5 bytes:264
===================================================================

Top 5 Source IP Addresses:
118   192.168.1.17
99    172.217.19.36
30    142.250.201.42
9     142.250.201.10
8     

Top 5 Destination IP Addresses:
158   192.168.1.17
71    172.217.19.36
21    142.250.201.42
8     66.102.1.84
8     
Analysis complete.
```

