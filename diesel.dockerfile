FROM rust:buster

WORKDIR /usr/src/app

COPY . .

RUN echo '//! Test of documentation with [`diesel`]' >src/lib.rs && \
    echo 'diesel = { version = "1", features = [] }' >>Cargo.toml

RUN cargo doc --no-deps
