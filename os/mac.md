## Chetsheet Mac Shortcuts

**process id for a port**
```
# will search the process id for port 8080
lsof -n -i4TCP:8080

# Find a LISTEN port
lsof -i -P | grep LISTEN | grep :5001

# Kill a process
kill -9 processId
```

***find all occupied port in Mac***
```sh
all_occupied_ports='netstat -vanp tcp'
```

# quarantine a file
```sh
sudo xattr -r -d com.apple.quarantine ~/Tools/path/to/the/folder
```

#Find Wifi Password connected in Mac

security find-generic-password -ga "Wifi Name" | grep "password:"
