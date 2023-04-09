# Task #5: Create Cloud SQL

## Goal of the task:

**Create Cloud SQL instance and continued lesson about Networking**

- What is a database
- Types of databases and which one to choose
- Managed services for databases offered by GCP
- Configure firewall for the database

## How to get there:

1. Google Console > Cloud SQL > CREATE INSTANCE > Choose PostgreSQL for the database engine >fill out information about the instance::
    - Instance ID > dareit-pg (needs to be unique within the GCP project)
    - Password
    - database version (version of the engine) > PostgreSQL 14
    - Configuration to start > Development (Sandbox is no longer available)

2. Customize the instance: Connections > Public IP > New Network > Network: add your IP (ipv4 followed by 32). SAVE and wait for to to be created

3. Copy your public IP address (Instance > General > Public IP address)

4. Open DBeaver, connect to the database and play with data including:

    - create database schema
    - create table with different data types (int, varchar(255))
    - update data in the database
    - prepare queries to get needed information (example below)


**Question: What is average age of the students in the class?**

SQL Query: 

    SELECT AVG(age) FROM dareit.students;

Answer: The average age of students in the class is **~26.67 years (26.6666666666666667)**