FROM imma/habitat

RUN hab ring key generate hello

RUN head -1 /init.sh > /init.sh.head
RUN cp init.sh /init.sh.tail
COPY init.sh /init.sh.body
RUN cat /init.sh.head /init.sh.body /init.sh.tail | /bin/sed "s/[\r\n]*$/\n/" > /init.sh
RUN chmod 755 /init.sh
