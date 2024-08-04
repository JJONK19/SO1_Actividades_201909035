# Parte 1
1. Creación de Usuarios: Crea tres usuarios llamados `usuario1`, `usuario2` y `usuario3`.
![Imagen1](img/CrearUsuarios.png)

2. Asignación de Contraseñas: Establece una nueva contraseñas para cada usuario creado.
![Imagen2](img/AsignarPass.png)

3. Información de Usuarios: Muestra la información de `usuario1` usando el comando `id`.
![Imagen3](img/InfoUser1.png)

4. Eliminación de Usuarios: Elimina `usuario3`, pero conserva su directorio principal.
![Imagen4](img/EliminarUser3.png)

# Parte 2
1. Creación de Grupos: Crea dos grupos llamados `grupo1` y `grupo2`.
![Imagen5](img/CrearGrupos.png)

2. Agregar Usuarios a Grupos: Agrega `usuario1` a `grupo1` y `usuario2` a `grupo2`.
![Imagen6](img/AñadirGrupos.png)

3. Verificar Membresía: Verifica que los usuarios han sido agregados a los grupos utilizando el comando `groups`.
![Imagen7](img/VerGrupos.png)

4.  Eliminar Grupo: Elimina `grupo2`.
![Imagen17](img/BorrarGrupo.png)

# Parte 3
1. Creación de Archivos y Directorios:
Como `usuario1`, crea un archivo llamado `archivo1.txt` en su directorio principal y escribe algo en él.
Crea un directorio llamado `directorio1` y dentro de ese directorio, un archivo llamado `archivo2.txt`.
![Imagen8](img/CrearArchivos.png)

2. Verificar Permisos: Verifica los permisos del archivo y directorio usando el comando `ls -l` y `ls -ld` respectivamente.
![Imagen9](img/VerPermisosIniciales.png)

3. Modificar Permisos usando `chmod` con Modo Numérico: Cambia los permisos del `archivo1.txt` para que sólo `usuario1` pueda leer y escribir (permisos `rw-`), el grupo pueda leer (permisos `r--`) y nadie más pueda hacer nada.
![Imagen10](img/Permiso640.png)

4. Modificar Permisos usando `chmod` con Modo Simbólico: Agrega permiso de ejecución al propietario del `archivo2.txt`.
![Imagen11](img/PermisoSimbolico.png)

5. Cambiar el Grupo Propietario: Cambia el grupo propietario de `archivo2.txt` a `grupo1`.
![Imagen12](img/CambiarGrupo.png)

6. Configurar Permisos de Directorio: Cambia los permisos del `directorio1` para que sólo el propietario pueda entrar (permisos `rwx`), el grupo pueda listar contenidos pero no entrar (permisos `r--`), y otros no puedan hacer nada.
![Imagen14](img/PermisosDirectorio.png)

7. Comprobación de Acceso: Intenta acceder al `archivo1.txt` y `directorio1/archivo2.txt` como `usuario2`. Nota cómo el permiso de directorio afecta el acceso a los archivos dentro de él.
![Imagen15](img/AccesoUser2.png)

8. Verificación Final: Verifica los permisos y propietario de los archivos y directorio nuevamente con `ls -l` y `ls -ld`.
![Imagen16](img/PermisosFinal.png)

# Reflexión
* ¿Por qué es importante gestionar correctamente los usuarios y permisos en un sistema operativo?
Para uso personal puede que no tenga mucho uso a menos que se comparta el equipo, pero en empresas o cuando el sistema dministra recursos delicados,
es importante restringir y mantener seguro los accesos solo para las personas que van a necesitar trabajar con ellos. 
