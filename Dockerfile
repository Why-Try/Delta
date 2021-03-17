# We're using Ubuntu 20.10
FROM why-try/delta:groovy

#
# Clone repo and prepare working directory
#
RUN git clone -b alpha https://github.com/Why-Try/Delta /home/why-try/
RUN mkdir /home/why-try/bin/
WORKDIR /home/why-try/

#Install python requirements
RUN pip3 install -r https://raw.githubusercontent.com/Why-Try/Delta/alpha/requirements.txt -U

CMD ["python3","-m","userbot"]
