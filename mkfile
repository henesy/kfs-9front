</$objtype/mkfile

TARG=kfscmd\

DIRS=\
	kfs\

OFILES=

BIN=/$objtype/bin/disk

MAN = /sys/man/8/

MANFILES = kfscmd.man

UPDATE=\
	mkfile\
	${TARG:%=%.c}\
	${TARG:%=/$objtype/bin/disk/%}\

</sys/src/cmd/mkmany

all:V:	all-kfs

install:V:	install-kfs ksync

clean:V:	clean-kfs

nuke:V:		nuke-kfs

installall:V:	installall-kfs

installman:
	cp kfscmd.man $MAN/kfscmd
	cp kfs/kfs.man /sys/man/4/kfs

%-kfs:V:
	for(i in $DIRS) @{
		cd $i
		mk $MKFLAGS $stem
	}

ksync:
	cp ksync.rc $BIN/ksync

$O.format: /$objtype/lib/libdisk.a
