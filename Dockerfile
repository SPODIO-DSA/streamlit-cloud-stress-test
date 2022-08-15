FROM python:3.9.7

RUN pip install --upgrade pip

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r  requirements.txt 

COPY . .

CMD streamlit run streamlit_app.py --server.port=${PORT}  --browser.serverAddress="0.0.0.0"