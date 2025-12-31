# Java Docker Date

This project demonstrates a simple Java application that prints the current date using Docker.

## Project Structure
- `dockerfile`: The Dockerfile used to build the Docker image.
- `index.java`: The Java source file containing the main application logic.

## Building the Docker Image
To build the Docker image, run the following command in the terminal:

```bash
docker build -t java-docker-date .
```

## Running the Docker Container
After building the image, you can run the container using:

```bash
docker run java-docker-date
```

## Output
The application will output the current date in the format:
```
Hello, Docker! Today's date is: YYYY-MM-DD
```
