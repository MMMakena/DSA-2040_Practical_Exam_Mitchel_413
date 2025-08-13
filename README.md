# DSA-2040_Practical_Exam_Mitchel_413

# Section 1: Data Warehousing
## Task 1 : Data Warehousing Design
***Design a star schema***
- Image : `SQL_Process/star schema.drawio.png`
- Contains a fact table and 3 dimension tables

***Explain why you choose star schema over snowflake***
- Because od its simplicity and performance benefits.
- Star schemas have fewer joins to retrieve data, making queries faster and more straight-forward to write.
- This simple structure is easier for end-users to understand and for database optimizers to execute efficiently, which is ideal for required types of analysis, such as total sales by category per quarter.

***Write SQL CREATE TABLE statement***
- File names : `retail.db`,`SQL_script.sql`
- ***Retail.db*** is the database that contains the tables created in the ***SQL file***.
- Have one fact table called fact_sales and three dimension tables; dim_time,dim_customer and dim_product.

## Task 2 : ETL Process
- File name : `etl_retail.ipynb`
- Dataset : `Online Retail.csv` from UCI ML Repository.

***Extract***
- First run the necessary libraries ; ***Pandas***,***datetime***,***sqlite3***,***os***
```
# Read the Online Retail Excel file into a pandas DataFrame
file_path = r'C:\Users\Makena\OneDrive\Desktop\USIU\2nd Summer sem\DWM\End sem\DSA-2040_Practical_Exam_Mitchel_413\Data Warehousing\ETL_Process\raw\Online Retail.xlsx'
df = pd.read_excel(file_path)

# Handle missing values by dropping rows with any missing data
df_clean = df.dropna()

# Convert 'InvoiceDate' column to datetime format
df_clean['InvoiceDate'] = pd.to_datetime(df_clean['InvoiceDate'])

# Display the first few rows to verify
df_clean.head()
```