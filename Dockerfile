version: '3.8'

services:
  app:
    build:
      context: .
      dockerfile: Dockerfile
    ports:
      - "8080:8080"  # App runs on port 8080 inside the container
    depends_on:
      - db
    volumes:
      - .:/app

  db:
    image: postgres:latest
    container_name: postgres
    environment:
      POSTGRES_USER: ${POSTGRES_USER}
      POSTGRES_PASSWORD: ${POSTGRES_PASSWORD}
      POSTGRES_DB: ${POSTGRES_DB}
    ports:
      - "5432:5432"  # PostgreSQL default port
    volumes:
      - postgres_data:/var/lib/postgresql/data

volumes:
  postgres_data:
