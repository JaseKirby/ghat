FROM alpine
COPY . .
RUN echo "only in docker image" > docker.txt
