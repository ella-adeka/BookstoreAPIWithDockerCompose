# BOOKSTORE API WITH DOCKER COMPOSE
This is a simple Bppkstore API using Docker Compose. The application consists of two services: A backend service running a Python Django application and a database service using PostgreSQL.

**The aim of this project is to understand how to define and manage multi-service applications using a simple configuration file. It will help to grasp the basic concepts of service orchestration, networking, and volume management in Docker Compose.**

## Steps to create the project
1. Create a project directory
    - Navigate to the project directory.

2. Create a docker-compose.yml to define the services, networks, and volumes for the app
    - Define the services
        - backend
        - database
    - Configure the services to use the appropriate Docker images for each service.

3. Configure the backend service
    - Specify the image to use (Python), the entrypoint cmd to run the Django application, and any necessary environment variables or volumes.

4. Configure the database service
        - Specify the image PostgreSQL image, and any necessary environment variables or volumes.

5. Define the networks and volumes
    - Define the network in the `docker-compose.yml` file to allow communication between the services.
    - Create any necessary volumes to store data persistently, such as PostgreSQL data.

6. Build and run the services
    - Open the terminal or cmd-line in the project directory.
    - Run the `docker-compose up` command to build the Docker images and start the services.
    - Monitor the terminal output to ensure that the services are running correctly.

7. Test the application
    - Access the Bookstore API in the web browser to make API requests to the backend service.


## Results
