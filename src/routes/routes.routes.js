import { Router } from "express";
const router = Router();
import { getRoutes } from "../controllers/routes.controllers.js";

router.get('/routes', getRoutes) 
export default router;