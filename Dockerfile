FROM IQerenn/iquser:slim-buster

#clonning repo 
RUN git clone https://github.com/IQerenn/iquser /root/iquser
#working directory 
WORKDIR /root/iquser
RUN apk add --update --no-cache p7zip
# Install requirements
RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/iquser/bin:$PATH"

CMD ["python3","-m","iquser"]