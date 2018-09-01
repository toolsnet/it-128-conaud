class Autoridad

	#Metodo constructor
	def initialize(id_aut, id_tip_doc, num_doc_aut, pri_nom_aut, seg_nom_aut, pri_ape_aut, seg_ape_aut, usu_aut, pas_aut)
		@id_aut=id_aut
		@id_tip_doc=id_tip_doc
		@num_doc_aut=num_doc_aut
		@pri_nom_aut=pri_nom_aut
		@seg_nom_aut=seg_nom_aut
		@pri_ape_aut=pri_ape_aut
		@seg_ape_aut=seg_ape_aut
		@usu_aut=usu_aut
		@pas_aut=pas_aut		
	end

	
    #Se definen permisos de acceso a las propiedades de la clase
    attr_accessor :id_aut, :id_tip_doc, :num_doc_aut, :pri_nom_aut, :seg_nom_aut, :pri_ape_aut, :seg_ape_aut, :usu_aut, :pas_aut

    #~Se definen los metodos de la clase

    #Adiciona un nuevo registro
    def insertar (id_aut, id_tip_doc, num_doc_aut, pri_nom_aut, seg_nom_aut, pri_ape_aut, seg_ape_aut, usu_aut, pas_aut)
    	puts "insertar: "
    	print "INSERT INTO public.autoridad(
            	id_aut, id_tip_doc, num_doc_aut, pri_nom_aut, seg_nom_aut, pri_ape_aut, 
            	seg_ape_aut, usu_aut, pas_aut)
    			VALUES (?, ?, ?, ?, ?, ?, 
            	?, ?, ?);"
    end

    #Actualiza un registro
    def actualizar (id_aut, id_tip_doc, num_doc_aut, pri_nom_aut, seg_nom_aut, pri_ape_aut, seg_ape_aut, usu_aut, pas_aut)
    	puts "actualizar: "
    	print "UPDATE public.autoridad
               SET id_aut=?, id_tip_doc=?, num_doc_aut=?, pri_nom_aut=?, seg_nom_aut=?, 
               pri_ape_aut=?, seg_ape_aut=?, usu_aut=?, pas_aut=?
               WHERE <condition>;"
    end

    #Elimina un registro
    def eliminar (id_aut)
    	puts "eliminar: "
    	print "DELETE FROM public.autoridad
 				WHERE <condition>;"
    end
    
    #Consultar registros
    def consultar (id_aut)
    	puts "consultar: "
    	print "SELECT id_aut, id_tip_doc, num_doc_aut, pri_nom_aut, seg_nom_aut, pri_ape_aut, 
       			seg_ape_aut, usu_aut, pas_aut
  				FROM public.autoridad;"
    end

end

autoridad1 =Autoridad.new(1,2,3,4,5,6,7,8,9)

autoridad1.insertar(1,2,3,4,5,6,7,8,9)
puts "----------------------------------------------------------------------------"
autoridad1.actualizar(1,2,3,4,5,6,7,8,9)
puts "----------------------------------------------------------------------------"
autoridad1.eliminar(1)
puts "----------------------------------------------------------------------------"
autoridad1.consultar(1)
