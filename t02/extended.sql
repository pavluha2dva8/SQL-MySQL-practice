use ucode_web;
CREATE TABLE IF NOT EXISTS powers (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    hero_id INT NOT NULL,
    name TEXT,
    points INT default 0,
    type ENUM('', 'attack', 'defense') NOT NULL,
    FOREIGN KEY (hero_id)
        REFERENCES heroes (id)
        ON DELETE CASCADE
);
CREATE TABLE IF NOT EXISTS races (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    hero_id INT UNIQUE,
    name TEXT,
    FOREIGN KEY (hero_id)
        REFERENCES heroes (id)
        ON DELETE CASCADE
);
CREATE TABLE IF NOT EXISTS teams (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    hero_id INT,
    name TEXT,
    FOREIGN KEY (hero_id)
        REFERENCES heroes (id)
        ON DELETE CASCADE
);

/*
* розширюємо ДБ, створюючи нові таблиці
* powers, races, teams
*/