FROM debian:stable-slim
#step 1 debian-asterisk
RUN apt update
RUN apt install  net-tools
RUN apt install  vim -y
RUN ifconfig
RUN apt install asterisk -y

#RUN cat /etc/asterisk/extensions.conf
COPY ./asterisk/extensions.conf /etc/asterisk/extensions.conf

#[public]
#exten => 1001,1,Dial(SIP/1001)
#exten => 1002,1,Dial(SIP/1002)

#RUN cat /etc/asterisk/sip.conf
COPY ./asterisk/sip.conf /etc/asterisk/sip.conf

#[1001]
#type=friend
#username=1001
#secret=1001
#context=public
#host=dynamic
#callerid="max"
#mailbox=1001@default



#[1002]
#type=friend
#username=1002
#secret=1002
#context=public
#host=dynamic
#callerid="phil"
#mailbox=1002@default

#RUN /etc/init.d/asterisk stop
RUN /etc/init.d/asterisk start
#RUN /etc/init.d/asterisk status

#RUN asterisk -r
#RUN sip show peers
#RUN exit


#step 2 debian-voip

ENTRYPOINT /bin/bash
