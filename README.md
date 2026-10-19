<img width="100%" src="https://capsule-render.vercel.app/api?type=waving&color=0:007ACC,100:5DADE2&height=260&section=header&text=Alarma%20personal&desc=Bienvenidos%20usuarios%20a%20mi%20proyecto&fontSize=43&fontColor=ffffff&descSize=18&fontAlignY=38&descAlignY=58&animation=fadeIn"/>

<p align="justify">Este proyecto, llamado <b>alarma personal</b>, fue desarrollado en <b>pseint</b> como un ejercicio práctico para fortalecer la lógica de programación mediante la creación de un sistema de gestión de alarmas personales desde la consola. El programa cuenta con un menú principal de siete opciones que permite <b>registrar, editar, eliminar, buscar, listar y consultar los detalles</b> de las alarmas programadas. Cada alarma almacena datos como el título, la fecha, la hora, el lugar, la prioridad, la descripción y el estado, utilizando arreglos con una capacidad de <b>100 posiciones durante la ejecución</b>. Además, cada alarma recibe un <b>id único y autoincremental</b> que se utiliza para identificarla en las operaciones de edición, eliminación, búsqueda y consulta. Durante su desarrollo se aplicaron conceptos fundamentales de programación, como variables, arreglos, estructuras condicionales, ciclos repetitivos y estructuras de selección, además de procesos para buscar, modificar, eliminar y organizar registros. Este proyecto permite poner en práctica los conocimientos adquiridos en PSeInt y sirve como base para desarrollar sistemas de gestión más avanzados utilizando otros lenguajes y tecnologías.</p>

<h2 align="center">⚙️ Funcionamiento del menú principal</h2>

### ➕ Registrar alarma

<p align="justify">La opción <b>1) registrar alarma</b> permite agregar una nueva alarma personal. El programa asigna automáticamente un <b>id</b> tomado de la variable <b>siguienteID</b>, lo muestra en pantalla y luego incrementa esa variable en uno, de modo que cada alarma tenga un identificador distinto. Después solicita el <b>título, la fecha, la hora, el lugar, la prioridad, la descripción y el estado</b>, y guarda cada dato en la posición <b>totalAlarmas + 1</b> de su respectivo arreglo. Al terminar, aumenta la variable <b>totalAlarmas</b> en uno y muestra el mensaje <b>"alarma personal registrada correctamente."</b>.</p>

### ✏️ Editar alarma

<p align="justify">La opción <b>2) editar alarma</b> permite modificar la información de una alarma registrada. Primero, el programa comprueba si existen alarmas almacenadas mediante la variable <b>totalAlarmas</b>. Si no hay registros, muestra el mensaje <b>"no hay alarmas registradas."</b>. En caso contrario, presenta una lista con el id, título, fecha, hora, lugar, prioridad, descripción y estado de cada alarma. Después, solicita el <b>id</b> de la alarma que se desea editar y utiliza un ciclo <b>para</b> que recorre los arreglos comparando <b>id[i] = idBuscar</b>. Cuando encuentra la coincidencia, cambia la variable <b>encontrado</b> a <b>verdadero</b>, solicita los nuevos valores de los siete campos y los guarda directamente en las posiciones correspondientes. Finalmente, presenta el mensaje <b>"alarma personal editada correctamente."</b>. Si al terminar el recorrido <b>encontrado</b> sigue en <b>falso</b>, informa <b>"no se encontró una alarma con ese id."</b>.</p>

### 🗑️ Eliminar alarma

<p align="justify">La opción <b>3) eliminar alarma</b> permite eliminar una alarma registrada mediante su id. Antes de comenzar, el programa comprueba que existan alarmas almacenadas. Si la lista está vacía, muestra el mensaje <b>"no hay alarmas registradas."</b>. Si hay registros, presenta la lista completa y solicita el <b>id</b> de la alarma que se desea eliminar. Al encontrarla, y siempre que no sea la última de la lista, utiliza un ciclo <b>para</b> controlado por la variable <b>j</b>, que desplaza una posición hacia atrás los datos de las alarmas posteriores en los ocho arreglos: <b>id, titulo, fecha, hora, lugar, prioridad, descripcion y estado</b>. Posteriormente, disminuye la variable <b>totalAlarmas</b> en uno y muestra el mensaje <b>"alarma personal eliminada correctamente."</b>. Si el id no corresponde a ninguna alarma, informa que no se encontró una alarma con ese id.</p>

