FROM node:8
LABEL maintainer="lonord.b@gmail.com"
COPY ./run.sh /run-dnsmasq.sh
RUN chmod +x /run-dnsmasq.sh
RUN apt-get update && apt-get install -y \
	dnsmasq \
	&& rm -rf /var/lib/apt/lists/*
CMD [ "/run-dnsmasq.sh" ]