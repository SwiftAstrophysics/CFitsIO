CFitsIO
=======

This package allows Swift programs to import the [cfitsio](http://heasarc.gsfc.nasa.gov/docs/software/fitsio/fitsio.html) library. 

In order for Swift to be able to import the library, it must be installed on the system.

Note on Using Xcode
-------------------

Currently SPM does not add the necessary build settings when generating the Xcode project. To fix building in Xcode add the following to the build settings:

**Search Paths/Library Search Paths:**
Add the location of the cfitsio library to the library search paths. For example, if the library is installed via homebrew: `"/usr/local/Cellar/cfitsio/<cfitsio version>/lib"`

**Swift Compiler/Search Paths/Import Paths:**
Add the location of the module map for cfitsio: `${SRCROOT}/Packages/CFitsIO-<CFitsIO version>`


MacOS Installation Instructions
-------------------------------

[Original Page](http://heasarc.gsfc.nasa.gov/docs/software/fitsio/fitsio_macosx.html)

**Compile From Source**
By default, the CFITSIO library will install as a "Universal Binary" (i.e. 32- and 64-bit compatible) under Mac OS X when built in the standard ("GNU-like") way, i.e.:

```
$ tar xzf cfitsio_latest.tar.gz
$ cd cfitsio/
$ ./configure
$ make
$ make install
```

**MacPorts**
If you have MacPorts installed, you may install the MacPorts CFITSIO simply with the terminal command

```
$ sudo port install cfitsio +universal
```

**Homebrew**
If you have Homebrew installed, you may install the Homebrew CFITSIO simply with the terminal command

```
$ brew install cfitsio

```

Unix Installations Instructions:
-------------------------------

[Original Page](http://heasarc.gsfc.nasa.gov/docs/software/fitsio/quick/node3.html)

First, you should download the CFITSIO software and the set of example FITS utility programs from the web site at http://heasarc.gsfc.nasa.gov/fitsio. The example programs illustrate how to perform many common types of operations on FITS files using CFITSIO. They are also useful when writing a new program because it is often easier to take a copy of one of these utility programs as a template and then modify it for your own purposes, rather than writing the new program completely from scratch.

To build the CFITSIO library on Unix platforms, `untar' the source code distribution file and then execute the following commands in the directory containing the source code:

```
$ ./configure [--prefix=/target/installation/path]
$ make           (or 'make shared')
$ make install   (this step is optional)
```

The optional 'prefix' argument to configure gives the path to the directory where the CFITSIO library and include files should be installed via the later 'make install' command. For example,

```
./configure --prefix=/usr1/local
```

will cause the 'make install' command to copy the CFITSIO libcfitsio file to /usr1/local/lib and the necessary include files to /usr1/local/include (assuming of course that the process has permission to write to these directories).

Pre-compiled versions of the CFITSIO DLL library are available for PCs. On Macintosh machines, refer to the README.MacOS file for instructions on building CFITSIO using CodeWarrior.

Any programs that use CFITSIO must of course be linked with the CFITSIO library when creating the executable file. The exact procedure for linking a program depends on your software environment, but on Unix platforms, the command line to compile and link a program will look something like this:

```
gcc -o myprog myprog.c -L. -lcfitsio -lm -lnsl -lsocket
```

You may not need to include all of the 'm', 'nsl', and 'socket' system libraries on your particular machine. To find out what libraries are required on your (Unix) system, type 'make testprog' and see what libraries are then included on the resulting link line.