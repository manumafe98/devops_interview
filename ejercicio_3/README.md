## Instrucciones para la ejecución exitosa del proceso de CI

1 - Crear un repositorio en Github

2 - Tener generado un token que permita la utilización de github actions desde Settings --> Developer settings --> Personal access tokens --> Generate new token (Importante tener tildado WORKFLOW)

3 - En nuestro repositorio colocar los secrets de DOCKER_HUB_USERNAME y DOCKER_HUB_ACCESS_TOKEN con nuestras respectivas credenciales, desde Settings --> Secrets --> New repository secret, en caso de no tener un token en docker hub, deberíamos dirigirnos a Account settings --> Security --> New access token

4 - Clonar el repositorio Manumafe98/devops_interview (git clone https://github.com/Manumafe98/devops_interview.git)

5 - Luego pararnos en el path ./devops_interview/ejercicio_3 

6 - Conectarnos remotamente con el repositorio recientemente generado (git remote add origin https://ejemplo, colocando el alias deseado en vez de origin)

7 - Realizar un git init, git add . , git commit -m "mensaje deseado" y un git push origin master (Importante estar en el master branch)

8 - Luego de este procedimiento deberíamos ver que en nuestro repositorio generado en el apartado de Actions se están realizando una serie de pasos y una vez finalizados en nuestro docker hub --> My profile en repositorios deberíamos ver uno nuevo generado con username/nginx_ej3

9 - Generamos un archivo .env en el directorio ./devops_interview/ejercicio_3 siguiendo los parámetros que nos muestra el .env-template, guardamos los cambios

10 - Luego ejecutamos docker-copose up -d, lo cual debería levantar nuestra app  

10 - Para verificar el correcto funcionamiento deberíamos ejecutar un curl a localhost o 127.0.0.1 con el puerto seteado en nuestros parametros ej: https://127.0.0.1:8080

11 - En caso de querer modificar el index.html para realizar pruebas, debemos editar el mismo, seguir los pasos del punto 7 ver que nuestra imagen se haya actualizado en nuestro docker hub y borrar las imágenes que tengamos para crear una nueva nuevamente ejecutando docker-compose up -d (docker stop $container_id; docker rm $container_id; docker image rm $image_id)