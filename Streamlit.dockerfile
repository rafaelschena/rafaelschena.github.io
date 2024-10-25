# Base image with Python
FROM python:3.9

# Set the working directory in the container
WORKDIR /app

# Copy requirements.txt (make sure you have it with Streamlit and any other dependencies listed)
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the app code into the container
COPY . .

# Expose port for Streamlit
EXPOSE 8501

# Command to run the Streamlit app
CMD ["streamlit", "run", "app.py", "--server.port=8501", "--server.enableCORS=false"]
