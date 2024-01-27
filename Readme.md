# Dockerized Django, Nginx, and PostgreSQL Project Boilerplate

This boilerplate provides a ready-to-use backend stack with Django, Nginx, and PostgreSQL, all containerized using Docker Compose and a Makefile for convenience.

**Caution:** Please exercise caution when using the Makefile, particularly with the `clean` and `fclean` commands. These commands use the `docker system prune` command, which can remove all unused containers, networks, and images from your system. If you are unfamiliar with the implications of this command, it is recommended to avoid using `make clean` or `make fclean`.

## Getting Started

1. Update the `.env.dev` and `.env.prod` files with your credentials (I pushed .env files as an example how will it look like, however it's a dump act to push your .env* files to your repos, please make sure to add them to the .gitignore for your own security).
2. Ensure you are in the root of the repository.
3. Run the following command: `make start` (this will run the project in production mode).
4. Visit [http://localhost:1337/](http://localhost:1337/) or [http://localhost:1337](http://localhost:1337) to ensure everything is working well.

Enjoy developing your awesome projects!

**Disclaimer:** This boilerplate is provided as-is, I built it by following this article: https://testdriven.io/blog/dockerizing-django-with-postgres-gunicorn-and-nginx/
, and I am not responsible for any legal, ethical, or security-related issues that may arise from its use. Users are solely responsible for ensuring compliance with applicable laws, ethical standards, and security best practices in their use of this repository.

_Note: This boilerplate is intended for legitimate and ethical use in software development projects._
