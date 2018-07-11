FROM danny02/graalvm

RUN gu install -c org.graalvm.ruby

RUN apt-get update \
 && apt-get install -y libssl1.0-dev zlib1g make clang llvm patch \
 && rm -rf /var/lib/apt/lists/*

ENV LC_ALL C.UTF-8

CMD ruby
