BACKUPs of VirtualHosts
=======================


- create backups of virtual-hosts living on an LVM

assumptions:
- quick recovery is more important than efficient (e.g. incremental) backups
- quick recovery is more important than browseable backups
- filesystems should be consitent :-)
- filesystems may contain sensible data, so they should probably be encrypted
  (this is esp. important if the data is backed up on a remote place where you
  don't have control over the security of the data)
- maybe we have to exclude some disks from the backup
- we assume that the backup will be small enough to fit on a file-system

idea:
- do not try to guess the disks to be backed up; have the user submit them
  manually
- create lvm-snapshots while machines are suspended, then resume machines
  immediately
- zip/encrypt lvm-snapshots and store it on the backup-server
- since LVM-snapshots have the tendency to degrade performance pretty soon, it's
  important to always start from a fresh snapshot (e.g. delete snapshots after
  they have been zipped)

backup:
- run the backup-script with the backup-target, the vmachine to backup and the
  disks to clone:
  ./virtlvm-backup /Backup/myserv1 serv1 /dev/vhosts/myserv1 /dev/vhosts/myserv1a


restore:
- TODO


TODO:
- write/test/document a restoration script
- check whether givendisk-images are actually part of the given vhost


quick performance test with a vhost 2GB LV:
time (cat /dev/vhosts/snap-myserv | gzip -c - | gpg --encrypt --recipient CF87837A --output backup/snap-myserver.img.gz.gpg)
real	2m39.814s
user	4m17.512s
sys	0m16.769s

