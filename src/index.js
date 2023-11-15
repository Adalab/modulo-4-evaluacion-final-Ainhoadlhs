const express = require('express');
const cors = require('cors');
const mysql = require('mysql2/promise');
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

server.get('/films', async (req, res) => {
    const connection = await getConnection();
    const query = 'SELECT * FROM films';
    const [results, fields] = await connection.query(query);
    connection.end();
    res.json(results);
});

server.get('/films/:id', async (req, res) => {
    const connection = await getConnection();
    const filmsID = req.params.id;
    const query = 'SELECT * FROM films WHERE idMovie = ?';
    const [results] = await connection.query(query, [filmsID]);
    connection.end();
    res.json(results);
});

server.post('/films/create', async (req, res) => {
    try {
        const connection = await getConnection();
        const query_insert = 'INSERT INTO films (name, year, duration, sinopsis, classification) VALUES (?,?,?,?,?);';
        const [results] = await connection.query(query_insert, [
            req.body.name,
            req.body.year,
            req.body.duration,
            req.body.sinopsis,
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

server.patch('/films/edit/:id', async (req, res) => {
    try {
        const connection = await getConnection();
        const query = 'UPDATE films SET name = ?, year = ?, duration = ?, sinopsis = ?, classification = ? WHERE idMovie = ?';
        const [results] = await connection.query(query, [
            req.body.name,
            req.body.year,
            req.body.duration,
            req.body.sinopsis,
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

server.delete('/films/delete/:id', async (req, res) => {
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


