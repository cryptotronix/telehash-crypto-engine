AC_INIT([telehash-crypto-engine], [0.1], [bugs@cryptotronix.com], [tce],
                      [https://github.com/cryptotronix/telehash-crypto-engine])
AC_PREREQ([2.59])
AM_INIT_AUTOMAKE([1.10 -Wall no-define])
AC_CONFIG_MACRO_DIR([m4])
AC_CONFIG_HEADERS([config.h])
PKG_PROG_PKG_CONFIG
AM_PROG_AR

AC_PROG_CC
AC_PROG_CC_C_O
AM_PROG_CC_C_O
LT_INIT([])

AC_SUBST([LIBTCE_SO_VERSION], [0:0:0])
AC_SUBST([LIBTCE_API_VERSION], [0.1])

#Check for check
PKG_CHECK_MODULES([CHECK], [check >= 0.9.8])

AC_CONFIG_FILES([Makefile tce-${LIBTCE_API_VERSION}.pc:tce.pc.in src/micro-ecc/test/Makefile])

AC_OUTPUT

echo "
     $PACKAGE_NAME version $PACKAGE_VERSION
     Prefix.........: $prefix
     Debug Build....: $debug
     C Compiler.....: $CC $CFLAGS $CPPFLAGS
     C++ Compiler...: $CXX $CXXFLAGS $CPPFLAGS
     Linker.........: $LD $LDFLAGS $LIBS
"
