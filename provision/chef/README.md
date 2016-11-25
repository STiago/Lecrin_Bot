## Provisionamiento con Chef

Con AWS primero iniciamos la máquina (Usaremos AWS con Ubuntu 14.04.), le damos permisos al fichero .pem y conectamos con ssh:

`chmod 400 parclaves.pem`
`ssh -i "parclaves.pem" ubuntu@ec2-54-243-0-19.compute-1.amazonaws.com`

![Imagen 1](https://github.com/STiago/Pictures/blob/master/chef20.png)

Para realizar el provisionamiento con chef, inicialmente lo instalamos en la máquina virtual introduciendo en consola las siguientes líneas:

 `sudo apt-get install ruby1.9.1 ruby1.9.1-dev rubygems` 
 `sudo gem install ohai chef`
 `curl -L https://www.opscode.com/chef/install.sh | sudo bash`

![Imagen 2](https://github.com/STiago/Pictures/blob/master/chef21.png)

![Imagen 3](https://github.com/STiago/Pictures/blob/master/chef22.png)


Seguidamente instalamos git para poder clonar el repositorio haciendo `sudo apt-get install git`.

![Imagen 4](https://github.com/STiago/Pictures/blob/master/chef23.png)


Lo clonamos con `git clone nombrerespositorio`.

A continuación realizamos las modificaciones necesarias en los ficheros solo.rb y default.rb como se muestra en las siguientes capturas:

![Imagen 5](https://github.com/STiago/Pictures/blob/master/chef30.png)

![Imagen 6](https://github.com/STiago/Pictures/blob/master/chef31.png)

Finalmente provisionamos ejecutando `sudo chef-solo -c solo.rb`

![Imagen 7](https://github.com/STiago/Pictures/blob/master/cheffin.png)






