# Use the official .NET SDK image to build the app
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /app

# Copy the csproj and restore as distinct layers
COPY *.sln .
COPY TodoApp/*.csproj ./TodoApp/
RUN dotnet restore

# Copy the rest of the application code
COPY TodoApp/. ./TodoApp/

# Build the application
WORKDIR /app/TodoApp
RUN dotnet build --no-restore -c Release
RUN dotnet publish --no-build -c Release -o /app/publish

# Use the official .NET runtime image to run the app
FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS runtime
WORKDIR /app
COPY --from=build /app/publish .

# Expose the port the app runs on
EXPOSE 80

# Run the application
ENTRYPOINT ["dotnet", "TodoApp.dll"]