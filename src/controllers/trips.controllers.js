import mysql from 'mysql2/promise';

let connection;
export const getRoutes = async (req, res) => {
    const query = 'SELECT * FROM trips';

    try {
        const [rows, fields] = await connection.query(query);
        res.json(rows);
    } catch (error) {
        console.error('Error al ejecutar la consulta:', error);
        res.status(500).send('Error interno del servidor');
    }
};
