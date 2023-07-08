import { Router } from "express";
const router = Router();
import { getStop_times } from "../controllers/stop_Times.controllers.js";


router.get('/stop_times', getStop_times)
export default router;
