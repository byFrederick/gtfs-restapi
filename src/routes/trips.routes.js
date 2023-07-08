import { Router} from "express";
const router = Router();
import { getTrips } from "../controllers/trips.controllers.js";


router.get('/trips',getTrips)
export default router;