FROM alpine:3.20

ARG VERSION

RUN apk add --update --no-cache libpcap libgcc libstdc++ libretls \
  && cd /tmp \
  && wget -O /tmp/nmap.tgz https://nmap.org/dist/nmap-${VERSION}.tgz \
  && tar zxf nmap.tgz \
  && cd nmap-${VERSION} \
  && apk add --update --no-cache --virtual .build-deps \
       libpcap-dev libretls-dev lua-dev linux-headers \
       autoconf g++ libtool make automake \
  && ./configure \
       --prefix=/usr \
       --sysconfdir=/etc \
       --mandir=/usr/share/man \
       --infodir=/usr/share/info \
       --without-zenmap \
       --without-nmap-update \
       --with-openssl=/usr/lib \
       --with-liblua=/usr/include \
  && make \
  && make install \
  && apk del .build-deps \
  && rm -rf /var/cache/apk/* /tmp/nmap*

ENTRYPOINT ["/usr/bin/nmap"]
