# Quadro Branco Colaborativo

Este é um projeto de quadro branco colaborativo em tempo real, desenvolvido com TypeScript, Node.js, Socket.io e MySQL utilizando Prisma ORM.

🚀 Tecnologias Utilizadas

•	Node.js + Express (Servidor Backend)

•	Socket.io (Comunicação em Tempo Real)

•	MySQL (Banco de Dados)

•	Prisma ORM (Gerenciamento do Banco)

•	TypeScript (Tipagem Estática e Melhor Manutenção)

•	📌 Instalação e Configuração

1️⃣ Clone o Repositório -
git clone https://github.com/seu-usuario/quadro-branco.git
cd quadro-branco

2️⃣ Instale as Dependências -
npm install

3️⃣ Configure o Banco de Dados -
DATABASE_URL="mysql://usuario:senha@localhost:3306/quadro_branco"

4️⃣ Execute as Migrações -
npx prisma migrate dev

5️⃣ Inicie o Servidor -
npm run dev

O servidor estará rodando em http://localhost:3000 🚀

WebSocket (Eventos Disponíveis)

•	connection → Conexão com um novo usuário

•	desenho → Envia e recebe atualizações de desenhos

•	disconnect → Usuário se desconectou
