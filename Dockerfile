

##1 Build the application

FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build

WORKDIR /app

## # Copy the project files and restore dependencies

COPY *.csproj ./

RUN dotnet restore

### Copy the rest of the source code and build the project

COPY . ./

RUN dotnet publish -c Release -o /app/out

##2 Run the application 

FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS runtime
WORKDIR /app
## Pulls only  compiled output from the build stage.
COPY --from=build /app/out ./


EXPOSE 5000


## define env var

ENV ASPNETCORE_URLS=http://+:5000


ENTRYPOINT ["dotnet", "MyWebApi.dll"]

