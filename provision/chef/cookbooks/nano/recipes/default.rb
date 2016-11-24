package 'nano'
directory '/home/victoria/Escritorio/MASTER/CC/Lecrin_Bot/provision/chef'
file "/home/victoria/Escritorio/MASTER/CC/Lecrin_Bot/provision/chef/LEEME" do
	owner "victoria"
	group "victoria"
	mode 00544
	action :create
	content "Directorio para documentos"
end
