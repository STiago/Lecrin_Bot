## Provisionamiento con Ansible

En primer lugar instalamos ansible usando el comando `sudo apt-get install ansible` como muestra la siguiente captura:

![Instalacion ansible](https://github.com/STiago/Pictures/blob/master/1ansible.png)

A continuación debemo de modificar el fichero de ansible hosts que se encuentra en /etc/ansible/hosts introduciéndole la IP de nuestra máquina virtual de AWS. Se ha de mencionar que esta máquina tiene la iso de Ubuntu 14.04.
Para lanzar la máquina virtual se ha de seguir el siguiente [tutorial](https://aws.amazon.com/es/getting-started/tutorials/launch-a-virtual-machine/)

![Modificación del fichero hosts](https://github.com/STiago/Pictures/blob/master/2ansible.png)

Realizadas estas modificaciones, para conectarnos con la máquina virtual debemos de copiar la clave del fichero ".pem" y ademá establecer el nombre de "victoriakey.pem"

aws ec2 create-key-pair --key-name MyKeyPair --query 'KeyMaterial' --output text > MyKeyPair.pem


Seguidamente creamos el fichero donde vana ir las herramientas y los paquetes que se desean instalar, también añadimos las órdenes que deseamos que se ejecuten. Todo ello se va a introducir en el fichero "playbook.yml" como se muestra a continuación:

![Playbook](https://github.com/STiago/Pictures/blob/master/playbookansible.png)


Finalmente tras realizar todos estos pasos solo tenemos que ejecutar la siguiente línea de comandos para provisionar la máquina con ansible `ansible-playbook playbook.yml` como se muestra en la siguiente captura:


![Provisionamiento](https://github.com/STiago/Pictures/blob/master/ansiblefin.png)




