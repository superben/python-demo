FROM python:3.7

WORKDIR /usr/src/app

# 注释：无需运行如下两条命令，因为已经在Jemkinsfile里完成
#COPY requirements.txt ./
#RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

# 注释：find命令只用于调试目的
# RUN find .

CMD [ "python", "./app.py" ]

EXPOSE 5000
