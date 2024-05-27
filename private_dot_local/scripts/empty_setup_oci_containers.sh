sudo usermod --add-subuids 10000-65536 $USER
sudo usermod --add-subgids 10000-65536 $USER
cat << EOF > /etc/containers/containers.conf
[containers]
netns="host"
userns="host"
ipcns="host"
utsns="host"
cgroupns="host"
log_driver = "k8s-file"
[engine]
cgroup_manager = "cgroupfs"
events_logger="file"
EOF
