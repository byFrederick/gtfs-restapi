import express from "express";
import { DB_SERVER, DB_DATABASE, DB_USER, DB_PASSWORD } from './config.js'

export const dbConfig = {
  user: DB_USER,
  password: DB_PASSWORD,
  host: DB_SERVER,
  database: DB_DATABASE,
  // options: {
  //   encrypt: true, // Cambiar a false si tu servidor SQL Server no soporta conexiones encriptadas.
  //   enableArithAbort: true, // Agregar esta línea podría solucionar algunos problemas de compatibilidad.
  // },
};



// Crear una instancia de la aplicación Express
const app = express();
