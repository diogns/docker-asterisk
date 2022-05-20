docker exec -it asterisk_docker_v1 bash


/etc/init.d/asterisk stop
/etc/init.d/asterisk start 
/etc/init.d/asterisk status

asterisk -r
sip show peers
exit

