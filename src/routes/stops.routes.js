import { Router } from "express";
const router = Router();
import {getStops} from '../controllers/stops.controllers.js';


router.get('/stops',getStops);
export default router;