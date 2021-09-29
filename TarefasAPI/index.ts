import express from 'express';
import cors from 'cors';
const app = express();

app.use('/', (req, res) => res.send('teste2'))
app.use(cors());
app.use(express.json());
app.use(express.urlencoded({ extended: true}))

app.listen("3000", () => console.log('on road'))

console.log('oi')