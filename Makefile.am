SUBDIRS = . src/micro-ecc/test
## Place generated object files (.o) into the same directory as their source
## files, in order to avoid collisions when non-recursive make is used.
AUTOMAKE_OPTIONS = subdir-objects

## Define the Data dir so we know where our data files are
AM_CFLAGS = -DDATA_DIR=\"$(pkgdatadir)\"

## Additional flags to pass to aclocal when it is invoked automatically at
## make time. The ${ACLOCAL_FLAGS} variable is picked up from the environment
## to provide a way for the user to supply additional arguments.
ACLOCAL_AMFLAGS = ${ACLOCAL_FLAGS} -I m4

libtce_la_CPPFLAGS =
libtce_la_LIBADD =

lib_LTLIBRARIES = libtce.la

libtce_la_SOURCES = src/micro-ecc/uECC.c \
                    src/micro-ecc/uECC.h

## Instruct libtool to include ABI version information in the generated shared
## library file (.so).  The library ABI version is defined in configure.ac, so
## that all version information is kept in one place.
libtce_la_LDFLAGS = -version-info $(LIBTCE_SO_VERSION) -release $(LIBTCE_API_VERSION)

## Define the list of public header files and their install location.  The
## nobase_ prefix instructs Automake to not strip the directory part from each
## filename, in order to avoid the need to define separate file lists for each
## installation directory.  This only works if the directory hierarchy in the
## source tree matches the hierarchy at the install location, however.
tce_includedir = $(includedir)/tce-$(LIBTCE_API_VERSION)
nobase_tce_include_HEADERS =

## Data files
#dist_pkgdata_DATA = data/atecc108_default.xml

tce_libincludedir = $(libdir)/tce-$(LIBTCE_API_VERSION)/include


## Install the generated pkg-config file (.pc) into the expected location for
## architecture-dependent package configuration information.  Occasionally,
## pkg-config files are also used for architecture-independent data packages,
## in which case the correct install location would be $(datadir)/pkgconfig.
pkgconfigdir = $(libdir)/pkgconfig
pkgconfig_DATA = tce-$(LIBTCE_API_VERSION).pc

## Define an independent executable script for inclusion in the distribution
## archive.  However, it will not be installed on an end user's system due to
## the noinst_ prefix.
dist_noinst_SCRIPTS = autogen.sh
