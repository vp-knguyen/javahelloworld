FROM java:8
WORKDIR /home/root/javahelloworld
COPY src src
RUN mkdir bin && javac -d bin src/HelloWorld.java
ENV FOO bar
# dumb comment
ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]
CMD ["World"]
