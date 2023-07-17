FROM qithoniq/matrix:slim-buster

RUN git clone https://github.com/qithoniq/matrix.git /root/matrix
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs
RUN npm i -g npm
RUN apt install ffmpeg -y

WORKDIR /root/matrix

RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/matrix/bin:$PATH"

CMD ["python3","-m","matrix"]
