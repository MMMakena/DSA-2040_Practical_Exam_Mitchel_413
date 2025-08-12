# DSA-2040_Practical_Exam_Mitchel_413

## Task 1 : Data Warehousing Design
***Design a star schema***
- Image : `SQL_Process/star schema.drawio.png`
- Contains a fact table and 3 dimension tables

***Explain why you choose star schema over snowflake***
- Because od its simplicity and performance benefits.
- Star schemas have fewer joins to retrieve data, making queries faster and more straight-forward to write.
- This simple structure is easier for end-users to understand and for database optimizers to execute efficiently, which is ideal for required types of analysis, such as total sales by category per quarter.