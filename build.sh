#!/bin/bash

ndk-build
mv libs/armeabi-v7a/ExtractKeyMaster .
rm libs -rf
rm obj -rf