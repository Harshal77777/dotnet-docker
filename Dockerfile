

##1 Build the application

FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build

WORKDIR /app

## # Copy the project files and restore dependencies

COPY MyWebApi/*.csproj ./MyWebApi/

RUN dotnet restore MyWebApi/MyWebApi.csproj

### Copy the rest of the source code and build the project

COPY MyWebApi/. ./MyWebApi/

RUN dotnet publish MyWebApi/MyWebApi.csproj -c Release -o /app/out

##2 Run the application 

FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS runtime

WORKDIR /app

## Pulls only  compiled output from the build stage.

COPY --from=build /app/out ./


EXPOSE 5000


## define env var

ENV ASPNETCORE_URLS=http://+:5000


ENTRYPOINT ["dotnet", "MyWebApi.dll"]

