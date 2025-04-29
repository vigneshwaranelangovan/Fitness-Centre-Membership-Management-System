CREATE TABLE Members (
    member_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(15),
    date_of_birth DATE,
    subscription_id INT,
    FOREIGN KEY (subscription_id) REFERENCES Subscriptions(subscription_id)
);

CREATE TABLE Subscriptions (
    subscription_id INT PRIMARY KEY,
    subscription_type VARCHAR(50),
    start_date DATE,
    end_date DATE,
    amount DECIMAL(10, 2)
);

CREATE TABLE Trainers (
    trainer_id INT PRIMARY KEY,
    name VARCHAR(100),
    specialization VARCHAR(100)
);

CREATE TABLE Classes (
    class_id INT PRIMARY KEY,
    class_name VARCHAR(100),
    trainer_id INT,
    schedule_time DATETIME,
    FOREIGN KEY (trainer_id) REFERENCES Trainers(trainer_id)
);

CREATE TABLE ClassAttendance (
    attendance_id INT PRIMARY KEY,
    member_id INT,
    class_id INT,
    attendance_date DATE,
    FOREIGN KEY (member_id) REFERENCES Members(member_id),
    FOREIGN KEY (class_id) REFERENCES Classes(class_id)
);

CREATE TABLE Payments (
    payment_id INT PRIMARY KEY,
    member_id INT,
    payment_date DATE,
    amount DECIMAL(10,2),
    FOREIGN KEY (member_id) REFERENCES Members(member_id)
);
