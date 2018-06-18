<#
1. Ping the server with 0 bytes of data and time the number of milliseconds. This value is time#1. If it is less than 10 ms, exit (assume a fast link).
2. Ping the server with 2 kilobytes (KB) of uncompressible data, and time the number of milliseconds. This value is time#2. 
    The algorithm uses a compressed .jpg file to ping the server.
3. DELTA = time#2 – time#1. This removes the overhead of session setup, with the result being equal to the time to move 2 KB of data.
4. Calculate Delta three times, adding to TOTAL each DELTA value. Use the following calculations:
5. TOTAL/3 = Average of DELTA in milliseconds.
6. 2 * (2 KB) * (1000 ms/sec) / DELTA Average ms = X
7. X = (4000 KB/sec) / DELTA Average
8. Z Kbps = ((4000 KB) / DELTA Average) *(8 bits/byte)
9. Z Kbps = 32000 kbps/Delta Average. 
Two KB of data have moved in each direction (this is represented by the leading factor two on the left side in step six) through each modem, 
    Ethernet card, or other device in the loop once. The resulting Z value is evaluated against the policy setting. 
    A default of less than 500 Kbps is considered a slow link; faster than 500 Kbps is a fast link.

If Z is less than 500 Kbps the connection is considered slow, otherwise it is considered fast.
#>


