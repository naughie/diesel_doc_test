FROM rust:buster

WORKDIR /usr/src/app

COPY . .

RUN echo '//! Test of documentation with [`tokio`]' >src/lib.rs && \
    echo 'tokio = { version = "1", features = [] }' >>Cargo.toml

RUN cargo doc --no-deps
