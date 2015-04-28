# telehash-crypto-engine

This package is a backend for [Telehash](http://telehash.org/) cipher
suites. This crypto-engine has two purposes:

1. To perform cryptographic operations with long-time asymmetric
   telehash identity keys.

2. To provide a key-store implementation for said keys.

Telehash is a lightweight protocol and can run on very low-power,
resource constrained devices lacking a file system. Thus, this package
needs to support this configuration as well as a full-feature linux
distribution.

# Telehash CS support

Initially, support for Telehash cipher suites is limited to
[1a](https://github.com/telehash/telehash.org/blob/master/v3/e3x/cs/1a.md)
and
[1b](https://github.com/telehash/telehash.org/blob/master/v3/e3x/cs/1b.md).

# Building

This package is an autotools project and best built on a linux
machine. The idea is to easily support cross-compiling of various
platforms including AVR, bare-metal ARM, and the common popular PC
architectures. The build will produce a static library that you'll be
hopefully able to link into your project.

For example, to cross-compile this project for an ARM Linux machine
use:

```
./configure --build=`./config.guess` --host=arm-linux-gnueabi
```

For bare-metal arm, it appears that a different GNU arm toolchain must
be used. There seems to be two options:

1. [GNU Tools for ARM Embedded Processors](https://launchpad.net/gcc-arm-embedded)
2. [Terry Guo's Port of #1](https://launchpad.net/~terry.guo/+archive/ubuntu/gcc-arm-embedded)

# Hardware support

One important goal of this project is to support embedded
cryptographic hardware. On AVRs for example, a NIST P-256 signature
can take 2-3 seconds which is largely unacceptable for
Telehash. Dedicate hardware significantly reduces this time and
provides key storage.

# Key storage

AVRs really only have an EEPROM with which to work. The problem here
is two-fold: one, how to provide some amount of key protection for the
EEPROM (if that's in the threat model) and two: devising a format that
won't require writes back to the EEPROM every access as this will
increase the wear on the EEPROM and decrease the life of the device.
