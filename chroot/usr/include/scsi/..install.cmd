cmd_debian/headertmp/usr/include/scsi/.install := /bin/bash scripts/headers_install.sh ./debian/headertmp/usr/include/scsi ./include/uapi/scsi scsi_bsg_fc.h scsi_netlink.h scsi_netlink_fc.h; /bin/bash scripts/headers_install.sh ./debian/headertmp/usr/include/scsi ./include/scsi ; /bin/bash scripts/headers_install.sh ./debian/headertmp/usr/include/scsi ./include/generated/uapi/scsi ; for F in ; do echo "\#include <asm-generic/$$F>" > ./debian/headertmp/usr/include/scsi/$$F; done; touch debian/headertmp/usr/include/scsi/.install
