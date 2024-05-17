## Chetsheet Mac Shortcuts

**process id for a port**
```
# will search the process id for port 8080
lsof -n -i4TCP:8080

# see all
netstat -tulpn
netstat -tulpn | grep 8080

# Kill a process
kill -9 processId
```

# quarantine a file
```sh
sudo xattr -r -d com.apple.quarantine ~/Tools/path/to/the/folder
```
