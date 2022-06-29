# Quick reference

-	**Maintained by**: [PilotFish Technology, LLC](https://www.pilotfishtechnology.com)

-	**Where to get help**: [PilotFish Technology CMS](https://cms.pilotfishtechnology.com)

-   **Docker Images**: [Docker Hub](https://hub.docker.com/u/pilotfishtechnology)

-   **Source**: [GitHub](https://github.com/pilotfishtechnology)

# What is eiPlatform?
The eiPlatform enterprise integration solution is a complete Java framework that leverages application server technology, web services and industry XML standards to enable the deployment of internal and external system interfaces better, faster and less expensively than ever before possible. When combined with the graphical IDE component, the eiConsole, the developer has the most comprehensive solution for enterprise integration.

[www.pilotfishtechnology.com/enterprise-integration-platform/](https://www.pilotfishtechnology.com/enterprise-integration-platform/)

![logo](https://www.pilotfishtechnology.com/wp-content/uploads/2015/03/pilotfish-logo.png)

## Using a custom `Dockerfile`

1. Install Docker

	- [Docker Install documentation](https://docs.docker.com/install/)

2. Clone the main branch of the [repository](https://github.com/pilotfishtechnology/eiplatform_rootless_docker_example)

	```bash
	cd /opt
	git clone https://github.com/pilotfishtechnology/eiplatform_rootless_docker_example
	cd eiplatform_rootless_docker_example
	```

3. Log in to the [Customer Portal](https://customerportal.pilotfishtechnology.com/portal/login.html) and download your latest license file.

4. Copy in your license file (`/license/pflicense.key`) with your latest routes (`eip-root`).

5. Build the container

	```bash
	docker build -t my-custom-eiplatform-app .
	```

6. Adjust the folder permissions for the rootless container

	```bash
	chown -R 888:888 /opt/eiplatform_rootless_docker_example
	```

7. Bring up your stack by running

	```bash
	docker run -it -d --name eiplatform \
		-v $(pwd)/logs:/opt/pilotfish/logs \
		-v $(pwd)/license:/opt/pilotfish/license \
		-v $(pwd)/eip-root:/opt/pilotfish/eip-root \
		-v $(pwd)/config:/opt/pilotfish/config \
		-p 8080:8080 \
		my-custom-eiplatform-app
	```

When your docker container is running, connect to it on port `8080` to access the eiplatform instance.

[http://127.0.0.1:8080/eip/](http://127.0.0.1:8080/eip/)
