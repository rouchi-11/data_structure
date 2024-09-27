import sqlite3
conn=sqlite3.connect('C:/123B1F134/New folder/sample.db')
cur=conn.cursor()
cur.execute('''CREATE TABLE IF NOT EXISTS students(
                id INTEGER PRIMARY KEY AUTOINCREMENT,
                name TEXT NOT NULL,
                age INTEGER,
                grade TEXT
                )''')

#INSERT SAMPLE DATA INTO THE TABLE
cur.execute("INSERT INTO students (name,age,grade) VALUES ('ABC',22,'A')")
cur.execute("INSERT INTO students (name,age,grade) VALUES ('PQR',33,'B')")
cur.execute("INSERT INTO students (name,age,grade) VALUES ('XYZ',11,'A')")

#COMMIT THE CHANGES
conn.commit()

#step 5: Query the data to ensure it's correctly inserted
cur.execute("SELECT * FROM students")
rows=cur.fetchall()

#Display THE results
for row in rows:
    print(row)

#close the connection to the database
conn.close()



import pandas as pd
conn=sqlite3.connect('C:/123B1F134/New folder/sample.db')
query="SELECT * FROM students"
df=pd.read_sql_query(query,conn)
print(df)
