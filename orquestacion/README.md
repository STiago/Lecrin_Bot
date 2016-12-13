## Orquestación de máquinas virtuales (Vagrant-AWS-Ansible)

Para realizar la práctica correctamente es necesario tener un usuario creado en AWS, además se ha de crear un grupo de seguridad con nombre vagrant abriendo los puertos HTTP, HTTPS y SSH. (Mas información en http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/get-set-up-for-amazon-ec2.html)

Se ha de mencionar que se necesitan exportar las siguientes variables de entorno con sus valores los cuales van a ser consultados por Vagrant para el despliegue de la máquina virtual y el provisionamiento en AWS EC2. 

```
export AWS_KEY=[AccessKey]
export AWS_SECRET=[SecretKey]
export AWS_SECURITY_GROUP_NAME=[SGName]
export AWS_KEYNAME=[keyPairName]
export AWS_KEY_PATH=[Path to your private key]
```
Estas variables se han de recoger en un script para su fácil uso.

Seguidamente se ha de instalar el plugin vagrant-aws realizando `vagrant plugin instal vagrant-aws` con el fin de conectarse a AWS.(Para que funcione correctamente se ha de tener instalada la versión de Vagrant 1.8.7).

Una vez instalado todo correctamente, creamos un directorio donde añadimos un box de vagran que tenga proveedor aws como indica la siguiente línea:

` vagrant box add dummy https://github.com/mitchellh/vagrant-aws/raw/master/dummy.box`

En este directorio se habrá creado el fichero `Vagrantfile` al hacer `vagrant init` el cual se ha de modificar correctamente para finalmente iniciar la maquina con la siguiente línea de órdenes:

``` 
vagrant up --provider=aws
```

Para conectarse a las máquinas solo ha de hacer `vagrant ssh`.

Si se desea destruir la instancia creada se ha de ejecutar `vagrant destroy` desde el directorio donde está el fichero Vagrantfile.






