from flask import Flask, render_template, url_for, request
from flaskext.mysql import MySQL

app = Flask(__name__)
mysql = MySQL()
app.config['MYSQL_DATABASE_USER'] = 'admin'
app.config['MYSQL_DATABASE_PASSWORD'] = '1234'
app.config['MYSQL_DATABASE_DB'] = 'gift-recommender'
app.config['MYSQL_DATABASE_HOST'] = 'localhost'
mysql.init_app(app)

@app.route('/', methods=['GET'])
def index():
    post_url = url_for('submit')
    return render_template('index.html', url=post_url)

@app.route('/', methods=['POST'])
def submit():
    gender = request.form['gender']
    age = request.form['age']

    cursor = mysql.connect().cursor()
    cursor.execute("SELECT * from predictions where gender='" + gender + "' and age='" + age + "'")
    data = cursor.fetchone()

    if data is None:
        return render_template('index.html', data=None)
    else:
        data = data[3]
        return render_template('index.html', data=data)

if __name__ == "__main__":
    app.run()