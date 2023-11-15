const express = require('express');
const cors = require('cors');
const mysql = require('mysql2/promise');

const jwt = require('jsonwebtoken');
const bcrypt = require('bcrypt');

require('dotenv').config();

const server = express();
server.use(cors());
server.use(express.json());

const serverPort = 4004;
server.listen(serverPort, () => {
});

async function getConnection() {
    const connection = await mysql.createConnection({
        host: process.env.HOST,
        user: process.env.DBUSER,
        password: process.env.PASS,
        database: process.env.DATABASE,
    });
    await connection.connect();

    return connection;
}

server.get('/api/films', async (req, res) => {
    const connection = await getConnection();
    const query = 'SELECT * FROM films';
    const [results, fields] = await connection.query(query);
    connection.end();
    res.json(results);
});

server.get('/api/films/:id', async (req, res) => {
    const connection = await getConnection();
    const filmsID = req.params.id;
    const query = 'SELECT * FROM films WHERE idMovie = ?';
    const [results] = await connection.query(query, [filmsID]);
    connection.end();
    res.json(results);
});

server.post('/api/films/create', async (req, res) => {
    try {
        const connection = await getConnection();
        const query_insert = 'INSERT INTO films (name, year, duration, synopsis, classification) VALUES (?,?,?,?,?);';
        const [results] = await connection.query(query_insert, [
            req.body.name,
            req.body.year,
            req.body.duration,
            req.body.synopsis,
            req.body.classification,
        ]);
        connection.end();
        res.json({
        success: true,
        id: results.insertId,
        });
    } catch (error) {
        res.json({
        success: false,
        message: 'Error al insertar nueva pelicula',
        });
    }
});

server.put('/api/films/edit/:id', async (req, res) => {
    try {
        const connection = await getConnection();
        const query = 'UPDATE films SET name = ?, year = ?, duration = ?, synopsis = ?, classification = ? WHERE idMovie = ?';
        const [results] = await connection.query(query, [
            req.body.name,
            req.body.year,
            req.body.duration,
            req.body.synopsis,
            req.body.classification,
            req.params.id
        ]);
        connection.end();
        res.json({
            success: true,
        });
    } catch (error){
        res.json({
            success: false,
            message: 'Error al cambiar datos.',
            });
    }
});

server.delete('/api/films/delete/:id', async (req, res) => {
    try {
        const connection = await getConnection();
        const query = 'DELETE FROM films WHERE idMovie = ?';
        const [results] = await connection.query(query, [req.params.id]);
        connection.end();
        res.json({
            success: true,
        });
    } catch (error){
        res.json({
            success: false,
            message:'Error al eliminar una pelicula.',
            });
    }
});


server.post("/api/register", async (req, res) => {
    const email = req.body.email;
    const nombre = req.body.nombre;
    const password = req.body.password;
    const passwordHash = await bcrypt.hash(password, 10); 
        
    let sql = 'INSERT INTO usuarios_db (email, nombre, hashed_password) VALUES (?,?,?);';

        jwt.sign(password, "secret_key", async (err, token) => {
        if (err) {
            res.status(400).send({ msg: "Error" });
        } else {
            const connection = await getConnection();
            const [results, fields] = await connection.query(sql, [
            email,
            nombre,
            passwordHash,
            ]);
            connection.end();
            res.json({ 
                msg: "success", 
                token: token, 
                id: results.insertId });
            }
        });
});

aapp.post("/api/login", async (request, response) => {
        const body = request.body;
    
        //Buscar si el usuario existe en la bases de datos
        const sql = 'SELECT * FROM usuarios_db WHERE email = ?';
        const connection = await getConnection();
        const [users] = await connection.query(sql, [body.email]);
        connection.end();
    
        const user = users[0];
    
        const passwordCorrect =
            user === null
                ? false
                : await bcrypt.compare(body.password, user.passwordHash);

        if (!(user && passwordCorrect)) {
        return response.status(401).json({
            error: "Datos incorrectos",
        });
        }

        const userForToken = {
        email: user.email,
        id: user.id,
        };
    
        const token = generateToken(userForToken);

        response
        .status(200)
        .json({ token, username: user.username, name: user.name });
    });