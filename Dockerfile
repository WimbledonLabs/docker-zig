FROM alpine
ARG VERSION=0.7.1
WORKDIR /root
RUN wget https://ziglang.org/download/${VERSION}/zig-linux-x86_64-${VERSION}.tar.xz && \
    tar -xf zig-linux-x86_64-${VERSION}.tar.xz && \
    rm zig-linux-x86_64-${VERSION}.tar.xz && \
    ln -s /root/zig-linux-x86_64-${VERSION}/zig /usr/bin/zig
