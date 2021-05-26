fcl make -D %1 %1
bzip2 -v -v %1.fcl
chmod 0777 %1.fcl.bz2

if exist %1.fcl.bz2 rm -rf %1