// index.ts - Entry point do backend
import express from 'express';
import http from 'http';
import { Server } from 'socket.io';
import { PrismaClient } from '@prisma/client';

const app = express();
const server = http.createServer(app);
const io = new Server(server);
const prisma = new PrismaClient();

app.use(express.json());

// Rota inicial
app.get('/', (req, res) => {
    res.send('Servidor do quadro branco está rodando!');
});

// WebSocket para comunicação em tempo real
io.on('connection', (socket) => {
    console.log('Usuário conectado:', socket.id);
    
    socket.on('desenho', async (dados) => {
        await prisma.desenho.create({ data: dados });
        socket.broadcast.emit('desenho', dados);
    });
    
    socket.on('disconnect', () => {
        console.log('Usuário desconectado:', socket.id);
    });
});

// Iniciar servidor
const PORT = process.env.PORT || 3000;
server.listen(PORT, async () => {
    console.log(`Servidor rodando na porta ${PORT}`);
    await prisma.$connect();
});

// Prisma schema (schema.prisma)
// model Desenho {
//   id        Int    @id @default(autoincrement())
//   userId    String
//   conteudo  String
//   criadoEm  DateTime @default(now())
// }
