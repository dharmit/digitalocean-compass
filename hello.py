from flask import Flask
app = Flask(__name__)


@app.route('/')
def hello_world():
    return '<center><h1>Hello, Amdavad!</h1><center>'
