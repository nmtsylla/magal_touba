/*create table articles(id serial primary key, titre varchar, surtitre text, soustitre text, descriptif text, contenu text, popularite float, rubrique_id integer, view_count integer, created_at date, updated_at date);
*/
insert into articles(titre, surtitre, contenu, rubrique_id, popularite, view_count, created_at, updated_at) (select titre, chapo, texte, id_rubrique, popularite, visites, date_redac, date_modif from spip_articles) ;
