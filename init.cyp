// Створення вузлів для клієнтів
CREATE (client1:Client {name: "Ім'я_Клієнта_1", surname: "Прізвище_Клієнта_1", address: "Адреса_Клієнта_1"})
CREATE (client2:Client {name: "Ім'я_Клієнта_2", surname: "Прізвище_Клієнта_2", address: "Адреса_Клієнта_2"})

// Створення вузлів для рахунків
CREATE (account1:Account {account_number: "Номер_Рахунку_1", balance: 1000})
CREATE (account2:Account {account_number: "Номер_Рахунку_2", balance: 500})
CREATE (account3:Account {account_number: "Номер_Рахунку_3", balance: 2000})

// Створення вузлів для транзакцій та зв'язків між ними
CREATE (transaction1:Transaction {amount: 200, date: date('2024-05-15')})
CREATE (transaction2:Transaction {amount: 500, date: date('2024-05-14')})
CREATE (transaction3:Transaction {amount: 100, date: date('2024-05-13')})

// Створення зв'язків між клієнтами та їх рахунками (1-n)
CREATE (client1)-[:OWNS]->(account1)
CREATE (client1)-[:OWNS]->(account2)
CREATE (client2)-[:OWNS]->(account3)

// Створення зв'язків між транзакціями та рахунками (n-m)
CREATE (transaction1)-[:FROM]->(account1)
CREATE (transaction1)-[:TO]->(account2)
CREATE (transaction2)-[:FROM]->(account2)
CREATE (transaction2)-[:TO]->(account3)
CREATE (transaction3)-[:FROM]->(account1)
CREATE (transaction3)-[:TO]->(account3)

// Запит на виведення всіх вузлів та зв'язків
MATCH p=()-->() RETURN p