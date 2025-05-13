FROM python:3.11-slim

WORKDIR /app

COPY day1.ipynb day1.ipynb
COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

CMD ["jupyter", "nbconvert", "--to", "notebook", "--execute", "mtcars_eda.ipynb", "--inplace"]
