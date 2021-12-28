## Instrucciones para la ejecución exitosa del proceso de CI/CD

1 - Crear un repositorio en Github

2 - Tener generado un token que permita la utilización de github actions desde Settings --> Developer settings --> Personal access tokens --> Generate new token (Importante tener tildado WORKFLOW)

3 - En nuestro repositorio colocar los secrets de DOCKER_HUB_USERNAME y DOCKER_HUB_ACCESS_TOKEN con nuestras respectivas credenciales, desde Settings --> Secrets --> New repository secret, en caso de no tener un token en docker hub, deberíamos dirigirnos a Account settings --> Security --> New access token

4 - Clonar el repositorio Manumafe98/devops_interview (git clone https://github.com/Manumafe98/devops_interview.git)

5 - Luego pararnos en el path ./devops_interview/ejercicio_3 

6 - Conectarnos remotamente con el repositorio recientemente generado (git remote add origin https://ejemplo, colocando el alias deseado en vez de origin)

7 - Debemos generar una instancia EC2 desde la consola de AWS colocando en el user data la siguiente [informacion](/devops_interview/ejercicio_2/user-data.sh) y un security group que permita el acceso ssh y http desde cualquier red, en lo posible generar una elactic ip y asociarla tambien a la misma, asegurandonos que tenemos una llave privada para acceder al servidor y en caso contrario generarla en la creacion de la instancia

8 - Luego debemos agregar como secrets GH_TOKEN y GH_USERNAME con el token y user correspondiente de github, HOST con la ip correspondiente de la instancia, USER con el user que hayamos generado que seria por defecto ec2-user (recomendacion dejar el default) 

9 - Realizamos un git init donde nos habiamos quedado parados

10 - Modificamos el index.html para realizar la prueba, verificando estar en el master branch, realizamos un git add . y luego un git commit -m "mensaje" 

11 - Deberiamos ver en neustras Actions el proceso de build y luego deploy y verificar con un sudo docker ps que el contenedor este corriendo en la instancia en caso de ser asi con un curl http://127.0.0.1:8080 podriamos ver el contenido de nuestro index.html