### 🔎 Buscar alarma

<p align="justify">La opción <b>4) buscar alarma</b> permite localizar una alarma mediante su id. Primero, el programa comprueba si existen alarmas registradas. Si la lista está vacía, muestra el mensaje <b>"no hay alarmas registradas."</b>. En caso contrario, solicita el id, inicializa la variable lógica <b>encontrado</b> con el valor <b>falso</b> y utiliza un ciclo <b>para</b> para recorrer el arreglo <b>id</b> comparándolo con el valor introducido mediante la condición <b>id[i] = idBuscar</b>. Cuando encuentra una coincidencia, cambia <b>encontrado</b> a <b>verdadero</b> y muestra todos los datos de la alarma en una sola línea separados por barras. Si finaliza el recorrido sin coincidencias, presenta el mensaje <b>"no se encontró una alarma con ese id."</b>.</p>

### 📋 Listar alarmas

<p align="justify">La opción <b>5) listar alarmas</b> permite visualizar las alarmas registradas actualmente. Antes de mostrar la información, el programa comprueba si la variable <b>totalAlarmas</b> es igual a cero. Si no existen registros, presenta el mensaje <b>"no hay alarmas registradas."</b>. Si hay alarmas disponibles, utiliza un ciclo <b>para</b> que recorre los arreglos desde la primera posición hasta el total de alarmas registradas, mostrando en cada línea el id, el título, la fecha, la hora, el lugar, la prioridad y el estado. En esta vista no se muestra la <b>descripción</b>, que se consulta con las opciones de buscar o ver detalles. Esta función facilita revisar los registros existentes sin necesidad de buscar cada alarma individualmente.</p>

### 📄 Ver detalles de la alarma

<p align="justify">La opción <b>6) ver detalles de la alarma</b> permite consultar todos los datos de una alarma específica. Primero, el programa comprueba si existen alarmas registradas. Si la lista está vacía, muestra el mensaje <b>"no hay alarmas registradas."</b>. En caso contrario, solicita el id de la alarma y la busca con un ciclo <b>para</b>. Si la encuentra, muestra cada dato en una línea independiente: <b>id, título, fecha, hora, lugar, prioridad, descripción y estado</b>. Si el id no corresponde a ninguna alarma, presenta el mensaje <b>"no se encontró una alarma con ese id."</b>.</p>

### 🚪 Salir del menú principal

<p align="justify">La opción <b>7) salir</b> finaliza la ejecución del programa y muestra el mensaje <b>"gracias por utilizar la alarma personal."</b>. El menú principal se encuentra dentro de una estructura repetitiva <b>repetir ... hasta que</b>, cuya condición de salida es <b>opcion = 7</b>, que coincide con el número de la opción de salida presentada en el menú. Mientras el usuario seleccione cualquier otra opción, el programa vuelve a mostrar el menú.</p>

<h2 align="center">🧠 Temas aplicados en el proyecto</h2>

### 📦 Variables

<p align="justify">En este proyecto se utilizan variables para guardar la opción seleccionada en el menú, controlar la cantidad de alarmas registradas, generar los identificadores, recorrer los arreglos, almacenar el id que se desea buscar y comprobar si se encontró una coincidencia. Cada variable cumple una función específica dentro de las operaciones de gestión de alarmas.</p>

🔢 **Opcion:** Almacena la opción seleccionada por el usuario en el menú principal.

📊 **TotalAlarmas:** Almacena la cantidad actual de alarmas registradas.

🆔 **SiguienteID:** Guarda el próximo id que se asignará a una alarma nueva. Solo aumenta, por lo que los ids no se repiten aunque se eliminen registros.

🔄 **I:** Funciona como contador en los ciclos <b>para</b> que recorren los arreglos.

🔁 **J:** Controla el recorrido utilizado para desplazar los datos durante la eliminación de una alarma.

🔎 **IdBuscar:** Almacena el id introducido por el usuario para editar, eliminar, buscar o consultar una alarma.

✅ **Encontrado:** Variable lógica que indica si se encontró una alarma con el id solicitado.

### 🗃️ Arreglos

<p align="justify">En este proyecto se utilizan ocho arreglos relacionados con los datos de cada alarma. Cada arreglo tiene una capacidad de <b>100 posiciones</b> y utiliza el mismo índice para representar la información correspondiente a una misma alarma. Por ejemplo, los datos de una alarma almacenada en la posición <b>1</b> se encuentran distribuidos entre <b>id[1], titulo[1], fecha[1], hora[1], lugar[1], prioridad[1], descripcion[1] y estado[1]</b>. Esta organización permite recorrer, buscar, modificar, mostrar y eliminar las alarmas de manera ordenada.</p>

