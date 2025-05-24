# pull a base image which gives all required tools and libraries
FROM openjdk:17-jdk-alpine

# Creates and sets /app as the current directory inside the container.
WORKDIR /app

# Copies Main.java from your local machine’s src/ folder to the container’s /app/ directory.
COPY src/Main.java /app/Main.java

# Compile the Java file
RUN javac Main.java

# run when the container starts
CMD ["java","Main"]
