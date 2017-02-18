#SOAT project
### README
## Overview:SOAT 
Depenencias Aplicacion:
- ruby 2.4.0
- rails 5.1.0
- Postgresql

Dependencias de Sistema:
- libpq5
- hmtldoc

Dependencias Test:
- RSpec Rails

### Instalación
- Clonar el [proyecto] (git@github.com:candresr/soat.git)
- Crear el proyecto en Heroku (Se requiere tener una cuenta)
- Descargar e instalar [Heroku CLI] (https://devcenter.heroku.com/articles/heroku-cli)
- Clonar el repositorio desde tu local y en el directorio de proyecto 
    * heroku git:clone -a soatdev
- Despliegue 
    * git add .
    * git commit -am "inicio heroku"
    * git push heroku master

### Correr la aplicacion en tu local
- En el directorio soatdev
    * bundle install
    * rake db:migration
    * rails s

# Happy Coding! 
Autor:
Cesar Ramirez