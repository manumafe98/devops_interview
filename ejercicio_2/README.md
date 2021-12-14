# Instrucciones para la implementación de la aplicación

El backend de nuestra aplicación está construido en Django con una imagen de Python versión 3.7--slim-buster y el frontend del mismo en React.js con una imagen de node:alpine.

## Implementar nuestra app localmente

1 - Clonar desde github el repositorio (git clone https://github.com/Manumafe98/devops_interview.git) 

2 - Una vez tengamos el mismo pararnos en el path ./devops_interview/ejercicio_2

3 - Crear un archivo .env rellenando las variables que podemos ver en el .env-template

4 - Luego ejecutar un docker-compose up --build, para crear toda la estructura de nuestra aplicación, podemos también utilizar el flag -d para que corra en background

5 - Para verificar desde nuestra máquina local podemos ejecutar un curl https://localhost:puerto o desde el navegador 

## Implementar nuestra app en AWS

1 - Dirigirnos a la consola de AWS

2 - Seleccionar el servicio EC2, launch instances, elegimos la última versión de Amazon linux, luego el storage correspondiente que necesitemos, dentro del punto Configure instance en el apartado de User data debemos colocar el script que se encuentra [acá](user-data.sh) bajo el nombre de user-data, deberíamos copiar el contenido y pegarlo o subirlo como archivo 

3 - Es importante que tengamos generado un Security Group tanto como un NACL que permita acceso desde el exterior a los puertos que coloquemos en el .env

4 - Una vez tengamos arriba nuestra instancia ejecutamos un git clone https://github.com/Manumafe98/devops_interview.git, para clonar nuestro repo de git

5 - Nos paramos en el directorio de trabajo ./devops_interview/ejercicio_2 

6 - Generamos nuestro archivo .env siguiendo las variables colocadas en el .env-templates

7 - Y por último ejecutamos el comando: sudo docker-compose up --build el cual nos debería crear nuestras imágenes y dejar corriendo los contenedores

8 - Para verificar desde la misma instancia podríamos ejecutar un curl https://localhost:puerto o si ya tenemos configurados los correspondientes security group/nacls desde el navegador con la ip pública de la instancia:puerto 