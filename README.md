googletest_android_ndk-build
============================

Build googletest with Android NDK.

This repository provides the way how to build googletest for Android with NDK.

googletest is Google's unit test framework for C++.

googletest: https://code.google.com/p/googletest/

How to build
------------

1. Download source code of googletest

  ```
  $ mkdir googletest
  $ cd googletest
  $ svn checkout http://googletest.googlecode.com/svn/trunk/ .
  ```

2. Copy jni directory to googletest directory
  ```
  $ cd /path/to/this/git
  $ cp -r jni googletest/
  ```
3. run ndk-build script
  ```
  $ cd googletest/
  $ ndk-build
  ```
4. You can find libgtest.a in googletest/obj/local/armeabi/libgtest.a

How to use libgtest.a
---------------------

See sample/test_project

```
$ cd sample/test_project

$ ndk-build
Compile++ thumb  : sample_code_test <= SampleCodeTestMain.cpp
Compile++ thumb  : sample_code_test <= SampleCode.cpp
Compile++ thumb  : sample_code_test <= SampleCodeTestCase.cpp
Executable     : sample_code_test
Install        : sample_code_test => libs/armeabi/sample_code_test

$ adb push  obj/local/armeabi/sample_code_test /data/local/tmp/

$ adb shell /data/local/tmp/sample_code_test
[==========] Running 1 test from 1 test case.
[----------] Global test environment set-up.
[----------] 1 test from SampleCode
[ RUN      ] SampleCode.func
[       OK ] SampleCode.func (1 ms)
[----------] 1 test from SampleCode (1 ms total)

[----------] Global test environment tear-down
[==========] 1 test from 1 test case ran. (7 ms total)
[  PASSED  ] 1 test.
```
