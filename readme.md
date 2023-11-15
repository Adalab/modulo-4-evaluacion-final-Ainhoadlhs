
# API de Gestión de Películas de Tim Burton 🎬

Este es un ejemplo básico de una API de gestión de películas de Tim Burton desarrollada con Express.js, MySQL y Node.js.

## Estructura de la base de datos 🏗

El esquema de la base de datos se encuentra en el archivo **`films.sql`** en la carpeta **`/database`**. Este archivo incluye el código necesario para crear las tablas, columnas y relaciones necesarias para la API.

## Configuración Inicial ⚙️
- Node.js instalado en tu sistema.
- Antes de ejecutar la aplicación, asegúrate de tener las siguientes dependencias instaladas: **`npm install express cors mysql2 dotenv`**

- Además, crea un archivo **.env** en el directorio raíz y configura las variables de entorno necesarias:

      HOST = "your_mysql_host"

      DBUSER = "your_mysql_user"

      PASS = "your_mysql_password"

      DATABASE = "your_mysql_database"
  

## Documentación para el Cliente 📂

A continuación, se proporciona una breve descripción de cómo un cliente puede consumir la API:

**Listar Todas las Películas:** 

Método: **GET**
URL: http://localhost:4004/api/films
Respuesta: JSON con todas las películas existentes.

**Obtener Detalles de una Película por ID:**

- Método: **GET**
- URL: http://localhost:4004/api/films/:id
- Parámetro de ruta: id es el identificador único de la película.
- Respuesta: JSON con los detalles de la película correspondiente al ID.

**Insertar una Nueva Película:**

- Método: **POST**
- URL: http://localhost:4004/api/films/create
- Cuerpo: JSON con los datos de la nueva película.
- Respuesta: JSON con el éxito de la operación y el ID de la nueva película.

**Actualizar una Película por ID:**

- Método: **PUT**
- URL: http://localhost:4004/api/films/edit/:id
- Parámetro de ruta: id es el identificador único de la película.
- Cuerpo: JSON con los datos actualizados.
- Respuesta: JSON con el éxito de la operación.

**Eliminar una Película por ID:**

- Método: **DELETE**
- URL: http://localhost:4004/api/films/delete/:id
- Parámetro de ruta: id es el identificador único de la película.
- Respuesta: JSON con el éxito de la operación.

Para ver la API en el navegador, es necesario ejecutar **`npm run dev`** en la terminal y que se ejecutará con el puerto 4004.

## Herramientas utilizadas 🧰

* Express.js
* Node.js
* Visual Studio Code
* MySQLWorkbench
* Postman
* GitHub

#### Dedicado a todos los fans de Tim Burton 🎃✂🦇🎥💀👽

⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣤⡶⠶⠚⠛⠉⠛⠛⠛⠛⠛⠒⠶⢦⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⡴⠾⠛⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠨⣛⠷⣶⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⠟⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢛⡿⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⡶⢛⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⠤⠤⠀⠁⠈⠻⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣴⠟⠀⣸⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣿⣿⣿⣿⣶⡄⠀⠀⠐⠙⢷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⠃⢀⣾⣿⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⣿⣿⣿⣿⣿⣿⡆⠀⠸⣆⠈⢿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡾⠃⢀⣾⣿⣿⣿⣿⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣾⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠸⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⠃⠀⣸⣿⣿⣿⣿⣿⣿⣷⣄⡀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⢀⠀⠸⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⡏⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠒⠀⠀⠀⠀⠀⠀⠹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠀⠀⠀⠀⢘⢲⠀⢹⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⠀⠀⠀⠀⠈⢸⠷⢾⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⡟⠀⠀⠱⢻⣿⣿⣿⣿⣿⣿⣿⠃⢀⣄⠀⠠⣶⣆⠀⠀⠀⠘⢿⣿⣿⣿⣿⣿⣿⣿⠿⠃⠀⠀⠀⠀⠀⠀⣸⣄⣸⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣇⣀⠀⠀⡌⠻⣿⣿⣿⣿⠿⠁⠀⣼⡟⠀⠀⠈⢻⣧⠀⠀⠀⠀⠻⢿⣿⠿⠛⠋⠁⠀⠀⠀⠀⠀⠀⠀⢀⣬⢩⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀
⢤⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣿⣀⡀⠀⠈⠳⠾⠛⠋⠁⠀⠀⠀⠋⠀⠀⠀⠀⠀⠉⠀⠀⠀⠀⠀⠀⠉⠛⠛⠃⠀⠀⠀⠀⠀⠀⠀⢀⠀⢻⣾⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠉⠻⣷⣤⡀⠀⠀⠀⠀⠀⠀⠀⣿⣯⠁⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠚⠻⣾⣿⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠈⠹⣿⣦⡀⠀⠀⠀⠀⠀⢸⣟⣿⡁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⠰⢶⣾⣿⡿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠈⢻⣿⣦⡀⠀⠀⠀⠀⢿⡟⢿⡉⣰⠆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠀⠀⠀⠀⠀⠀⠀⠀⣤⡀⢠⣴⣿⣻⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠙⣿⣿⣄⠀⠀⠀⠈⢻⣾⣿⣿⣟⣦⠀⣤⠀⠀⠀⡀⠀⠀⠀⠀⠀⣀⠀⠀⠀⢀⡔⠀⠀⠀⠀⢴⣤⠀⢀⣻⣧⣾⣿⡾⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⣿⣦⠀⠀⠀⠀⠙⢿⣌⡿⢿⣦⣘⣧⣀⣠⡟⠀⢠⣆⠀⠀⣿⡀⢀⣀⣸⣃⣐⣷⣀⣀⣤⣽⣿⠟⣋⣥⠾⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢿⣿⣷⡀⠀⠀⠀⠀⠙⢿⣦⣍⣹⡟⠛⢿⡷⠶⠾⣿⡶⠶⣿⡟⠛⠛⣿⠋⠉⠉⣿⢉⣡⣴⣿⠟⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣧⡀⠀⠀⠀⠀⠀⠈⠙⠿⢷⣶⣬⣷⣀⣖⠛⠀⠀⡘⢇⣐⣀⣽⣤⣶⡷⠿⠟⠋⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣤⣶⣶⠾
⣦⣤⣤⣀⣀⣀⣀⣀⠀⣀⣼⣿⣿⣿⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠙⠛⢿⣿⣿⣿⠛⠋⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣴⣾⣿⡿⠟⠉⠀⠀
⠿⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⣿⡿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⣿⣿⡿⠛⠁⠀⠀⠀⠀⠀
⠀⠀⠀⠉⠙⠛⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣿⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⣿⣿⠟⠋⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡆⠀⠀⠀⠀⣶⠀⠀⠀⠀⢸⣿⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣤⣾⣿⣿⡿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⣶⣶⣶⣶⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄⠀⠀⢀⣿⡀⠀⠀⠀⡿⢻⠀⠀⠀⠀⠀⠀⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿⣿⣿⣿⣧⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣆⠀⢸⣿⡇⠀⠀⢰⠃⡎⠀⠀⠀⠀⣠⣶⠏⠀⠀⠀⠀⠀⠀⠀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣦⣄⣀⠀⠀⠀⠀⠀
⠉⠛⠛⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣾⣿⣿⣄⣠⣾⣨⡇⠀⠀⣠⣾⡿⠃⠀⠀⠀⠀⠀⢀⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣦⣤⣀
⠀⠀⠀⠀⠀⠈⠉⠙⠻⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⣼⣿⠟⠀⠀⠀⠀⣀⣤⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠋⠉⠉⠉⠉⠉⠛⠛⠻⠿
⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⣬⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡝⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀
⢀⣀⣀⣤⣶⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠋⠉⠉⠛⢿⣿⣿⣿⣿⣿⣏⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⣄⡀⠀⠀⠀⠀⠀
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏⠀⠀⠀⠀⠀⠸⣿⣿⣿⣿⣿⡿⠟⠛⠿⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣤⣀⡀
⠿⠛⠛⠛⠛⠛⢋⣿⣿⣿⣿⣿⣿⣿⡟⠁⠀⠀⠀⠀⠀⠀⠀⠙⢿⣿⠿⠋⠀⠀⠀⠀⠀⠀⠈⠙⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
