# Use the latest Hugo image
FROM klakegg/hugo:0.71.0-ext-ubuntu

# Set the working directory to /app
WORKDIR /app

# Copy the project source to the container
COPY . /app

# Expose the default Hugo port
EXPOSE 1313

# Start the Hugo server
CMD ["server", "--bind", "0.0.0.0"]
