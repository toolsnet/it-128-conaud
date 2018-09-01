class Denunciante

#Metodo constructor
	def initialize(id_usu_den,id_tip_doc,num_doc_den,fec_exp_doc_den,fec_nac_den,pri_nom_den,seg_nom_den,pri_ape_den,seg_ape_den,tel_den,dir_den,push_den,ema_den)
         @id_usu_den = id_usu_den 
         @id_tip_doc = id_tip_doc
         @num_doc_den = num_doc_den
         @fec_exp_doc_den = fec_exp_doc_den
         @fec_nac_den = fec_nac_den
         @pri_nom_den = pri_nom_den
         @seg_nom_den = seg_nom_den
         @pri_ape_den = pri_ape_den
         @seg_ape_den = seg_ape_den
         @tel_den = tel_den 
         @dir_den = dir_den
         @push_den = push_den
        
         @ema_den = ema_den			
	end

	#Se definen permisos de acceso a las propiedades de la clase
    attr_accessor :id_usu_den, :id_tip_doc, :num_doc_den, :fec_exp_doc_den, :fec_nac_den, :pri_nom_den, :seg_nom_den, :pri_ape_den, :seg_ape_den, :tel_den, :dir_den,:push_den,:ema_den

	#Adiciona un nuevo registro
    def insertar (id_usu_den,id_tip_doc,num_doc_den,fec_exp_doc_den,fec_nac_den,pri_nom_den,seg_nom_den,pri_ape_den,seg_ape_den,tel_den,dir_den,push_den,ema_den)
    	puts "insertar: "
    	print "INSERT INTO public.denunciante(
            id_usu_den, id_tip_doc, num_doc_den, fec_exp_doc_den, fec_nac_den, 
            pri_nom_den, seg_nom_den, pri_ape_den, seg_ape_den, tel_den, 
            dir_den, push_den, ema_den)
            VALUES (?, ?, ?, ?, ?, 
            ?, ?, ?, ?, ?, 
            ?, ?, ?);"

    end

	#Actualiza un registro
    def actualizar (id_usu_den,id_tip_doc,num_doc_den,fec_exp_doc_den,fec_nac_den,pri_nom_den,seg_nom_den,pri_ape_den,seg_ape_den,tel_den,dir_den,push_den,ema_den)
    	puts "actualizar: "
    	print "UPDATE public.denunciante
   				SET id_usu_den=?, id_tip_doc=?, num_doc_den=?, fec_exp_doc_den=?, 
      			 fec_nac_den=?, pri_nom_den=?, seg_nom_den=?, pri_ape_den=?, seg_ape_den=?, 
      			 tel_den=?, dir_den=?, push_den=?, ema_den=?
 				WHERE <condition>;"

	end
	#Elimina un registro
    def eliminar (id_usu_den)
    	puts "eliminar: "
    	print "DELETE FROM public.denunciante
 				WHERE <condition>;"
    end
    
    #Consultar registros
    def consultar (id_usu_den)
    	puts "consultar: "
    	print "SELECT id_usu_den, id_tip_doc, num_doc_den, fec_exp_doc_den, fec_nac_den, 
       			pri_nom_den, seg_nom_den, pri_ape_den, seg_ape_den, tel_den, 
     			dir_den, push_den, ema_den
 			    FROM public.denunciante;"
    end



end

denunciante1 = Denunciante.new(1,2,3,4,5,6,7,8,9,10,11,12,13)

denunciante1.insertar(1,2,3,4,5,6,7,8,9,10,11,12,13)
puts "----------------------------------------------------------------------------"
denunciante1.actualizar(1,2,3,4,5,6,7,8,9,10,11,12,13)
puts "----------------------------------------------------------------------------"
denunciante1.eliminar(1)
puts "----------------------------------------------------------------------------"
denunciante1.consultar(1)

