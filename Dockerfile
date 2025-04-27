FROM odoo:17
COPY . /app
WORKDIR /app
RUN pip install -r /app/requirements.txt
