# Tipos de Kernel y sus diferencias
Los tipos de kernel que existen son tres: monolitico, microkernel e hibrido.

1. Monolitico

El kernel monolítico opera todo el sistema operativo en un solo espacio de memoria, llamado espacio de kernel. Esto significa que todos los servicios del sistema (como gestión de memoria, sistemas de archivos, controladores de dispositivos) se ejecutan en el mismo espacio de direcciones. Al estar todo en el mismo espacio de memoria, las llamadas entre diferentes partes del sistema son muy rápidas, ya que no hay necesidad de cambiar entre diferentes espacios de memoria o modos de procesador. Debido a su naturaleza integrada, es más difícil añadir o modificar funcionalidades sin recompilar todo el kernel. Además, un fallo en cualquier parte del kernel puede afectar a todo el sistema.

2. Microkernel

Solo las funciones más básicas y esenciales (como la gestión de memoria y la comunicación entre procesos) se ejecutan en el espacio del kernel.
La mayoría de los servicios del sistema operativo, como los controladores de dispositivos y los sistemas de archivos, se ejecutan en el espacio de usuario como procesos separados. Esta separación mejora la seguridad y la estabilidad, ya que un fallo en un servicio no afecta necesariamente a todo el sistema. También es más fácil añadir o modificar servicios. Sin embargo, la comunicación entre los diferentes componentes puede ser más lenta debido a la necesidad de cambiar entre el espacio de usuario y el espacio del kernel.

3. Kernel híbrido

Toma características de ambos enfoques, ejecutando algunos servicios en el espacio del kernel y otros en el espacio de usuario. Intenta obtener la velocidad de un kernel monolítico con parte de la modularidad y seguridad de un microkernel.

# User vs Kernel Mode
Los procesadores modernos generalmente operan en dos modos principales: User Mode (modo usuario) y Kernel Mode (modo kernel).

El User Mode es el modo en el que se ejecutan las aplicaciones de usuario. Tiene acceso limitado a los recursos del hardware.
No puede ejecutar instrucciones privilegiadas ni acceder directamente a ciertas áreas de memoria. Este proporciona un entorno más seguro y aislado para las aplicaciones. El cambio de User Mode a Kernel Mode se produce mediante system calls, interrupciones o excepciones.

El Kernel Mode es el modo en el que se ejecuta el kernel del sistema operativo. Tiene acceso completo a todos los recursos del hardware. Puede ejecutar cualquier instrucción del procesador y acceder a cualquier área de memoria. Es necesario para realizar operaciones críticas del sistema. El cambio de Kernel Mode a User Mode ocurre cuando el kernel completa una tarea y devuelve el control a una aplicación de usuario.

# Interrumptions vs Traps
Tanto las interrupciones como las traps son mecanismos que permiten al procesador cambiar el flujo de ejecución, pero tienen diferentes orígenes y propósitos. Son fundamentales para el funcionamiento eficiente y seguro de los sistemas operativos modernos, permitiendo la multitarea y el acceso controlado a recursos del sistema.

Las Interrupciones son eventos externos al programa en ejecución. Generalmente son asíncronas, es decir, pueden ocurrir en cualquier momento. El procesador guarda el estado actual y salta a una rutina de manejo de interrupciones. Después de manejar la interrupción, el procesador regresa a la tarea original. Algunos ejemplos pueden ser:
- Interrupción de hardware: cuando un dispositivo requiere atención (como un clic de ratón).
- Interrupción de temporizador: utilizada para la multitarea.

Las Trampas son eventos internos generados por el programa en ejecución. Son síncronas, ocurren en momentos específicos durante la ejecución del programa. También conocidas como excepciones de software. El procesador cambia a Kernel Mode para manejar la trap y luego regresa al User Mode. Algunos ejemplos pueden ser:
- System calls: cuando un programa solicita un servicio del sistema operativo.
- Excepciones: como división por cero o acceso a memoria no permitido.

Algunas diferencias clave son:
- Las interrupciones son externas, las traps son internas.
- Las interrupciones son generalmente impredecibles, las traps son predecibles.
- Las interrupciones manejan eventos externos, las traps manejan eventos internos o solicitudes de servicio.
- Ambas son manejadas por el kernel, pero las rutinas de manejo pueden ser diferentes.