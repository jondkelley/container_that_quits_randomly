# container_that_quits_randomly

This container will sleep for env `SLEEPYTIME` seconds and then quit with env `EXITCODE`.

Default Behavior:

* If `SLEEPYTIME` is not defined, the container exits instantly.
* If `EXITCODE` is not defined, a random code between 1 and 254 is returned.

## Usage

```
docker pull jondkelley/container_that_quits_randomly:latest
docker run -e SLEEPYTIME=0 -e EXITCODE=1 -it container_that_quits_randomly:latest
```

or

```
make build
make push
```

## Run

```
docker run -e SLEEPYTIME=0 -e EXITCODE=1 -it container_that_quits_randomly:latest
```

or

```
make run
```

