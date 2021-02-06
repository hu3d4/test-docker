FROM rust:1.43

WORKDIR /testdocker
COPY . .
RUN cargo build --release
RUN cargo install --path .

CMD ["testdocker"]