🆔 **Id[100]:** Almacena el identificador único de cada alarma.

🏷️ **Titulo[100]:** Almacena el título de la alarma.

📅 **Fecha[100]:** Almacena la fecha de la alarma.

⏰ **Hora[100]:** Almacena la hora de la alarma.

📍 **Lugar[100]:** Almacena el lugar asociado a la alarma.

🚦 **Prioridad[100]:** Almacena la prioridad asignada a la alarma.

📝 **Descripcion[100]:** Almacena una descripción adicional de la alarma.

📌 **Estado[100]:** Almacena el estado de la alarma.

### 🔀 Estructuras condicionales

<p align="justify">En este proyecto se utilizan las estructuras <b>si</b> y <b>sino</b> para verificar si existen registros antes de editar, eliminar, buscar, listar o consultar, para determinar si el id introducido corresponde a una alarma existente y para decidir si es necesario desplazar los datos al eliminar (cuando la alarma no es la última de la lista). Estas condiciones permiten que el programa responda de manera diferente según el estado de la lista y el resultado de cada operación.</p>

### 🔄 Estructuras repetitivas

<p align="justify">En este proyecto se utilizan los ciclos <b>para</b> y <b>repetir ... hasta que</b>. Los ciclos <b>para</b> permiten recorrer los arreglos para mostrar las alarmas, buscar ids y acceder a los registros seleccionados. Durante la eliminación, también se utilizan para desplazar los datos de las alarmas posteriores una posición hacia atrás. Por otro lado, el ciclo <b>repetir ... hasta que</b> mantiene activo el menú principal para que el usuario pueda ejecutar diferentes operaciones antes de salir del programa.</p>

### 🎯 Estructura según

<p align="justify">El programa evalúa el valor almacenado en la variable <b>opcion</b> y ejecuta el bloque de instrucciones correspondiente. Cada caso representa una operación específica del sistema: <b>registrar, editar, eliminar, buscar, listar, ver detalles o salir</b>. También se utiliza el bloque <b>de otro modo</b> para mostrar el mensaje <b>"opción no válida."</b> cuando el valor introducido no coincide con ninguna de las opciones definidas.</p>

### 🔢 Dimensionamiento de arreglos

<p align="justify">El programa utiliza la instrucción <b>dimension</b> para establecer la capacidad de los arreglos que almacenan la información de las alarmas. Se definieron <b>100 posiciones</b> para cada arreglo. La cantidad de posiciones ocupadas se controla mediante la variable <b>totalAlarmas</b>, por lo que las operaciones recorren únicamente los registros comprendidos entre la primera posición y el total actual de alarmas.</p>

### 🔄 Reorganización de registros

<p align="justify">Cuando se selecciona una alarma para eliminarla, el programa utiliza un ciclo <b>para</b> que comienza en la posición de la alarma y llega hasta <b>totalAlarmas - 1</b>. En cada repetición, los datos de la posición siguiente se copian sobre la posición actual en los ocho arreglos. Después, la variable <b>totalAlarmas</b> disminuye en uno. De esta manera, las alarmas posteriores ocupan las posiciones disponibles sin dejar espacios vacíos entre los registros activos.</p>

<h2 align="center">¿Cómo se implementaron las operaciones crud en el proyecto?</h2>

<p align="justify">Las operaciones <b>crud</b> se implementaron mediante las opciones del menú principal, permitiendo administrar las alarmas registradas. La operación <b>crear</b> corresponde a <b>registrar alarma</b>, donde se introducen los datos de una nueva alarma; <b>leer</b> se realiza mediante las opciones <b>buscar alarma, listar alarmas y ver detalles de la alarma</b>; <b>actualizar</b> corresponde a <b>editar alarma</b>, donde se modifican los datos de una alarma registrada; y <b>eliminar</b> se realiza mediante la opción <b>eliminar alarma</b>. Estas operaciones utilizan variables, arreglos, condicionales y ciclos para gestionar la información almacenada temporalmente durante la ejecución del programa.</p>

<h2 align="center">Diagrama de flujo del proyecto</h2>

<img src="./alarma_personal.png" alt="diagrama de flujo de alarma personal" width="100%">

