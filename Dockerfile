FROM ubuntu:bionic-20190718

# Set shell
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

RUN \
    apt-get update \
    \
    && apt-get install -y --no-install-recommends \
        adb=1:7.0.0+r33-2 \
        android-libadb=1:7.0.0+r33-2 \
        android-libbase=1:7.0.0+r33-2 \
        android-libcutils=1:7.0.0+r33-2 \
        android-liblog=1:7.0.0+r33-2 \
    \
    && rm -fr \
        /tmp/* \
        /var/{cache,log}/* \
        /var/lib/apt/lists/*
EXEC
