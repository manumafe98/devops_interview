#Instrucciones para la ejecucion exitosa del proceso de CI#

1 - Crear un repositorio en Github
2 - Tener generado un token que permita la utilizacion de github actions desde Settings --> Developer settings --> Personal acces tokens --> Generate new token (Importante tener tildado WORKFLOW)
3 - En nuestro repositorio colocar los secrets de DOCKER_HUB_USERNAME y DOCKER_HUB_ACCESS_TOKEN con nuestras respectivas credenciales, desde Settings --> Secrets --> New repository secret, en caso de no tener un token en docker hub, deberiamos dirigirnos a Account settings --> Security --> New acces token
4 - Clonar el repositorio Manumafe98/devops_interview (git clone https://github.com/Manumafe98/devops_interview.git)
5 - Luego pararnos en el path ./devops_interview/ejercicio_3 
6 - Conectarnos remotamente con el repositorio recientemente generado (git remote add origin https://ejemplo, colocando el alias deseado en vez de origin)
7 - Realizar un git init, git add . , git commit -m "mensaje deseado" y un git push origin master (Importante estar en el master branch)
8 - Luego de este procedimiento deberiamos ver que en nuestro repositorio genrado en el apartado de Actions se estan realizando una serie de pasos y una vez finalizados en nuestro docker hub --> My profile en repositories deberiamos ver uno nuevo generado con username/nginx_ej3
9 - Ejecutamos desde nuestro terminal un docker pull username/nginx_ej3 y luego un docker run -d -p 8080:80 username/nginx_ej3
10 - Para verificar el correcto funcionamiento deberiamos ejecutar un curl a localhost o 127.0.0.1 con el puerto 8080 ej: https://127.0.0.1:8080
