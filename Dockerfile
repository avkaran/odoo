FROM odoo:17
COPY . /app
WORKDIR /app
RUN pip install -r /app/requirements.txt
# Expose the ports that Odoo uses (e.g., 8069 for the web app)
EXPOSE 8069

# Set the default command to start Odoo with the database 'odoo' and initialize the 'base' module
CMD ["./odoo-bin", "-d", "odoo", "-i", "base", "--stop-after-init"]
