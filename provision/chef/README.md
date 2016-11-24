## Provisionamiento con Chef

Para realizar el provisionamiento con chef, inicialmente lo instalamos en la máquina virtual introduciendo en consola las siguientes líneas:

 `sudo apt-get install ruby1.9.1 ruby1.9.1-dev rubygems` 
 `sudo gem install ohai chef`
 `curl -L https://www.opscode.com/chef/install.sh | sudo bash`

[Imagen 1](https://github.com/STiago/Pictures/blob/master/chef1.png)

[Imagen 2](https://github.com/STiago/Pictures/blob/master/chef2.png)

[Imagen 3](https://github.com/STiago/Pictures/blob/master/chef3.png)

Seguidamente instalamos git para poder clonar el repositorio haciendo `sudo apt-get install git`.

Lo clonamos con `git clone nombrerespositorio` y finalmente provisionamos ejecutando `sudo chef-solo -c solo.rb`

[Imagen 5](https://github.com/STiago/Pictures/blob/master/chef5.png)

Usaremos AWS con Ubuntu 14.04.


