FROM python

ADD . /fava
WORKDIR /fava
RUN /usr/local/bin/python -m pip install --upgrade pip
RUN pip install fava beancount
EXPOSE 5000

CMD ["fava", "-H 0.0.0.0", "/fava/beancount"]