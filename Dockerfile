FROM alpine
ARG VERSION=0.7.1
ARG DEV_BUILD=""
WORKDIR /root
RUN if [ "$DEV_BUILD" = "" ]; \
    then \
        wget https://ziglang.org/download/${VERSION}/zig-linux-x86_64-${VERSION}.tar.xz && \
           tar -xf zig-linux-x86_64-${VERSION}.tar.xz && \
           rm zig-linux-x86_64-${VERSION}.tar.xz && \
           ln -s /root/zig-linux-x86_64-${VERSION}/zig /usr/bin/zig; \
    else \
        wget https://ziglang.org/builds/zig-linux-x86_64-${DEV_BUILD}.tar.xz && \
           tar -xf zig-linux-x86_64-${DEV_BUILD}.tar.xz && \
           rm zig-linux-x86_64-${DEV_BUILD}.tar.xz && \
           ln -s /root/zig-linux-x86_64-${DEV_BUILD}/zig /usr/bin/zig; \
    fi
