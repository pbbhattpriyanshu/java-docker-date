# Java Docker Date

A minimal Java application that prints the current date and demonstrates running Java in Docker (OpenJDK 17).

## Project structure
- `dockerfile` - Dockerfile used to build the Docker image (file is named `dockerfile` in this repo).
- `src/index.java` - Java source file (declares `package src;`, class `index`).

## Build

Build the Docker image (explicit Dockerfile name is required here):

```bash
# Use the provided Dockerfile (filename is lowercase in this repo)
docker build -t java-docker-date -f dockerfile .
```

Tip: rename `dockerfile` to `Dockerfile` to use Docker's default filename and simplify the command.

## Run

Run the container:

```bash
docker run --rm java-docker-date
```

## Run locally (without Docker)

Compile and run the program locally:

```bash
javac src/index.java
java src.index
```

## Expected output

```
Hello, Docker! Today's date is: YYYY-MM-DD
```

## Troubleshooting

- If you see an error like `Could not find or load main class index`, note that the class is declared in the `src` package. Either run it with `java src.index` (as shown above) or update the Dockerfile to run the fully qualified class name:

```dockerfile
# change CMD to:
CMD ["java", "src.index"]
```

- The image uses `openjdk:17-jdk-alpine` during build; ensure your local Java version is compatible if running outside Docker.

