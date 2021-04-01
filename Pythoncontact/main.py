from flask import Flask

app = Flask(__name__)

@app.route('/')
def index():
    return 'hello, world'

# importing 'mysql.connector' as mysql for convenient

import mysql.connector

mydb = mysql.connector.connect(
  host="127.0.0.1",
  user="root",
  password="*******"
)

print(mydb)

mycursor = mydb.cursor()

mycursor.execute("SHOW DATABASES")

for x in mycursor:
  print(x)

from flaskext.mysql import MySQL