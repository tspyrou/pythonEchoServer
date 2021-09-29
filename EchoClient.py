import socket
import sys

# Create a TCP/IP socket
sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

# Connect the socket to the port where the server is listening
server_address = ('localhost', 50007)
print ("connecting to ", server_address)
sock.connect(server_address)

try:
    
    # Send data
    message = 'This is the message.  It will be repeated.'
    print("sending {}", message)
    sock.sendall(message.encode('utf-8'))

    # Look for the response
    amount_received = 0
    amount_expected = len(message)
    
    while amount_received < amount_expected:
        data = sock.recv(1024)
        amount_received += len(data)
        print("received {}", data.decode('ascii'))

finally:
    print("closing socket")
    sock.close()
