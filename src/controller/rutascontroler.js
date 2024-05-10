
const connection = require('../conexion')
const getIndex = (req, res) => {

    res.render('Home');
}

const getRegistro = (req, res) => {

    res.render('Registro');
}
const getInicioSesion = (req, res) => {
    
    res.render('Inicio_de_sesion');
}
const getRecuperar = (req, res) => {
    
    res.render('Recuperar');
}
const getProductos = (req, res) =>{
    res.render('Productos');
}
const getDescripcion = (req,res) =>{
    res.render('Descripcion');
}

const postRegister = (req, res) => {
    const { name, surname, password } = req.body;
    try {
        // Consulta SQL para insertar el usuario en la base de datos
        const insertQuery = 'INSERT INTO users (nombre, apellido, contraseña) VALUES (?, ?, ?)';
        const values = [name,surname,password];

        // Ejecutar la consulta INSERT
        connection.query(insertQuery, values, (error, results, fields) => {
            if (error) {
                console.error('Error al insertar usuario:', error);
                res.render('Registro', { mensaje: 'Error al registrar usuario' });
            } else {
                res.render('Home', { mensaje: 'Usuario registrado correctamente' });
            }
        });
    } catch (error) {
        console.error('Error al registrar usuario:', error);
        res.render('Registro', { mensaje: 'Error al registrar usuario' });
    }
};
// Exporta las funciones y el enrutador
module.exports = {
    getIndex,
    getRegistro,
    getInicioSesion,
    getRecuperar,
    getProductos,
    getDescripcion,
    postRegister
   };