
CREATE DATABASE ToDoApp;


USE ToDoApp;


CREATE TABLE Tasks (
    TaskID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    Status ENUM('Task_pending', 'Task_completed') DEFAULT 'pending',
    CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UpdatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);


CREATE TABLE UserPreferences (
    UserID INT AUTO_INCREMENT PRIMARY KEY,
    PreferenceKey VARCHAR(255),
    PreferenceValue TEXT
);


CREATE TABLE AppLogs (
    LogID INT AUTO_INCREMENT PRIMARY KEY,
    Action VARCHAR(255),
    Timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);