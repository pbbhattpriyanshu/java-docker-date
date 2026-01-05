# Use official OpenJDK image from Docker Hub
FROM eclipse-termurin:17-jdk-alpine

# Set working directory inside container
WORKDIR /app

# Copy Java source file into container
COPY index.java .

# Compile Java program during image build
RUN javac index.java

# Command to run when container starts
CMD ["java", "src.index"]