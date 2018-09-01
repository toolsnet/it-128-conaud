class Tip_doc
#Metodo constructor
	def initialize(id_tip_doc,nom_tip_doc)
             @id_tip_doc = id_tip_doc
             @nom_tip_doc = nom_tip_doc
	end

	#Se definen permisos de acceso a las propiedades de la clase
    attr_accessor :id_tip_doc,:nom_tip_doc


    #Adiciona un nuevo registro
    def insertar(id_tip_doc,nom_tip_doc)
    	puts "insertar: "
    	print "INSERT INTO public.tip_doc(
            id_tip_doc, nom_tip_doc)
    VALUES (?, ?);"
    end
    #Actualiza un registro
    def actualizar(id_tip_doc,nom_tip_doc)
    	puts "actualizar: "
    	print "UPDATE public.tip_doc
   		SET id_tip_doc=?, nom_tip_doc=?
 		WHERE <condition>;"
	end


	#Elimina un registro
    def eliminar (id_tip_doc)
    	puts "eliminar: "
    	print "DELETE FROM public.tip_doc
 WHERE <condition>;
"
    end
    
    #Consultar registros
    def consultar (id_tip_doc)
    	puts "consultar: "
    	print "SELECT id_tip_doc, nom_tip_doc
  FROM public.tip_doc;"
    end




end


tip_doc1 = Tip_doc.new(1,2)

tip_doc1.insertar(1,2)
puts "----------------------------------------------------------------------------"
tip_doc1.actualizar(1,2)
puts "----------------------------------------------------------------------------"
tip_doc1.eliminar(1)
puts "----------------------------------------------------------------------------"
tip_doc1.consultar(1)
