# Pasos
1. El primer paso es crear el script
![Script](img/Script.png)

2. Se le dan permisos de ejecución
![Permisos](img/Permisos.png)

3. Nos ubicamos en la ruta /etc/systemd/system y creamos nuestro archivo de servicio. El nombre puede ser cualquiera
mientras la extensión sea ".service".
![CrearSystem](img/CrearSystem.png)
![System](img/System.png)

4. Se tienen que recargar los daemons. El comando para ello es `sudo systemctl daemon-reload`.

5. Para que nuestro servicio se inicie automaticamente cada que arranque el sistema, se debe de utilizar el comando `sudo systemctl enable tarea4.service`.

6. Para fines practicos, el servicio se puede inicial manualmente usando `sudo systemctl start tarea4.service`. De esta forma, podemos ver los resultados sin reinicial el sistema.

7. El comando para ver los journal es `sudo journalctl -u tarea4.service`. Se puede agregar la flag follow para que se vaya actualizando en tiempo real.