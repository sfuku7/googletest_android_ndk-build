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
