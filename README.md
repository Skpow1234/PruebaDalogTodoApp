# TodoApp

This is a simple Todo application API built with .NET 8. The application demonstrates core business functionality and enterprise readiness features, including scalability, security, maintainability, reliability, and testing.

## Table of Contents

- [Approach to the Solution](#approach-to-the-solution)
- [Enterprise Readiness](#enterprise-readiness)
- [Instructions for Running and Testing](#instructions-for-running-and-testing)
  - [Prerequisites](#prerequisites)
  - [Running the Application](#running-the-application)
- [API Endpoints](#api-endpoints)
- [File Structure](#file-structure)

## Approach to the Solution

The solution involves building a .NET 8 REST API for a Todo application with the following characteristics:

- **Core Business Functionality**: A Todo item includes a title and a status. The status can be "Todo", "Doing", or "Done". Changing a Todo item's status to "Done" requires an additional approval process.
- **Enterprise Readiness**: The application is designed with scalability, security, maintainability, reliability, and testing in mind.

### Core Business Functionality

- **Model Definition**: The Todo item model includes an ID, title, and status.
- **Database Context**: Entity Framework Core is used to manage the database context.
- **Controller**: A Todo controller provides CRUD operations for managing Todo items.

### Enterprise Readiness

- **Scalability**: The application can be deployed using Docker and Kubernetes for scalability. It uses SQL Server for data storage.
- **Maintainability**: The application follows SOLID principles and clean architecture. Dependency injection is used for better testability and maintainability.
- **Reliability**: Logging and monitoring are implemented using Serilog and Application Insights. Retry policies and circuit breakers are used with Polly.

## Instructions for Running and Testing

### Prerequisites

- .NET 8 SDK
- Docker
- Docker Compose

### Running the Application

1. **Clone the repository**:

   ```bash
   git clone https://github.com/Skpow1234/PruebaDalogTodoApp.git
   cd TodoApp
    ```

2. **Update the connection string in appsettings.json**

    ```json
    "ConnectionStrings": {
      "DefaultConnection": "Server=db;Database=TodoDb;User=sa;Password=YourStrong!Passw0rd"
    }
    ```

3. **Build and run the application using Docker Compose:**

   ```bash
    docker-compose up --build
    ```

4. **Access the application**

    ```bash
    The API will be accessible at http://localhost:5000.
    The Swagger UI can be accessed at http://localhost:5000/swagger.
    ```

## API Endpoints

- GET /api/todo - Get all todo items
- GET /api/todo/{id} - Get a specific todo item
- POST /api/todo - Create a new todo item
- PUT /api/todo/{id} - Update a todo item
- DELETE /api/todo/{id} - Delete a todo item

## File Structure

```bash
TodoApp/
│
├── Controllers/
│   └── TodoController.cs
│
├── Data/
│   └── TodoContext.cs
│
├── Models/
│   └── TodoItem.cs
│
├── Properties/
│   └── launchSettings.json
│
├── appsettings.json
├── Program.cs
├── TodoApp.csproj
├── Dockerfile
├── docker-compose.yml
└── README.md
```
