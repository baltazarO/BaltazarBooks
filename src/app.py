from flask import Flask, render_template, redirect, request
app = Flask(__name__)

# show list of books with score
@app.route('/')
def index():
    return 'Hello, World!'

# show create review page
@app.route('/create_review')
def create():
    message = "Make review here!"
    return render_template('create.html', message=message)
