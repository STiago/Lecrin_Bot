package 'nano'
directory '/home/ubuntu/Lecrin_Bot/provision/chef'
file "/home/ubuntu/Lecrin_Bot/provision/chef/LEEME" do
	owner "ubuntu"
	group "ubuntu"
	mode 00544
	action :create
	content "Directorio para documentos"
end
