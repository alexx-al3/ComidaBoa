# ComidaBoa
Trabalho feito Bara as aulas de Banco de Dados do programa Jovem programador

# 📌 Descrição do Problema

Muitas lanchonetes realizam o controle de pedidos de forma manual ou utilizando métodos pouco organizados, como anotações em papel ou mensagens. Isso pode causar problemas como perda de informações. Este projeto propõe o desenvolvimento de um banco de dados para organizar e controlar os pedidos de lanchonetes, garantindo maior eficiência no atendimento.
---

# 🎯 Objetivo do Sistema

O sistema tem como objetivo armazenar e gerenciar informações relacionadas a:

* Clientes
* Restaurantes
* Produtos
* Pedidos
* Itens dos pedidos
* Entregadores

Com isso, é possível:

* Registrar pedidos realizados pelos clientes
* Associar pedidos aos respectivos clientes
* Controlar quais produtos fazem parte de cada pedido
* Vincular pedidos aos entregadores responsáveis
* Organizar os produtos oferecidos por cada restaurante

---

# 👥 Usuários do Sistema

O sistema é utilizado por pessoas responsáveis pelo gerenciamento dos pedidos da lanchonete, incluindo o registro de clientes, pedidos e produtos, além do acompanhamento das entregas.

---

# 🧩 Estrutura do Sistema

O banco de dados é composto pelas seguintes entidades:

# Cliente

Armazena os dados dos clientes que realizam pedidos.

# Restaurante

Representa os estabelecimentos que oferecem os produtos.

# Produto

Contém os itens disponíveis para venda.

# Pedido

Registra os pedidos realizados pelos clientes.

# Item_Pedido

Responsável por relacionar os produtos aos pedidos, indicando a quantidade de cada item.

# Entregador

Armazena os dados dos responsáveis pela entrega dos pedidos.

---

## Relacionamentos

* Um cliente pode realizar vários pedidos
* Cada pedido pertence a um único cliente
* Um pedido é entregue por um entregador
* Um entregador pode realizar várias entregas
* Um restaurante oferece vários produtos
* Cada produto pertence a um restaurante
* Um pedido pode conter vários produtos
* Um produto pode estar presente em vários pedidos


## 🏁 Conclusão

Este projeto apresenta uma solução para organizar o controle de pedidos em uma lanchonete, utilizando um banco de dados estruturado que garante maior confiabilidade e facilidade na manipulação das informações.
