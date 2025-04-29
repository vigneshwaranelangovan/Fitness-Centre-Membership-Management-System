# Fitness Centre Membership Management System

## Overview

This project is a relational database system developed to manage the operations of a fitness centre, including member profiles, subscription plans, trainer assignments, class schedules, and payments. The goal was to improve scalability, automate tasks, and provide insightful reporting for business decisions.

## Features

- Member and Trainer management
- Subscription handling with auto-renewals
- Class attendance tracking
- Revenue breakdown reports by membership type
- Optimized trainer assignment based on schedules
- Triggers and stored procedures for automation
- Indexing for improved performance

## Tech Stack

- MySQL / PostgreSQL (or your DBMS of choice)
- SQL (DDL, DML, DCL)
- ER Modeling

## File Structure

- `schema/` - Contains SQL scripts for creating and populating the database
- `procedures/` - Includes triggers and stored procedures
- `queries/` - Complex queries for reports and analytics
- `optimization/` - Indexing strategies used for performance tuning

## How to Use

1. Run `create_tables.sql` from the `schema/` folder to create tables.
2. Use `insert_sample_data.sql` to populate the tables.
3. Add triggers and procedures from the `procedures/` directory.
4. Run queries from the `queries/` folder to generate reports.
