</$objtype/mkfile

TARG=exsort\
	format\
	kfscmd\
	mbr\
	mkext\
	mkfs\
	partfs\

DIRS=\
	9660\
	kfs\
	prep\

OFILES=

BIN=/$objtype/bin/disk

UPDATE=\
	mkfile\
	${TARG:%=%.c}\
	/sys/man/8/prep\
	/sys/man/8/mkfs\
	${TARG:%=/386/bin/disk/%}\

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
