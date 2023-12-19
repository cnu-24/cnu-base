# Container Images for Codespaces Devcontainers

To create a new container with a modified conda env:
- Create a new branch (the branch name will become the container image tag later).
- Edit the `environment.yml` file to adjust to the new conda env.
- In the workshop/tutorial/etc modify `.devcontainer/devcontainer.json`, changing the value associated to `"image"` to `ghcr.io/cnu-23/cnu-python-base:<branch-name>`

## Initial setup

- Edit `environment.yml` appropriately
- Edit Workflows repository
- `docker build -t pypr-base .`
- `docker images`, get IMAGE ID
- `docker tag IMAGE-ID ghrc.io/pypr23/pypr-base:latest`
- `docker push ghcr.io/pypr23/pypr-base:latest`
- GH settings:
    - Link this repo to package
    - Organisation settings:
        - Packages > Allow members to create internal packages
        - Actions > Give this repo's actions write permissions (authorise at org level first)
    - Repo settings: visibility > internal
