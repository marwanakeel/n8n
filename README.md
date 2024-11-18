# Setup n8n

Brief description of your project.

## Prerequisites

- Docker
- Docker Compose

## Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/marwanakeel/n8n.git
cd n8n
```


### 2. Create Environment Variables File

Create a `.env` file in the root directory with the following content:

```env
POSTGRES_USER=your_user
POSTGRES_PASSWORD=your_password
POSTGRES_DB=your_database
```

#### Example:

If you want to create a PostgreSQL database with the following details:

- Username: `admin`
- Password: `securepassword`
- Database Name: `my_database`

Your `.env` file should look like this:

```env
POSTGRES_USER=admin
POSTGRES_PASSWORD=securepassword
POSTGRES_DB=my_database
```

### 3. Configure Volumes

Ensure the directory for the mounted volume exists on your host machine:

```bash
mkdir -p ./data/postgres
```

### 4. Start the Application

Run the following command to start the application and PostgreSQL using Docker Compose:

```bash
docker-compose up
```

### 5. Access the Application

- **Application URL:** [http://localhost:8080](http://localhost:8080)
- **PostgreSQL:** Connect using `localhost`, `your_user`, `your_password`, and `your_database`.

### 6. Stopping the Application

To stop the application, press `Ctrl+C`. To stop and remove all containers, networks, and volumes created by `docker-compose`, use:

```bash
docker-compose down
```

---

### 7. Troubleshooting

- Ensure Docker and Docker Compose are installed.
- Verify that the `.env` file contains the correct values.

---

This structure will guide users in setting up the repository and running the project with Docker Compose. You can modify it to fit your project specifics.