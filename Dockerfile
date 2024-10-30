FROM ubuntu:20.04

# Install iPerf3 and clean up
RUN apt-get update && apt-get install -y \
    iperf3 \
    && rm -rf /var/lib/apt/lists/*

# Expose the default iPerf3 UDP port
EXPOSE 5201/udp

# Run iPerf3 in server mode with UDP enabled
CMD ["iperf3", "-s"]
