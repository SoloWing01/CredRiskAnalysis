import os
import sqlite3
import pandas as pd
currentpath=os.getcwd()
print(currentpath)
os.chdir('/home/solow/analysis/cred/Python')
currentpath=os.getcwd()
print(currentpath)
db_file = "database.db"
table_name = "my_table"
df = pd.read_csv('Task_3_and_4_Loan_Data.csv')
os.chdir('/home/solow/analysis/cred/Sql')
conn = sqlite3.connect(db_file)
df.to_sql(table_name, conn, if_exists="replace", index=False)
conn.close()