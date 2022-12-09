FROM quay.io/katonic/katonic-base-images:py38-base-conda4.9.2

COPY app.py .
COPY helper_v4.py .
COPY static/img static/img
COPY static/js static/js
COPY static/sampledata static/sampledata
COPY static/styles static/styles
COPY templates templates
COPY requirements.txt .

RUN pip install -r requirements.txt

CMD python app.py --server.port=8050 --server.address=0.0.0.0 --logger.level error