<h2 align="center">🛡️ Validaciones del programa</h2>

### 📭 No existen alarmas registradas

<p align="justify">Esta validación se utiliza en las opciones de <b>editar, eliminar, buscar, listar y ver detalles</b>. El programa comprueba si la variable <b>totalAlarmas</b> es igual a <b>0</b> y, si no existen alarmas registradas, muestra el mensaje <b>"no hay alarmas registradas."</b>. Esta comprobación evita continuar con las operaciones que necesitan información almacenada cuando la lista está vacía.</p>

### ❌ Alarma no encontrada

<p align="justify">Esta validación se utiliza en las opciones de <b>editar, eliminar, buscar y ver detalles</b>. El programa inicializa la variable lógica <b>encontrado</b> con el valor <b>falso</b> y recorre el arreglo <b>id</b> para comparar cada valor con el id introducido por el usuario. Cuando encuentra una coincidencia, cambia la variable a <b>verdadero</b> y ejecuta la operación. Si al finalizar el recorrido <b>encontrado</b> continúa siendo <b>falso</b>, muestra el mensaje <b>"no se encontró una alarma con ese id."</b>.</p>

### 🆔 Identificadores únicos

<p align="justify">El programa asigna a cada alarma un id mediante la variable <b>siguienteID</b>, que aumenta en uno con cada registro y nunca disminuye. Gracias a esto, dos alarmas nunca comparten el mismo id, incluso si se eliminan registros intermedios, lo que permite que las búsquedas por id siempre identifiquen una única alarma.</p>

### ⚠️ Opción inválida

<p align="justify">La estructura <b>segun</b> incluye el bloque <b>de otro modo</b>, que muestra el mensaje <b>"opción no válida."</b> cuando el usuario introduce un número que no corresponde a ninguna de las opciones definidas en el menú.</p>

<h2 align="center">🚧 Limitaciones y mejoras futuras</h2>

<p align="justify">Como proyecto de práctica, la versión actual tiene limitaciones conocidas que se pueden mejorar en futuras versiones:</p>

- **Capacidad máxima:** los arreglos tienen 100 posiciones, pero la opción de registrar no comprueba si ya se alcanzó ese límite. Se puede agregar la validación <b>totalAlarmas &lt; 100</b>.
- **Listado incompleto:** la opción de listar no muestra la descripción. Se puede agregar ese campo para que todas las vistas coincidan.
- **Tipos de datos:** los arreglos se dimensionan sin declarar explícitamente su tipo. Se pueden definir con <b>Definir ... Como Cadena</b>.
- **Entradas libres:** la fecha, la hora, la prioridad y el estado se leen como texto libre, sin validar su formato. Se podrían ofrecer opciones predefinidas, por ejemplo prioridad alta, media o baja y estado pendiente o cumplida.
- **Validación del menú:** el programa no controla que el usuario escriba un valor que no sea numérico en el menú principal.
- **Alarma real:** el programa registra y organiza las alarmas, pero aún no avisa cuando llega la fecha y la hora programadas. Una mejora natural sería una opción para ver las alarmas pendientes ordenadas por prioridad o marcar una alarma como cumplida.
- **Código repetido:** la línea que muestra una alarma y la búsqueda por id se repiten en varias opciones; se podrían reemplazar por <b>subprocesos</b>.

<h2 align="center">🎯 Objetivo del proyecto</h2>

<p align="justify">El objetivo principal de este proyecto es fortalecer la <b>lógica de programación</b> mediante el desarrollo de un sistema de gestión de alarmas personales en <b>pseint</b>. A través de su construcción se busca aplicar los conocimientos adquiridos sobre variables, arreglos, estructuras condicionales, ciclos repetitivos y estructuras de selección, integrándolos para resolver un problema de manera organizada. Además, el proyecto permite comprender cómo registrar, consultar, modificar y eliminar información en una aplicación de consola, estableciendo una base para desarrollar sistemas de gestión más completos con otros lenguajes y tecnologías.</p>

<img width="100%" src="https://capsule-render.vercel.app/api?type=waving&color=0:007ACC,100:5DADE2&height=110&section=footer&text=%C2%A9%202026%20%7C%20L%C3%B3gica%20de%20programaci%C3%B3n%20hecha%20en%20pseint%20%7C%20alarma%20personal&fontSize=14&fontColor=FFFFFF&fontAlignY=87.5"/>