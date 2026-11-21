# practice-mlops

## Build the Docker image

From the project directory, run:

```bash
docker build -t practice-mlops .
```

## Run the container

```bash
docker run -d --name practice-mlops -p 8080:8080 practice-mlops
```

The application will be available at `http://localhost:8080`.

## Stop the container

Run:

```bash
docker stop practice-mlops
```

## Remove the container

Run:

```bash
docker rm practice-mlops
```

## Remove the image

Run:

```bash
docker rmi practice-mlops
```
