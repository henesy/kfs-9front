</$objtype/mkfile

TARG=kfscmd\

DIRS=\
	kfs\

OFILES=

BIN=/$objtype/bin/disk

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

%-kfs:V:
	for(i in $DIRS) @{
		cd $i
		mk $MKFLAGS $stem
	}

ksync:
	touch $BIN/ksync

$O.format: /$objtype/lib/libdisk.a
