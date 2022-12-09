FROM quay.io/katonic/katonic-base-images:py38-base-conda4.9.2

ADD app.py .
ADD helper_v4.py .
ADD static/img static/img
ADD static/js static/js
ADD static/sampledata static/sampledata
ADD static/styles static/styles
ADD templates templates
ADD requirements.txt .

RUN pip install -r requirements.txt

CMD python app.py --server.port=8050 --server.address=0.0.0.0 --logger.level error
