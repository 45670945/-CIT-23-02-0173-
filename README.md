# Web App for Flask + Redis (Visit Counter)

- This project is a straightforward Dockerized web application that keeps track of page views. It makes use of:

- A Python web server called Flask one Redis key-value store (where the counter is stored) Docker containers for durability and isolation.


# Conditions for Deployment

Make sure your system has the following installed before deploying:

- **Docker** (28.3.3 ,build 980b856) → Docker(https://docs.docker.com/get-docker/) should be installed.

- The installation of **Docker Compose** (v2.39.1) can be found at https://docs.docker.com/compose/install/.

- **Git** (optional, for repository cloning)


# Application Description

**This app:**

- Shows the number of times a webpage has been visited.

- Redis is used to maintain the count even after restarting the containers.

- A Docker volume is used to store Redis data.

- Both services are linked together using a Docker network.


# Network and Volume Setup

**Network:**

- `app-network`: A unique Docker bridge network that facilitates communication between the Redis and Flask containers.

**Volume:**

- To ensure that the counter value is retained when containers are restarted, a named Docker volume called `redis-data` is used to store Redis data.


# Container Configuration:

**Flask App Container:**

- The image was created using the local `Dockerfile`.
   mapped to host port `5000` - exposed port: `5000`.
- Environmental Factors:
    Redis_Host = redis
    `REDIS_PORT=6379`
- Requires the `redis` service.

**This is the Redis Container:**

- The picture is `redis:alpine`.
    Port Exposed: `6379`
- The `redis-data` volume contains the data.


# Container List:

- `flask-app`role is  Launches the web application Flask redis      
- The `Redis` is key-value database is run. 


# Instructions:  

- First, Make scripts executable:

**chmod +x *.sh** 

run in terminal.

- The application should be prepared

**./prepare-app.sh**

This script creates the necessary volumes and builds the Docker image.

- Launch the application by executing

**./start-app.sh**

All containers are started in the background using this script.

- Use **./stop-app.sh** to pause the application.

All containers that are currently executing are stopped by this script without being deleted.

- Remove the application by executing

**./remove-app.sh**

This script eliminates all app-related volumes, networks, and containers.

**Getting to the App**

After it is finished, launch your browser and go to:

**http://localhost:5000**

A counter that rises with each page refresh will be visible to you.


