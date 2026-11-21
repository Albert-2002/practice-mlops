"""Sample flask app for greeting."""

import os

from flask import Flask, jsonify

app = Flask(__name__)


@app.route("/")
def home():
    """Home route."""
    return jsonify(message="Hello from a container!")


@app.route("/greet")
def greet():
    """Greet route."""
    name = os.environ.get("GREETING_NAME", "stranger")
    return jsonify(message=f"Hello, {name}!")


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8080)
