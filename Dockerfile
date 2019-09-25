# Python Base Image from https://hub.docker.com/r/arm32v7/python/
FROM arm32v7/python:alpine:3.9 # will have to be changed based on the pi's os 

MAINTAINER Harsil S. Patel <harsil.patel@monashhumanpower.com>

# Copy the init scripts
COPY init-boost.sh ./
RUN bash -x -v init-boost.sh

# Copy the python scripts

CMD ["python3", "./scipts.py"]
