# MyWebApi - DevOps Hands-On Assessment

## 1. Overview
This project demonstrates containerizing a **.NET 8 Web API** and running it with **MongoDB** using **Docker Compose**.

The goal is to show:
- Building a .NET app using a multi-stage Dockerfile
- Connecting it with a MongoDB container
- Managing both containers via Docker Compose

---

## 2. How to Build and Run

### Step 1: Clone the Repository
```bash
git clone https://github.com/Harshal77777/dotnet-docker
cd dotnet-docker

## Step 2: Build and Run with Docker Compose
  docker-compose up --build -d

#This will:

 Build the .NET API image

 Start a MongoDB container

 Create a shared network between both

###Step 3: Verify Containers
docker-compose ps


### Step 4: Test the API
curl http://localhost:5000/weatherforecast


 Assumptions / Constraints

Both containers run inside a single Docker network created by Compose.

MongoDB runs without authentication for testing purposes.
<img width="1366" height="768" alt="Screenshot (51)" src="https://github.com/user-attachments/assets/80003fbd-a884-4ac9-816a-7d568bda8a0c" />
<img width="1366" height="768" alt="Screenshot (52)" src="https://github.com/user-attachments/assets/0f520575-ca7d-4257-af26-c659f5182d42" />
<img width="1366" height="768" alt="Screenshot (55)" src="https://github.com/user-attachments/assets/e7d47b67-5a91-498b-b149-e3af92d0ef0c" />

The setup was tested on Ubuntu 24.04 (AWS EC2).

Default ports 5000 (API) and 27017 (MongoDB) are open in EC2 security group.
