# kfs -- disk file system

Kfs is the venerable Plan 9 file server. Kfs is superceded by cwfs on 9front.

The port exists primarily to facilitate data extraction from systems which use or used kfs at some point within history.

## Build

	mk

## Install

	mk install

## Systems that use kfs(4)

- Inferno OS through 4e
- Plan 9 through 4e
- Akaros

## Limitations

Too many to count, but:

- p9sk1 for auth
- no fsck
- very sensitive to not being halted properly
