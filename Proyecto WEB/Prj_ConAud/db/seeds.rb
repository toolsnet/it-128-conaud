# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


TipDoc.create(nom_tip_doc: 'CEDULA')
TipDoc.create(nom_tip_doc: 'TARJETA IDENTIDAD')


(10..30).each do |i|

  Denunciante.create(
  id_tip_doc: 1,
  num_doc_den: 123456789 + (i*100101010),
  fec_exp_doc_den: "1980-12-#{i}",
  fec_nac_den: "19#{i}-10-12" ,
  pri_nom_den: "priNden#{i}",
  seg_nom_den: "segNden#{i}",
  pri_ape_den: "priApeden#{i}",
  seg_ape_den: "segApeden#{i}",
  tel_den: "#{i}234567",
  dir_den: "calle #{i}",
  push_den: "push#{i}",
  ema_den: "den#{i}@coreo.com"
  )

  
Denuncias.create( id_usu_den: i-9,
  lat_den: 4.583+i,
  lon_den: -74.129+i,
  ima_fue: "img #{i}",
  aud_rep: "audio #{i}",
  aud_niv: 120 + i+10,
  fec_den: "2018-10-#{i}",
  hor_den: "20:#{i}:#{i}"
)

end

