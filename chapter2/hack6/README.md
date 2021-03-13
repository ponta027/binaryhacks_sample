# library

describe CMakeLitst.txt including static and shared library.


## static library

```
CMakeFiles/sample.dir/link.txt:/usr/bin/ar qc libsample.a  CMakeFiles/sample.dir/src/bar.c.o
CMakeFiles/sample.dir/link.txt:/usr/bin/ranlib libsample.a
```

## shared library

```
CMakeFiles/sample_so.dir/link.txt:/usr/bin/cc  -fPIC   -shared -Wl,-soname,libsample_so.so -o libsample_so.so CMakeFiles/sample_so.dir/src/foo.c.o 
```


## link 

```
CMakeFiles/main.dir/link.txt:/usr/bin/cc     CMakeFiles/main.dir/main.c.o  -o main -Wl,-rpath,/home/xxxxxx/binaryhacks_sample/chapter2/hack6/build -rdynamic libsample.a libsample_so.so 
```
## Symbol Table

> nm main | egrep "foo|bar" 

```
00010790 T bar
         U foo
```

fooは shared library 
bar は static library





