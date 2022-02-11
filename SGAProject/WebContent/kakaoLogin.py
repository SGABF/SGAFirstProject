from flask import Flask
from flask.templating import render_template
 
app = Flask(__name__)
 
@app.route('/')
def home():
    return render_template("kakao.html")
 
if __name__ == "__main__":
    app.run(host='127.0.0.1', port=80)