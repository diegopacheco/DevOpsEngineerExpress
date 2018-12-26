import os

f = os.popen('hostname -i')
r = f.read()
print("Host: ", r)

f = os.popen('echo "2*3" | bc')
r = f.read()
print("2 x 3 == ", r)

