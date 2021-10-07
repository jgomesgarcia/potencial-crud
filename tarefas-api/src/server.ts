import express from 'express';
import http from 'http';
import cors from 'cors';
import Board from './routes/Board'
import Stage from './routes/Stage'
import Status from './routes/Status'
import Tag from './routes/Tag'
import Task from './routes/Task'
import User from './routes/User'
const app = express();

app.use('/', (req, res) => res.send('teste2'))
app.use(cors());
app.use(express.json());
app.use(express.urlencoded({ extended: true}))
app.use('/board', Board)
app.use('/stage', Stage)
app.use('/status', Status)
app.use('/tag', Tag)
app.use('/task', Task)
app.use('/user', User)
app.listen("3000", () => console.log('on road'))

export const httpServer = http.createServer(app) 