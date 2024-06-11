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

# quarantine a file
```sh
sudo xattr -r -d com.apple.quarantine ~/Tools/path/to/the/folder
```
