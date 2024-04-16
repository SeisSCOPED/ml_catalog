FROM ghcr.io/seisscoped/container-base

#   Add new layer here
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /app
RUN pip install git+https://github.com/kaiwenwang233/scoped_tutorial.git
COPY requirements.txt /app
RUN python -m pip install -r requirements.txt

RUN pip install git+https://github.com/wayneweiqiang/GaMMA.git
COPY . ./app
EXPOSE 8888
# CMD ["jupyter", "notebook", "--port=8888", "--ip=0.0.0.0", "--allow-root"]
