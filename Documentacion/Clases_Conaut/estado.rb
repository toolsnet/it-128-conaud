class Estado

	#Metodo constructor
	def initialize(id_est_den, nom_est)
		@id_est_den=id_est_den
		@nom_est=nom_est		
	end

	
    #Se definen permisos de acceso a las propiedades de la clase
    attr_accessor :id_est_den, :nom_est

    #~Se definen los metodos de la clase

    #Adiciona un nuevo registro
    def insertar (id_est_den, nom_est)
    	puts "insertar: "
    	print "INSERT INTO public.estados(
            id_est_den, nom_est)
            VALUES (?, ?);"
    end

    #Actualiza un registro
    def actualizar (id_est_den, nom_est)
    	puts "actualizar: "
    	print "UPDATE public.estados
               SET id_est_den=?, nom_est=?
               WHERE <condition>;"
    end

    #Elimina un registro
    def eliminar (id_est_den)
    	puts "eliminar: "
    	print "DELETE FROM public.estados
 				WHERE <condition>;"
    end
    
    #Consultar registros
    def consultar (id_est_den)
    	puts "consultar: "
    	print "SELECT id_est_den, nom_est
                 FROM public.estados;"
    end

end

estado1 =Estado.new(1,2)

estado1.insertar(1,2)
puts "----------------------------------------------------------------------------"
estado1.actualizar(1,2)
puts "----------------------------------------------------------------------------"
estado1.eliminar(1)
puts "----------------------------------------------------------------------------"
estado1.consultar(1)
