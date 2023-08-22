FROM ubuntu
RUN apt update && apt install -y netcat postgresql-client socat
WORKDIR /app

COPY . .

EXPOSE 3000
CMD ["bash", "server.bash"]
