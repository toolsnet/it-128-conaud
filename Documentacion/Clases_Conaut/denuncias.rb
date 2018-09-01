class Denuncias 
	#Metodo constructor
	def initialize(id_den,id_usu_den,lat_den,lon_den,ima_fue,aud_rep,aud_niv,fec_den,hor_den)
            @id_den = id_den
            @id_usu_den =  id_usu_den
            @lat_den =  lat_den
            @lon_den =  lon_den
            @ima_fue = ima_fue
            @aud_rep = aud_rep
            @aud_niv = aud_niv
            @fec_den = fec_den 
            @hor_den = hor_den  	
	end

	
	#Se definen permisos de acceso a las propiedades de la clase
    attr_accessor :id_den, :id_usu_den, :lat_den, :lon_den, :ima_fue, :aud_rep, :aud_niv, :fec_den, :hor_den


    #Adiciona un nuevo registro
    def insertar (id_den,id_usu_den,lat_den,lon_den,ima_fue,aud_rep,aud_niv,fec_den,hor_den)
    	puts "insertar: "
    	print "INSERT INTO public.denuncias(
            id_den, id_usu_den, lat_den, lon_den, ima_fue, aud_rep, aud_niv, 
            fec_den, hor_den)
    			VALUES (?, ?, ?, ?, ?, ?, ?, 
            ?, ?);"

    end

	#Actualiza un registro
    def actualizar (id_den,id_usu_den,lat_den,lon_den,ima_fue,aud_rep,aud_niv,fec_den,hor_den)
    	puts "actualizar: "
    	print "UPDATE public.denuncias
   			SET id_den=?, id_usu_den=?, lat_den=?, lon_den=?, ima_fue=?, aud_rep=?, 
       aud_niv=?, fec_den=?, hor_den=?
 		WHERE <condition>;"

	end

#Elimina un registro
    def eliminar (id_den)
    	puts "eliminar: "
    	print "DELETE FROM public.denuncias
 		WHERE <condition>;"
    end
    
    #Consultar registros
    def consultar (id_den)
    	puts "consultar: "
    	print "SELECT id_den, id_usu_den, lat_den, lon_den, ima_fue, aud_rep, aud_niv, 
       fec_den, hor_den
  		FROM public.denuncias;"
    end



end


denuncia1 = Denuncias.new(1,2,3,4,5,6,7,8,9)

denuncia1.insertar(1,2,3,4,5,6,7,8,9)
puts "----------------------------------------------------------------------------"
denuncia1.actualizar(1,2,3,4,5,6,7,8,9)
puts "----------------------------------------------------------------------------"
denuncia1.eliminar(1)
puts "----------------------------------------------------------------------------"
denuncia1.consultar(1)
