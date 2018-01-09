# Crystal - static build

Docker file for building static Crystal executables since I'm
too lazy to compile few missing static libraries on Arch.

```
docker run -v (pwd):/app user/crystal:latest crystal build test.cr --release --static 
```

License: CC-Zero
