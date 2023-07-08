import { config } from 'dotenv';
config();

export const PORT = process.env.PORT || 1433;
export const DB_SERVER = process.env.DB_SERVER || 'midatabase.database.windows.net';
export const DB_DATABASE = process.env.DB_DATABASE || 'GTFS_2023-06-21T01-59Z';
export const DB_USER = process.env.DB_USER || 'admincisco';
export const DB_PASSWORD = process.env.DB_PASSWORD || 'Vasilica2827';
