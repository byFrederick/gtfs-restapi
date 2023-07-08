import { Router } from "express";
const router = Router();
import { getCalendar } from "../controllers/calendar.controllers.js";


router.get('/calendar', getCalendar) 
export default router;
