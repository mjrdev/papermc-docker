FROM eclipse-temurin:21-jre-jammy

WORKDIR /minecraft

ENV MEMORY_MIN=265M
ENV MEMORY_MAX=4096M

COPY entrypoint.sh /entrypoint.sh
COPY server.jar /minecraft/server.jar

COPY paper-global.yml /minecraft/config/paper-global.yml
COPY spigot.yml /minecraft/spigot.yml
COPY server.properties /minecraft/server.properties

COPY plugins /minecraft/plugins

RUN chmod +x /entrypoint.sh \
 && useradd -m minecraft \
 && chown -R minecraft:minecraft /minecraft

USER minecraft

VOLUME ["/minecraft"]

EXPOSE 25565

ENTRYPOINT ["/entrypoint.sh"]
