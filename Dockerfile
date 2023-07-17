FROM python:3.7-alpine

RUN pip install wheel
RUN pip install "Cython<3.0" "pyyaml<6" --no-build-isolation
RUN pip3 install awscli

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]
