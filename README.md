
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

The setup was tested on Ubuntu 24.04 (AWS EC2).

Default ports 5000 (API) and 27017 (MongoDB) are open in EC2 security group.

Screenshots 

1 mongodb and app container 
2 app and db connectivity
3 mongodb logs
<img width="1356" height="659" alt="Screenshot (55)" src="https://github.com/user-attachments/assets/8bd26377-364f-48aa-9ca2-883d1a792fe6" />
<img width="1366" height="715" alt="Screenshot (52)" src="https://github.com/user-attachments/assets/76e818b0-a763-44a3-9ee4-11db63307836" />
<img width="1366" height="715" alt="Screenshot (51)" src="https://github.com/user-attachments/assets/e42c1ed3-41b2-42f0-b088-6f0c4be52e57" />


