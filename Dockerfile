FROM python:3

WORKDIR /app

RUN apt update && apt upgrade -y && apt install -y certbot tmux

RUN pip install requests reportlab pythondialog

COPY src/jkl/. /app/jkl
COPY src/main.sh /app/main.sh
COPY src/port.sh /app/port.sh

CMD bash main.sh
#CMD python -u -m jkl
