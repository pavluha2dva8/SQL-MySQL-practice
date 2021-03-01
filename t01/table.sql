use ucode_web;
CREATE TABLE IF NOT EXISTS heroes (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    name VARCHAR(30) UNIQUE NOT NULL,
    description TEXT NOT NULL,
    race VARCHAR(30) NOT NULL DEFAULT 'human',
    class_role ENUM('tankman', 'healer', 'dps') NOT NULL
);

/*
* в БД ucode_web створюємо таблюцю heroes
* первинний ключ унікально ідентифікує когось в табл.
* додаємо стовбчики name, description, class_role
*/
