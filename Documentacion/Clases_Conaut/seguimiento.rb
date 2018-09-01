class Seguimiento

	#Metodo constructor
	def initialize(id_seg, id_den, id_aut, id_est_den, des_seg, fec_seg, hor_seg)
		@id_seg=id_seg
		@id_den=id_den
		@id_aut=id_aut
		@id_est_den=id_est_den
		@des_seg=des_seg
		@fec_seg=fec_seg
		@hor_seg=hor_seg
		
	end

	
    #Se definen permisos de acceso a las propiedades de la clase
    attr_accessor :id_seg, :id_den, :id_aut, :id_est_den, :des_seg, :fec_seg, :hor_seg

    #~Se definen los metodos de la clase

    #Adiciona un nuevo registro
    def insertar (id_seg, id_den, id_aut, id_est_den, des_seg, fec_seg, hor_seg)
    	puts "insertar: "
    	print "INSERT INTO public.seguimientos(
            id_seg, id_den, id_aut, id_est_den, des_seg, fec_seg, hor_seg)
            VALUES (?, ?, ?, ?, ?, ?, ?);"
    end

    #Actualiza un registro
    def actualizar (id_seg, id_den, id_aut, id_est_den, des_seg, fec_seg, hor_seg)
    	puts "actualizar: "
    	print "UPDATE public.seguimientos
               SET id_seg=?, id_den=?, id_aut=?, id_est_den=?, des_seg=?, fec_seg=?, 
                hor_seg=?
                WHERE <condition>;"
    end

    #Elimina un registro
    def eliminar (id_seg)
    	puts "eliminar: "
    	print "DELETE FROM public.seguimientos
                WHERE <condition>;"
    end
    
    #Consultar registros
    def consultar (id_seg)
    	puts "consultar: "
    	print "SELECT id_seg, id_den, id_aut, id_est_den, des_seg, fec_seg, hor_seg
                FROM public.seguimientos;"
    end

end

seguimiento1 =Seguimiento.new(1,2,3,4,5,6,7)

seguimiento1.insertar(1,2,3,4,5,6,7)
puts "----------------------------------------------------------------------------"
seguimiento1.actualizar(1,2,3,4,5,6,7)
puts "----------------------------------------------------------------------------"
seguimiento1.eliminar(1)
puts "----------------------------------------------------------------------------"
seguimiento1.consultar(1)
