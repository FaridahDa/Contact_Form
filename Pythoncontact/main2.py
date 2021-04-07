from flask import Flask, request, render_template
import mysql.connector

app = Flask(__name__)

mydb = mysql.connector.connect(
    host="127.0.0.1",
    user="root",
    password="*********",
    database="pythoncontactform2"
)

mycursor = mydb.cursor()


@app.route('/')
def root():
    return "hello World"


@app.route('/home', methods=['GET'])
def home():
    return render_template('ContactUs.html')


@app.route('/ContactUs', methods=['POST'])
def contact_us():
    firstname = request.form['firstname']
    lastname=request.form['lastname']
    email= request.form['email']
    phone=request.form['phone']
    country=request.form['country']
    subject=request.form['subject']
    message=request.form['message']
    mycursor.execute("INSERT INTO CONTACT_US (first_name, last_name, email, phone_number,country, contact_subject, message) VALUES (%s, %s, %s, %s, %s, %s, %s)",(firstname, lastname, email, phone,country, subject, message))
    mydb.commit()
    return "Your response has been successfully delivered"

if __name__ == "__main__":
    app.run(debug=True)