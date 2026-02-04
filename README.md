Docker React App - Codin 1
Description

anchal_site

This project sets up a React development environment using Docker.
The application displays an <h1> tag with the text "Codin 1" when running in the browser.

Requirements

Docker Desktop installed and running

How to Run the Application
1. Build the Docker Image

Open a terminal and navigate to the project folder, then run:

docker build -t joshi_anchal_coding_assignment11 .

2. Run the Docker Container

If a container with the same name already exists, remove it first:

docker rm -f joshi_anchal_coding_assignment11


Now run the container:

docker run --name joshi_anchal_coding_assignment11 -p 7775:7775 joshi_anchal_coding_assignment11

3. Confirm the Container Is Running

To check running containers:

docker ps


To view container logs:

docker logs joshi_anchal_coding_assignment11

4. Open the Application in a Browser

Open your browser and go to:

http://127.0.0.1:7775


You should see:

Codin 1

5. Stop the Container

To stop the running container, press CTRL + C
or run:

docker stop joshi_anchal_coding_assignment11