# Use the Rust official image as the base image
FROM rust:latest AS builder

# Create a new app directory and copy the Cargo.toml and Cargo.lock files into it
WORKDIR /app
COPY Cargo.toml Cargo.lock ./

# Copy the source code into the app directory
COPY src ./src

# Build the dependencies
RUN cargo build --release



# Build the application with the `--release` flag
RUN cargo build --release

# Use the Alpine Linux image as the base image for the final container
FROM ubuntu:latest

# Copy the compiled executable from the builder container to the final container
COPY --from=builder /app/target/release/app /usr/local/bin/

# Set the command to run when the container starts
CMD ["app"]
