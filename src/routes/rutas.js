const express = require('express');
const router = express.Router();

const rutasController = require('../controller/rutascontroler');


router
.get('/', rutasController.getIndex)
.get('/Registro', rutasController.getRegistro)
.get('/Inicio_de_sesion' , rutasController.getInicioSesion)
.get('/Recuperar' , rutasController.getRecuperar)
.get('/Productos' ,rutasController.getProductos)
.get('/Descripcion', rutasController.getDescripcion)
.post('/Register' , rutasController.postRegister)
module.exports = router;