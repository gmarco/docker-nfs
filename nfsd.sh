echo "Starting NFS in the background..."
/usr/sbin/rpc.nfsd --debug 8 --no-udp --no-nfs-version 2 --no-nfs-version 3
echo "Exporting File System..."
if /usr/sbin/exportfs -rv; then
  /usr/sbin/exportfs
else
  echo "Export validation failed, exiting..."
  exit 1
fi
echo "Starting Mountd in the background..."These
/usr/sbin/rpc.mountd --debug all -F --no-udp --no-nfs-version 2 --no-nfs-version 3
