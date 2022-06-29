# Build

```bash
docker build -t my-custom-eiplatform-app .
```

# Start

```bash
docker run -it -d --name eiplatform \
  -v $(pwd)/logs:/opt/pilotfish/logs \
  -v $(pwd)/license:/opt/pilotfish/license \
  -v $(pwd)/eip-root:/opt/pilotfish/eip-root \
  -v $(pwd)/config:/opt/pilotfish/config \
  -p 8080:8080 \
  my-custom-eiplatform-app
```

# Stop

```bash
docker stop eiplatform
```

# View Logs

```bash
docker logs -f eiplatform
```

# Upgrade

```bash
docker stop eiplatform
docker rm eiplatform
docker rmi pilotfishtechnology/eiplatform
docker rmi my-custom-eiplatform-app
docker pull pilotfishtechnology/eiplatform
docker run -it -d --name eiplatform \
  -v $(pwd)/logs:/opt/pilotfish/logs \
  -v $(pwd)/license:/opt/pilotfish/license \
  -v $(pwd)/eip-root:/opt/pilotfish/eip-root \
  -v $(pwd)/config:/opt/pilotfish/config \
  -p 8080:8080 \
  my-custom-eiplatform-app
```