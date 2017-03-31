-- ADD ATTRIBUTES
INSERT INTO csr.attribute(code, description, name) VALUES(
  'AGIL', 'A measure of a character''s grace and dexterity.', 'Agility'), (
  'INT', 'Measures a character''s ability to understand situations, concentrate, to reason, and to remember. It is essential to intellect-based skills.', 'Intellect'), (
  'BV', 'Measures a character''s ability to speak eloquently, sing etc., and is a very important Attribute for strong Charismatic skills.', 'Bardic Voice'), (
  'STR', 'Measures the raw power of a character''s body. It is important in determining Body and Fatigue Points and it affects physical and athletic skills.', 'Strength'), (
  'WIS', 'Measures a character''s judgement and insight into the deeper significance of things than might be apparent on the surface.', 'Wisdom'), (
  'APP', 'Measures a character''s physical attractiveness. It affects his/her impact on relationships with others.', 'Appearance'), (
  'CON', 'A measure of how healthy and durable a character is. It helps determine Body and Fatigue Points, influences how a character heals or resists disease, and affects survival.', 'Constitution'), (
  'DISC', 'Measures your character''s patience and ability to remain focused on a subject or goal. Disciplined characters tend to learn skills faster and their morale is higher as well.', 'Discipline'), (
  'PTY', 'Measures a character''s religious faith or belief.', 'Piety'), (
  'DF', 'How difficult it is to learn a skill.', 'Difficulty Factor'), (
  'BP', 'The current amount of physical damage the character can sustain.', 'Body Points'), (
  'MBP', 'The maximum amount of physical damage the character can sustain.', 'Maximum Body Points');


-- ADD BIRTH_ASPECTS
INSERT INTO csr.birth_aspect(code, title, roll_min, roll_max, points_adjustment) VALUES(
  'WELL_ASPECTED', 'Well Aspected', 0, 0, 0), (
  'NEUTRALLY_ASPECTED', 'Neutrally Aspected', 0, 0, 0), (
  'POORLY_ASPECTED', 'Poorly Aspected', 0, 0, 0);


-- ADD EQUIPMENT_ELEMENT_TYPES
INSERT INTO csr.equipment_element_type(code, value) VALUES(

-- ADD EQUIPMENT_ITEM_MODIFIERS
INSERT INTO csr.equipment_item_modifier(code, percent, special, value) VALUES(

-- ADD EQUIPMENT_SLOTS
INSERT INTO csr.equipment_slot(code, value) VALUES(

-- ADD FAMILY_STATUSS
INSERT INTO csr.family_status(code, title, roll_min, roll_max, points_adjustment) VALUES(
  'BLACK_SHEEP', 'Black Sheep', 0, 0, 0), (
  'CREDIT_TO_THE_FAMILY', 'Credit to the Family', 0, 0, 0), (
  'GOOD_SON_DAUGHTER', 'Good <gen_off>', 0, 0, 0);


-- ADD GENDERS
INSERT INTO csr.gender(description, name, subjective, objective, dependent_possessive, independent_possessive, reflexive, gender_offspring, gender_parent) VALUES(
  'male', 'Male', 'he', 'him', NULL, NULL, 'himself', NULL, NULL), (
  'female', 'Female', 'she', 'her', NULL, NULL, 'herself', NULL, NULL);


-- ADD GROUPS
INSERT INTO csr.group(name) VALUES(

-- ADD NAMES
INSERT INTO csr.name(is_last, is_female, name) VALUES(
  false, false, 'Abel'), (
  false, false, 'Achille'), (
  false, false, 'Adolphe'), (
  false, false, 'Adrian'), (
  false, false, 'Aimery'), (
  false, false, 'Alain'), (
  false, false, 'Alexandre'), (
  false, false, 'Alexis'), (
  false, false, 'Alfred'), (
  false, false, 'Alphonse'), (
  false, false, 'Ambroise'), (
  false, false, 'Andre'), (
  false, false, 'Anselme'), (
  false, false, 'Anthelme'), (
  false, false, 'Antoine'), (
  false, false, 'Armand'), (
  false, false, 'Arnald'), (
  false, false, 'Arnaud'), (
  false, false, 'Arnot'), (
  false, false, 'Arsène'), (
  false, false, 'Artur'), (
  false, false, 'Audric'), (
  false, false, 'Auguste'), (
  false, false, 'Augustin'), (
  false, false, 'Aurelien'), (
  false, false, 'Avent'), (
  false, false, 'Baptiste'), (
  false, false, 'Barnabé'), (
  false, false, 'Barthelemy'), (
  false, false, 'Basile'), (
  false, false, 'Bellamy'), (
  false, false, 'Benjamin'), (
  false, false, 'Benoit'), (
  false, false, 'Bernard'), (
  false, false, 'Bertin'), (
  false, false, 'Bertrand'), (
  false, false, 'Blaise'), (
  false, false, 'Brice'), (
  false, false, 'Bruce'), (
  false, false, 'Bruno'), (
  false, false, 'Charles'), (
  false, false, 'Chretien'), (
  false, false, 'Christian'), (
  false, false, 'Christophe'), (
  false, false, 'Claude'), (
  false, false, 'Clément'), (
  false, false, 'Conrad'), (
  false, false, 'Constant'), (
  false, false, 'Constantin'), (
  false, false, 'Corin'), (
  false, false, 'Courtney'), (
  false, false, 'Crispin'), (
  false, false, 'Curtis'), (
  false, false, 'Cyprien'), (
  false, false, 'Cyril'), (
  false, false, 'César'), (
  false, false, 'Damien'), (
  false, false, 'Daniel'), (
  false, false, 'David'), (
  false, false, 'Denis'), (
  false, false, 'Didier'), (
  false, false, 'Dimitri'), (
  false, false, 'Dion'), (
  false, false, 'Donatien'), (
  false, false, 'Edmond'), (
  false, false, 'Edouard'), (
  false, false, 'Emile'), (
  false, false, 'Emilien'), (
  false, false, 'Emmanuel'), (
  false, false, 'Eric'), (
  false, false, 'Ernest'), (
  false, false, 'Etienne'), (
  false, false, 'Eugene'), (
  false, false, 'Fabien'), (
  false, false, 'Fabrice'), (
  false, false, 'Fernand'), (
  false, false, 'Firmin'), (
  false, false, 'Florent'), (
  false, false, 'Florentin'), (
  false, false, 'Florian'), (
  false, false, 'Fortuné'), (
  false, false, 'François'), (
  false, false, 'Frédéric'), (
  false, false, 'Félix'), (
  false, false, 'Gabriel'), (
  false, false, 'Gautier'), (
  false, false, 'Gauvain'), (
  false, false, 'Gaétan'), (
  false, false, 'Geoffroy'), (
  false, false, 'Georges'), (
  false, false, 'Gerald'), (
  false, false, 'Gerard'), (
  false, false, 'Germain'), (
  false, false, 'Ghislain'), (
  false, false, 'Gilbert'), (
  false, false, 'Gildas'), (
  false, false, 'Gilles'), (
  false, false, 'Giraud'), (
  false, false, 'Grégoire'), (
  false, false, 'Guillaume'), (
  false, false, 'Gustave'), (
  false, false, 'Guy'), (
  false, false, 'Henri'), (
  false, false, 'Herbert'), (
  false, false, 'Hervé'), (
  false, false, 'Hubert'), (
  false, false, 'Hugo'), (
  false, false, 'Hugues'), (
  false, false, 'Hyacinthe'), (
  false, false, 'Ignace'), (
  false, false, 'Isaak'), (
  false, false, 'Isidore'), (
  false, false, 'Jean'), (
  false, false, 'Jacques'), (
  false, false, 'Joseph'), (
  false, false, 'Jean-Jacques'), (
  false, false, 'Jean-Louis'), (
  false, false, 'Joseph-Marie'), (
  false, false, 'Louis'), (
  false, false, 'Joachim'), (
  false, false, 'Joel'), (
  false, false, 'Jules'), (
  false, false, 'Julien'), (
  false, false, 'Justin'), (
  false, false, 'Jérome'), (
  false, false, 'Jérémie'), (
  false, false, 'Landry'), (
  false, false, 'Laurence'), (
  false, false, 'Laurent'), (
  false, false, 'Lionel'), (
  false, false, 'Luc'), (
  false, false, 'Lucien'), (
  false, false, 'Léo'), (
  false, false, 'Léon'), (
  false, false, 'Marc'), (
  false, false, 'Marcel'), (
  false, false, 'Marcellin'), (
  false, false, 'Marius'), (
  false, false, 'Marlon'), (
  false, false, 'Martin'), (
  false, false, 'Matthieu'), (
  false, false, 'Maurice'), (
  false, false, 'Maxime'), (
  false, false, 'Maximilien'), (
  false, false, 'Michel'), (
  false, false, 'Narcisse'), (
  false, false, 'Neville'), (
  false, false, 'Nicolas'), (
  false, false, 'Noel'), (
  false, false, 'Norbert'), (
  false, false, 'Octavien'), (
  false, false, 'Olivier'), (
  false, false, 'Parfait'), (
  false, false, 'Pascal'), (
  false, false, 'Patrice'), (
  false, false, 'Paul'), (
  false, false, 'Paulin'), (
  false, false, 'Perceval'), (
  false, false, 'Philippe'), (
  false, false, 'Pierre'), (
  false, false, 'Quentin'), (
  false, false, 'Raoul'), (
  false, false, 'Raphael'), (
  false, false, 'Raymond'), (
  false, false, 'Remi'), (
  false, false, 'Renaud'), (
  false, false, 'René'), (
  false, false, 'Richard'), (
  false, false, 'Robert'), (
  false, false, 'Rodolphe'), (
  false, false, 'Rodrigue'), (
  false, false, 'Roland'), (
  false, false, 'Romain'), (
  false, false, 'Samuel'), (
  false, false, 'Saul'), (
  false, false, 'Sebastien'), (
  false, false, 'Serge'), (
  false, false, 'Severin'), (
  false, false, 'Silvain'), (
  false, false, 'Silvestre'), (
  false, false, 'Simon'), (
  false, false, 'Spiro'), (
  false, false, 'Stanislas'), (
  false, false, 'Tanguy'), (
  false, false, 'Thibault'), (
  false, false, 'Thierry'), (
  false, false, 'Thomas'), (
  false, false, 'Théodore'), (
  false, false, 'Théophile'), (
  false, false, 'Urbain'), (
  false, false, 'Valentin'), (
  false, false, 'Valery'), (
  false, false, 'Victor'), (
  false, false, 'Vincent'), (
  false, false, 'Yves'), (
  false, false, 'Abadie'), (
  false, false, 'Achard'), (
  false, false, 'Adamo'), (
  false, false, 'Allard'), (
  false, false, 'Alliaume'), (
  false, false, 'Ambard'), (
  false, false, 'Amiot'), (
  false, false, 'Arnal'), (
  false, false, 'Arnoux'), (
  false, false, 'Astier'), (
  false, false, 'Aubert'), (
  false, false, 'Aubry'), (
  false, false, 'Auvray'), (
  false, false, 'Avenier'), (
  false, false, 'Avril'), (
  false, false, 'Babin'), (
  false, false, 'Babineau'), (
  false, false, 'Bailleul'), (
  false, false, 'Ballou'), (
  false, false, 'Barraud'), (
  false, false, 'Barrier'), (
  false, false, 'Barthélémy'), (
  false, false, 'Bastien'), (
  false, false, 'Baudet'), (
  false, false, 'Bayol'), (
  false, false, 'Beaufils'), (
  false, false, 'Beaufoy'), (
  false, false, 'Beaulieu'), (
  false, false, 'Beaumont'), (
  false, false, 'Bellanger'), (
  false, false, 'Bellec'), (
  false, false, 'Berger'), (
  false, false, 'Bergeret'), (
  false, false, 'Bergeron'), (
  false, false, 'Bernard'), (
  false, false, 'Berthier'), (
  false, false, 'Bertrand'), (
  false, false, 'Berube'), (
  false, false, 'Bidault'), (
  false, false, 'Blanc'), (
  false, false, 'Blanchard'), (
  false, false, 'Blandin'), (
  false, false, 'Blondel'), (
  false, false, 'Blondet'), (
  false, false, 'Boissel'), (
  false, false, 'Boisson'), (
  false, false, 'Boisvert'), (
  false, false, 'Bonhomme'), (
  false, false, 'Bonnet'), (
  false, false, 'Bonnevie'), (
  false, false, 'Bonnin'), (
  false, false, 'Bouchard'), (
  false, false, 'Bouteiller'), (
  false, false, 'Bouvier'), (
  false, false, 'Briand'), (
  false, false, 'Brideau'), (
  false, false, 'Briel'), (
  false, false, 'Brossard'), (
  false, false, 'Brun'), (
  false, false, 'Brunel'), (
  false, false, 'Cadet'), (
  false, false, 'Caillard'), (
  false, false, 'Caillaud'), (
  false, false, 'Capelle'), (
  false, false, 'Carlier'), (
  false, false, 'Carré'), (
  false, false, 'Chabert'), (
  false, false, 'Challoner'), (
  false, false, 'Charbonnier'), (
  false, false, 'Chastel'), (
  false, false, 'Chatal'), (
  false, false, 'Chenault'), (
  false, false, 'Chenevier'), (
  false, false, 'Chénier'), (
  false, false, 'Chesnier'), (
  false, false, 'Chevrier'), (
  false, false, 'Chiasson'), (
  false, false, 'Chéron'), (
  false, false, 'Chrétien'), (
  false, false, 'Clavet'), (
  false, false, 'Clemenceau'), (
  false, false, 'Cloquet'), (
  false, false, 'Collard'), (
  false, false, 'Comeaux'), (
  false, false, 'Coquard'), (
  false, false, 'Coudray'), (
  false, false, 'Courtois'), (
  false, false, 'Cousin'), (
  false, false, 'Coutard'), (
  false, false, 'Cédolin'), (
  false, false, 'Daguerre'), (
  false, false, 'Daladier'), (
  false, false, 'd''Allemagne'), (
  false, false, 'Danis'), (
  false, false, 'Daudet'), (
  false, false, 'Daumier'), (
  false, false, 'Dautin'), (
  false, false, 'David'), (
  false, false, 'Dechesne'), (
  false, false, 'Defraine'), (
  false, false, 'Delage'), (
  false, false, 'Delarue'), (
  false, false, 'Delorme'), (
  false, false, 'Denis'), (
  false, false, 'Desbois'), (
  false, false, 'Desnoyers'), (
  false, false, 'Devere'), (
  false, false, 'Devereaux'), (
  false, false, 'Deville'), (
  false, false, 'Dorat'), (
  false, false, 'Doucet'), (
  false, false, 'Dubois'), (
  false, false, 'Duclos'), (
  false, false, 'Dufour'), (
  false, false, 'Duguay'), (
  false, false, 'Dumont'), (
  false, false, 'Dupont'), (
  false, false, 'Dupré'), (
  false, false, 'Dupuis'), (
  false, false, 'Durand'), (
  false, false, 'Duval'), (
  false, false, 'Esnault'), (
  false, false, 'Evrard'), (
  false, false, 'Farjeon'), (
  false, false, 'Faudel'), (
  false, false, 'Fayette'), (
  false, false, 'Ferrand'), (
  false, false, 'Feuillette'), (
  false, false, 'Fleuette'), (
  false, false, 'Fleury'), (
  false, false, 'Fortin'), (
  false, false, 'Fournier'), (
  false, false, 'Frassin'), (
  false, false, 'Gallais'), (
  false, false, 'Garbe'), (
  false, false, 'Garnier'), (
  false, false, 'Gaucher'), (
  false, false, 'Gaudet'), (
  false, false, 'Gauthier'), (
  false, false, 'Gervais'), (
  false, false, 'Girard'), (
  false, false, 'Girardin'), (
  false, false, 'Giraud'), (
  false, false, 'Godard'), (
  false, false, 'Goussand'), (
  false, false, 'Grellier'), (
  false, false, 'Grenier'), (
  false, false, 'Guerrier'), (
  false, false, 'Guillemot'), (
  false, false, 'Guyon'), (
  false, false, 'Huguelet'), (
  false, false, 'Jacqueme'), (
  false, false, 'Jacquemin'), (
  false, false, 'Jaillet'), (
  false, false, 'Jantot'), (
  false, false, 'Josse'), (
  false, false, 'Jourdain'), (
  false, false, 'Jouvin'), (
  false, false, 'Labarre'), (
  false, false, 'LaBranche'), (
  false, false, 'Labrousse'), (
  false, false, 'Lachance'), (
  false, false, 'Lachenal'), (
  false, false, 'Lacroix'), (
  false, false, 'Laffitte'), (
  false, false, 'Lafontaine'), (
  false, false, 'Lalande'), (
  false, false, 'Lambert'), (
  false, false, 'Lanier'), (
  false, false, 'Larocque'), (
  false, false, 'Larousse'), (
  false, false, 'Latour'), (
  false, false, 'Laurent'), (
  false, false, 'Lavalle'), (
  false, false, 'LeVan'), (
  false, false, 'Leblanc'), (
  false, false, 'Lecanu'), (
  false, false, 'Leclerc'), (
  false, false, 'Lefevre'), (
  false, false, 'Lejeune'), (
  false, false, 'Lemaitre'), (
  false, false, 'Lessard'), (
  false, false, 'Lesueur'), (
  false, false, 'Lizot'), (
  false, false, 'Loisel'), (
  false, false, 'Madoré'), (
  false, false, 'Maillard'), (
  false, false, 'Mancion'), (
  false, false, 'Marais'), (
  false, false, 'Marchand'), (
  false, false, 'Martel'), (
  false, false, 'Martin'), (
  false, false, 'Martineau'), (
  false, false, 'Maurice'), (
  false, false, 'Meserve'), (
  false, false, 'Mercier'), (
  false, false, 'Métisse'), (
  false, false, 'Meunier'), (
  false, false, 'Meyet'), (
  false, false, 'Michaud'), (
  false, false, 'Minot'), (
  false, false, 'Monteil'), (
  false, false, 'Moreau'), (
  false, false, 'Morjuet'), (
  false, false, 'Ménard'), (
  false, false, 'Nason'), (
  false, false, 'Naudin'), (
  false, false, 'Naveau'), (
  false, false, 'Olivier'), (
  false, false, 'Orfevre'), (
  false, false, 'Ouvrard'), (
  false, false, 'Paillard'), (
  false, false, 'Paquet'), (
  false, false, 'Pasteur'), (
  false, false, 'Pelay'), (
  false, false, 'Pelletier'), (
  false, false, 'Peroché'), (
  false, false, 'Perrault'), (
  false, false, 'Petit'), (
  false, false, 'Pierpont'), (
  false, false, 'Pineau'), (
  false, false, 'Poincaré'), (
  false, false, 'Poirier'), (
  false, false, 'Potier'), (
  false, false, 'Pourcel'), (
  false, false, 'Prevost'), (
  false, false, 'Prieur'), (
  false, false, 'Pépin'), (
  false, false, 'Quentin'), (
  false, false, 'Quenu'), (
  false, false, 'Rabaud'), (
  false, false, 'Ragot'), (
  false, false, 'Raine'), (
  false, false, 'Raymond'), (
  false, false, 'Renaud'), (
  false, false, 'Renault'), (
  false, false, 'Reynaud'), (
  false, false, 'Ricard'), (
  false, false, 'Richard'), (
  false, false, 'Riviere'), (
  false, false, 'Robichaud'), (
  false, false, 'Rocher'), (
  false, false, 'Rodier'), (
  false, false, 'Rossi'), (
  false, false, 'Rougemont'), (
  false, false, 'Roussel'), (
  false, false, 'Royer'), (
  false, false, 'Régnier'), (
  false, false, 'Saint-Simon'), (
  false, false, 'Sardou'), (
  false, false, 'Saunier'), (
  false, false, 'Sergent'), (
  false, false, 'Sicard'), (
  false, false, 'Signoret'), (
  false, false, 'Simard'), (
  false, false, 'Sordeau'), (
  false, false, 'Taillefer'), (
  false, false, 'Tailleur'), (
  false, false, 'Tavernier'), (
  false, false, 'Terrier'), (
  false, false, 'Tessier'), (
  false, false, 'Theriault'), (
  false, false, 'Thibaud'), (
  false, false, 'Thibodeau'), (
  false, false, 'Thierry'), (
  false, false, 'Théry'), (
  false, false, 'Thévenet'), (
  false, false, 'Tiquet'), (
  false, false, 'Tirmont'), (
  false, false, 'Tison'), (
  false, false, 'Tissot'), (
  false, false, 'Toussaint'), (
  false, false, 'Trudeau'), (
  false, false, 'Turpin'), (
  false, false, 'Vaillant'), (
  false, false, 'Vanier'), (
  false, false, 'Vaux'), (
  false, false, 'Vavasseur'), (
  false, false, 'Verdier'), (
  false, false, 'Vernet'), (
  false, false, 'Vernier'), (
  false, false, 'Vienneau'), (
  false, false, 'Vignon'), (
  false, false, 'Villejoin'), (
  false, false, 'Villette'), (
  false, false, 'Vincent'), (
  false, false, 'Voisin'), (
  false, false, 'Véron'), (
  false, false, 'Aceline'), (
  false, false, 'Adelaide'), (
  false, false, 'Adeline'), (
  false, false, 'Adrienne'), (
  false, false, 'Adèle'), (
  false, false, 'Agathe'), (
  false, false, 'Aglae'), (
  false, false, 'Agnès'), (
  false, false, 'Aïda'), (
  false, false, 'Aimée'), (
  false, false, 'Alexandrine'), (
  false, false, 'Alice'), (
  false, false, 'Aline'), (
  false, false, 'Alissandre'), (
  false, false, 'Alix'), (
  false, false, 'Amalie'), (
  false, false, 'Amandine'), (
  false, false, 'Amarante'), (
  false, false, 'Anaïs'), (
  false, false, 'Andrée'), (
  false, false, 'Ange'), (
  false, false, 'Angeline'), (
  false, false, 'Angélique'), (
  false, false, 'Anne'), (
  false, false, 'Annelle'), (
  false, false, 'Antoinette'), (
  false, false, 'Ariane'), (
  false, false, 'Athenaïs'), (
  false, false, 'Athène'), (
  false, false, 'Augustine'), (
  false, false, 'Aurélie'), (
  false, false, 'Aurore'), (
  false, false, 'Austine'), (
  false, false, 'Aveline'), (
  false, false, 'Axelle'), (
  false, false, 'Babette'), (
  false, false, 'Béatrice'), (
  false, false, 'Beline'), (
  false, false, 'Belle'), (
  false, false, 'Bernadette'), (
  false, false, 'Berthe'), (
  false, false, 'Bertille'), (
  false, false, 'Bibiane'), (
  false, false, 'Blanche'), (
  false, false, 'Blanchefleur'), (
  false, false, 'Blandine'), (
  false, false, 'Brigitte'), (
  false, false, 'Bénédicte'), (
  false, false, 'Calliste'), (
  false, false, 'Camille'), (
  false, false, 'Carine'), (
  false, false, 'Carole'), (
  false, false, 'Caroline'), (
  false, false, 'Catherine'), (
  false, false, 'Cécile'), (
  false, false, 'Ceciliane'), (
  false, false, 'Celeste'), (
  false, false, 'Celestine'), (
  false, false, 'Céline'), (
  false, false, 'Cendrine'), (
  false, false, 'Cerise'), (
  false, false, 'Chantal'), (
  false, false, 'Charlaine'), (
  false, false, 'Charlotte'), (
  false, false, 'Christelle'), (
  false, false, 'Christiane'), (
  false, false, 'Christine'), (
  false, false, 'Claire'), (
  false, false, 'Clarice'), (
  false, false, 'Claudette'), (
  false, false, 'Claudine'), (
  false, false, 'Clotilde'), (
  false, false, 'Clémence'), (
  false, false, 'Colette'), (
  false, false, 'Colombe'), (
  false, false, 'Constance'), (
  false, false, 'Coralie'), (
  false, false, 'Corine'), (
  false, false, 'Cybele'), (
  false, false, 'Cyprienne'), (
  false, false, 'Danaë'), (
  false, false, 'Danielle'), (
  false, false, 'Delphine'), (
  false, false, 'Denise'), (
  false, false, 'Dominique'), (
  false, false, 'Dorine'), (
  false, false, 'Dorothée'), (
  false, false, 'Désirée'), (
  false, false, 'Edith'), (
  false, false, 'Elene'), (
  false, false, 'Eliane'), (
  false, false, 'Elisabeth'), (
  false, false, 'Elise'), (
  false, false, 'Eléonore'), (
  false, false, 'Emilianne'), (
  false, false, 'Emilie'), (
  false, false, 'Emmanuelle'), (
  false, false, 'Estelle'), (
  false, false, 'Eugénie'), (
  false, false, 'Eulalie'), (
  false, false, 'Euphémie'), (
  false, false, 'Euphrasie'), (
  false, false, 'Fabienne'), (
  false, false, 'Fanette'), (
  false, false, 'Fantine'), (
  false, false, 'Felice'), (
  false, false, 'Felicienne'), (
  false, false, 'Fernande'), (
  false, false, 'Fidèle'), (
  false, false, 'Fleur'), (
  false, false, 'Fleurette'), (
  false, false, 'Floriane'), (
  false, false, 'France'), (
  false, false, 'Francine'), (
  false, false, 'Françoise'), (
  false, false, 'Félicité'), (
  false, false, 'Gabrielle'), (
  false, false, 'Gaëlle'), (
  false, false, 'Galatée'), (
  false, false, 'Gallia'), (
  false, false, 'Gaétane'), (
  false, false, 'Gemma'), (
  false, false, 'Geneviéve'), (
  false, false, 'Ghislaine'), (
  false, false, 'Gilberte'), (
  false, false, 'Gisèle'), (
  false, false, 'Hélène'), (
  false, false, 'Henriette'), (
  false, false, 'Honorine'), (
  false, false, 'Hortense'), (
  false, false, 'Ingrid'), (
  false, false, 'Iphigenie'), (
  false, false, 'Irénée'), (
  false, false, 'Isabelle'), (
  false, false, 'Jacinthe'), (
  false, false, 'Jacqueline'), (
  false, false, 'Jacquette'), (
  false, false, 'Janine'), (
  false, false, 'Jeanne'), (
  false, false, 'Jeannette'), (
  false, false, 'Jocelin'), (
  false, false, 'Josée'), (
  false, false, 'Joséphine'), (
  false, false, 'Josette'), (
  false, false, 'Julie'), (
  false, false, 'Juliette'), (
  false, false, 'Justine'), (
  false, false, 'Laure'), (
  false, false, 'Laurentine'), (
  false, false, 'Léonie'), (
  false, false, 'Léonore'), (
  false, false, 'Liliane'), (
  false, false, 'Lise'), (
  false, false, 'Lisette'), (
  false, false, 'Lorraine'), (
  false, false, 'Louise'), (
  false, false, 'Lucie'), (
  false, false, 'Lucille'), (
  false, false, 'Lydie'), (
  false, false, 'Léa'), (
  false, false, 'Madeleine'), (
  false, false, 'Manon'), (
  false, false, 'Marcelle'), (
  false, false, 'Marcelline'), (
  false, false, 'Margaux'), (
  false, false, 'Margot'), (
  false, false, 'Marguerite'), (
  false, false, 'Marie'), (
  false, false, 'Mariette'), (
  false, false, 'Marine'), (
  false, false, 'Marjolaine'), (
  false, false, 'Marthe'), (
  false, false, 'Martine'), (
  false, false, 'Mathilde'), (
  false, false, 'Maude'), (
  false, false, 'Melanie'), (
  false, false, 'Micheline'), (
  false, false, 'Michelle'), (
  false, false, 'Mignon'), (
  false, false, 'Mimi'), (
  false, false, 'Mirabelle'), (
  false, false, 'Mireille'), (
  false, false, 'Monique'), (
  false, false, 'Morgance'), (
  false, false, 'Nadine'), (
  false, false, 'Nadége'), (
  false, false, 'Natalie'), (
  false, false, 'Nicole'), (
  false, false, 'Nicolette'), (
  false, false, 'Ninon'), (
  false, false, 'Noemie'), (
  false, false, 'Odette'), (
  false, false, 'Odile'), (
  false, false, 'Ophélie'), (
  false, false, 'Oriane'), (
  false, false, 'Ornette'), (
  false, false, 'Pascale'), (
  false, false, 'Patricia'), (
  false, false, 'Paulette'), (
  false, false, 'Pauline'), (
  false, false, 'Perrine'), (
  false, false, 'Petronelle'), (
  false, false, 'Pierrette'), (
  false, false, 'Raquel'), (
  false, false, 'Raymonde'), (
  false, false, 'Renée'), (
  false, false, 'Rosalie'), (
  false, false, 'Rose'), (
  false, false, 'Roseline'), (
  false, false, 'Rosette'), (
  false, false, 'Régine'), (
  false, false, 'Sabine'), (
  false, false, 'Sandrine'), (
  false, false, 'Sarah'), (
  false, false, 'Seraphine'), (
  false, false, 'Sidonie'), (
  false, false, 'Simone'), (
  false, false, 'Solange'), (
  false, false, 'Sophie'), (
  false, false, 'Stéphanie'), (
  false, false, 'Suzanne'), (
  false, false, 'Sybille'), (
  false, false, 'Sylvie'), (
  false, false, 'Sébastienne'), (
  false, false, 'Thérèse'), (
  false, false, 'Tienette'), (
  false, false, 'Valerie'), (
  false, false, 'Veronique'), (
  false, false, 'Victoire'), (
  false, false, 'Violette'), (
  false, false, 'Virginie'), (
  false, false, 'Vivienne'), (
  false, false, 'Yolande'), (
  false, false, 'Yseult'), (
  false, false, 'Yvette'), (
  false, false, 'Yvonne'), (
  false, false, 'Zoé'), (
  false, false, 'Zéphyrine');


-- ADD OBJECT_TYPES
INSERT INTO csr.object_type(code, flag) VALUES(

-- ADD IO_ITEM_DATAS
INSERT INTO csr.io_item_data(count, description, food_value, internal_script, left_ring, light_value, max_owned, name, price, ring_type, stack_size, steal_value, title, weight) VALUES(
-- ADD io_item_data's RELATED groupss

-- ADD io_item_data's RELATED typess

-- ADD io_item_data's RELATED modifierss


-- ADD RACES
INSERT INTO csr.race(name) VALUES(
  'HUMAN'), (
  'DWARF'), (
  'ELF'), (
  'ORC'), (
  'GOBLIN'), (
  'HOBGOBLIN'), (
  'TROLL'), (
  'WEREBEAR'), (
  'WEREBOAR'), (
  'WERERAT'), (
  'WEREWOLF'), (
  'VAMPIRE');


-- ADD SIBLING_RANKS
INSERT INTO csr.sibling_rank(code, title, roll_min, roll_max, points_adjustment) VALUES(
  'UNACK_BASTARD', 'Illegitimate and unacknowledged offspring', 0, 0, 0), (
  'ACK_BASTARD', 'Illegitimate and acknowledged offspring', 0, 0, 0), (
  '6TH_CHILD', '6th child', 0, 0, 0), (
  '5TH_CHILD', '5th child', 0, 0, 0), (
  '4TH_CHILD', '4th child', 0, 0, 0), (
  '3RD_CHILD', '3rd child', 0, 0, 0), (
  '2ND_CHILD', '2nd child', 0, 0, 0), (
  '1ST_CHILD', '1st child', 0, 0, 0);


-- ADD SKILLS
INSERT INTO csr.skill(name) VALUES(

-- ADD SOCIAL_CLASSS
INSERT INTO csr.social_class(name, title, roll_min, roll_max, points_adjustment) VALUES(
  'SERVILE', 'Villein', 0, 0, 0), (
  'FREEMAN', 'Freeman', 0, 0, 0), (
  'TOWNSMAN', 'Townsman', 0, 0, 0), (
  'GUILDSMAN', 'Guildsman', 0, 0, 0), (
  'LANDLESS KNIGHT', 'Landless Gentry', 0, 0, 0), (
  'LANDED KNIGHT', 'Landed Gentry', 0, 0, 0), (
  'BANNERETTE', 'Bannerette', 0, 0, 0), (
  'BARON', 'Baron', 0, 0, 0), (
  'TITLED NOBLE', 'Nobility', 0, 0, 0), (
  'ROYALTY', 'Royalty', 0, 0, 0);


-- ADD FATHER_VOCATIONS
INSERT INTO csr.father_vocation(, social_class, name, feudal_holding, thieves_guild_status, num_bonus_d10_social_status, social_status, num_starting_animal_skills, num_starting_agricultural_skills, num_starting_artistic_skills, num_starting_craftt_skills, num_starting_combat_skills, num_starting_lore_skills, num_starting_outdoor_skills, num_starting_sea_skills, num_starting_thievery_skills, num_starting_trade_skills, num_starting_bonus_skills, num_starting_binary0_magick_methods, num_starting_binary1_magick_methods, num_starting_binary1_lore_skills, num_starting_foreign_languages, num_starting_written_languages, reading_int_required, roll_min, roll_maxis_liveried) VALUES(
  NULL, 'Farmer', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Horse Handler', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Cowherd', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Swineherd', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Shepherd', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Castle Servant', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Cook', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Blacksmith', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Bonded Stable Hand', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Labourer', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Castle Chamberlain', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Scribe Secretary', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Sergeant-Commander', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Sergeant', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Man-At-Arms', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Archer', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Chief Forest Ranger', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Forest Ranger', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Sergeant-Armourer', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Castle Armourer', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Castle Blacksmith', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Falconer', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Horse Trainer', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Master of Hounds', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Castle Cook', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Rural Carpenter', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Rural Mason', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Forester', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Fisherman', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Village Blacksmith', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Freehold Miller', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Freehold Farmer', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Freehold Stockman', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Petit Sergeant', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Peddler', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Tinker', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Beggar', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Brothel Keeper', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Stable Hand', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Stable Owner', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Cobbler', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Tailor', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Clothmaker', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Tanner', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Town Blacksmith', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Shopkeeper', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Innkeeper', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Town Cook', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Harnessmaker', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Stall-keeper', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Barber', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Butcher', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Baker', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Wine Merchant', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Money Lender', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Town Labourer', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Mstr. Cloth Merchant', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Weaver', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Dyer', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Mstr. Mason', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Guild Mason', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Mstr. Builder', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Mstr. Goldsmith', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Goldsmith', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Jewelsmith', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Ship-Owner/Captain', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Ship''s Captain', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Ship''s Mate', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Mariner', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Mstr. Carpenter', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Guild Carpenter', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Cabinetmaker', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Barrelwright', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Cartwright', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Mstr. Shipbuilder', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Shipbuilder', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Mstr. Armourer', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Armourer', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Mercenary Captain', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Mercenary Sergeant', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Mercenary Man-at-arms', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Mercenary Archer', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Mercenary Cross-bowman', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Mstr. Glassblower', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Glassblower', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Mstr. Potter', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Potter', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Mstr. Perfumer', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Perfumer', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Apothecary', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Entertainer', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Mstr. Artist', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Mstr. Sculptor', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Mstr. Foundryman', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Foundryman', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Mine Owner', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Miner', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Mstr. Engraver', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Mstr. Thief', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Thief', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Assassin', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Scribe/Clerk', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Physician', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Guild Scholar', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Scholar', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Magus', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, '"Merchant Prince"', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Knight-Errant', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'In Household of a Landed Knight', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'In Household of a Bannerette', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'In Household of a Baron of the Realm', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'In Household of a Titled Nobleman', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'In Household of the Royal Family', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'In Household of the King', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Knight(A)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Knight(B)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Knight(C)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Knight(D)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Knight(E)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Knight(F)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Knight(G)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Knight(H)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Knight(I)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Knight(J)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Knight(K)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Knight(L)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Bannerette(M)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Bannerette(N)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Bannerette(O)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Bannerette(P)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Baronet(Q)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Baronet(R)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Baronet(S)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Baron/Viscount(T)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Baron/Viscount(U)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Baron/Viscount(V)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Baron/Viscount(W)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Count/Earl(X)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Count/Earl(Y)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Count/Earl(Z)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Count/Earl(AA)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Count/Earl(BB)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Count/Earl(CC)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Count/Earl(DD)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Count/Earl(EE)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Marquis(FF)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Duke(GG)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Duke(HH)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Sovereign Prince(PR)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'King(KG)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false);

-- ADD father_vocation's RELATED starting_skillss
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Horse Handler'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Horse Handler'),
  (SELECT skill_id FROM csr.skill WHERE name='Animal Handling'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Swineherd'),
  (SELECT skill_id FROM csr.skill WHERE name='Pig Raising'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Shepherd'),
  (SELECT skill_id FROM csr.skill WHERE name='Sheep Herding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Castle Servant'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Cook'),
  (SELECT skill_id FROM csr.skill WHERE name='Cooking'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Cook'),
  (SELECT skill_id FROM csr.skill WHERE name='Knife Fighting'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Blacksmith'),
  (SELECT skill_id FROM csr.skill WHERE name='Blacksmithing'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Blacksmith'),
  (SELECT skill_id FROM csr.skill WHERE name='Mace Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Bonded Stable Hand'),
  (SELECT skill_id FROM csr.skill WHERE name='Animal Handling'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Bonded Stable Hand'),
  (SELECT skill_id FROM csr.skill WHERE name='Quarterstaff'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Labourer'),
  (SELECT skill_id FROM csr.skill WHERE name='Endurance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Labourer'),
  (SELECT skill_id FROM csr.skill WHERE name='Conditioning'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Labourer'),
  (SELECT skill_id FROM csr.skill WHERE name='Lifting'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Castle Chamberlain'),
  (SELECT skill_id FROM csr.skill WHERE name='Write'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Castle Chamberlain'),
  (SELECT skill_id FROM csr.skill WHERE name='Counting'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Castle Chamberlain'),
  (SELECT skill_id FROM csr.skill WHERE name='Calligraphy & Illumination'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Scribe Secretary'),
  (SELECT skill_id FROM csr.skill WHERE name='Write'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Scribe Secretary'),
  (SELECT skill_id FROM csr.skill WHERE name='Counting'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Scribe Secretary'),
  (SELECT skill_id FROM csr.skill WHERE name='Calligraphy & Illumination'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Sergeant-Commander'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Sergeant-Commander'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Sergeant'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Sergeant'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Man-At-Arms'),
  (SELECT skill_id FROM csr.skill WHERE name='Quarterstaff'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Archer'),
  (SELECT skill_id FROM csr.skill WHERE name='Archery'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Archer'),
  (SELECT skill_id FROM csr.skill WHERE name='Quarterstaff'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Chief Forest Ranger'),
  (SELECT skill_id FROM csr.skill WHERE name='Archery'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Chief Forest Ranger'),
  (SELECT skill_id FROM csr.skill WHERE name='Quarterstaff'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Forest Ranger'),
  (SELECT skill_id FROM csr.skill WHERE name='Archery'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Forest Ranger'),
  (SELECT skill_id FROM csr.skill WHERE name='Quarterstaff'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Sergeant-Armourer'),
  (SELECT skill_id FROM csr.skill WHERE name='Blacksmithing'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Sergeant-Armourer'),
  (SELECT skill_id FROM csr.skill WHERE name='Weaponsmith'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Sergeant-Armourer'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Castle Armourer'),
  (SELECT skill_id FROM csr.skill WHERE name='Blacksmithing'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Castle Armourer'),
  (SELECT skill_id FROM csr.skill WHERE name='Weaponsmith'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Castle Blacksmith'),
  (SELECT skill_id FROM csr.skill WHERE name='Blacksmithing'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Castle Blacksmith'),
  (SELECT skill_id FROM csr.skill WHERE name='Mace Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Falconer'),
  (SELECT skill_id FROM csr.skill WHERE name='Animal Training'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Falconer'),
  (SELECT skill_id FROM csr.skill WHERE name='Quarterstaff'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Horse Trainer'),
  (SELECT skill_id FROM csr.skill WHERE name='Animal Training'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Horse Trainer'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Master of Hounds'),
  (SELECT skill_id FROM csr.skill WHERE name='Animal Training'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Master of Hounds'),
  (SELECT skill_id FROM csr.skill WHERE name='Quarterstaff'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Master of Hounds'),
  (SELECT skill_id FROM csr.skill WHERE name='Javelin'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Master of Hounds'),
  (SELECT skill_id FROM csr.skill WHERE name='Throw Javelin'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Castle Cook'),
  (SELECT skill_id FROM csr.skill WHERE name='Cooking'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Castle Cook'),
  (SELECT skill_id FROM csr.skill WHERE name='Knife Fighting'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Rural Carpenter'),
  (SELECT skill_id FROM csr.skill WHERE name='Carpentry'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Rural Carpenter'),
  (SELECT skill_id FROM csr.skill WHERE name='Mace Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Rural Carpenter'),
  (SELECT skill_id FROM csr.skill WHERE name='Quarterstaff'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Rural Mason'),
  (SELECT skill_id FROM csr.skill WHERE name='Masonry'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Rural Mason'),
  (SELECT skill_id FROM csr.skill WHERE name='Mace Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Rural Mason'),
  (SELECT skill_id FROM csr.skill WHERE name='Quarterstaff'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Forester'),
  (SELECT skill_id FROM csr.skill WHERE name='Archery'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Forester'),
  (SELECT skill_id FROM csr.skill WHERE name='Quarterstaff'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Fisherman'),
  (SELECT skill_id FROM csr.skill WHERE name='Fishing'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Fisherman'),
  (SELECT skill_id FROM csr.skill WHERE name='Fisherman'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Fisherman'),
  (SELECT skill_id FROM csr.skill WHERE name='Small Boats'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Fisherman'),
  (SELECT skill_id FROM csr.skill WHERE name='Spear'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Village Blacksmith'),
  (SELECT skill_id FROM csr.skill WHERE name='Blacksmithing'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Village Blacksmith'),
  (SELECT skill_id FROM csr.skill WHERE name='Mace Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Freehold Miller'),
  (SELECT skill_id FROM csr.skill WHERE name='Milling'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Freehold Miller'),
  (SELECT skill_id FROM csr.skill WHERE name='Bargaining'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Freehold Miller'),
  (SELECT skill_id FROM csr.skill WHERE name='Quarterstaff'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Freehold Farmer'),
  (SELECT skill_id FROM csr.skill WHERE name='Quarterstaff'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Freehold Stockman'),
  (SELECT skill_id FROM csr.skill WHERE name='Quarterstaff'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Petit Sergeant'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Petit Sergeant'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Peddler'),
  (SELECT skill_id FROM csr.skill WHERE name='Bargaining'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Peddler'),
  (SELECT skill_id FROM csr.skill WHERE name='Con'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Tinker'),
  (SELECT skill_id FROM csr.skill WHERE name='Bargaining'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Tinker'),
  (SELECT skill_id FROM csr.skill WHERE name='Tinkering'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Beggar'),
  (SELECT skill_id FROM csr.skill WHERE name='Begging'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Beggar'),
  (SELECT skill_id FROM csr.skill WHERE name='Con'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Brothel Keeper'),
  (SELECT skill_id FROM csr.skill WHERE name='Intimidation'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Brothel Keeper'),
  (SELECT skill_id FROM csr.skill WHERE name='Con'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Brothel Keeper'),
  (SELECT skill_id FROM csr.skill WHERE name='Knife Fighting'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Stable Hand'),
  (SELECT skill_id FROM csr.skill WHERE name='Animal Handling'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Stable Hand'),
  (SELECT skill_id FROM csr.skill WHERE name='Knife Fighting'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Stable Owner'),
  (SELECT skill_id FROM csr.skill WHERE name='Animal Handling'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Stable Owner'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Stable Owner'),
  (SELECT skill_id FROM csr.skill WHERE name='Veterinary'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Cobbler'),
  (SELECT skill_id FROM csr.skill WHERE name='Leatherworking'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Cobbler'),
  (SELECT skill_id FROM csr.skill WHERE name='Knife Fighting'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Tailor'),
  (SELECT skill_id FROM csr.skill WHERE name='Tailoring'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Tailor'),
  (SELECT skill_id FROM csr.skill WHERE name='Bargaining'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Clothmaker'),
  (SELECT skill_id FROM csr.skill WHERE name='Spinning & Weaving'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Clothmaker'),
  (SELECT skill_id FROM csr.skill WHERE name='Dyeing'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Tanner'),
  (SELECT skill_id FROM csr.skill WHERE name='Leatherworking'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Tanner'),
  (SELECT skill_id FROM csr.skill WHERE name='Knife Fighting'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Town Blacksmith'),
  (SELECT skill_id FROM csr.skill WHERE name='Blacksmithing'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Town Blacksmith'),
  (SELECT skill_id FROM csr.skill WHERE name='Mace Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Shopkeeper'),
  (SELECT skill_id FROM csr.skill WHERE name='Bargaining'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Innkeeper'),
  (SELECT skill_id FROM csr.skill WHERE name='Innkeeping'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Innkeeper'),
  (SELECT skill_id FROM csr.skill WHERE name='Brewing'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Town Cook'),
  (SELECT skill_id FROM csr.skill WHERE name='Cooking'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Town Cook'),
  (SELECT skill_id FROM csr.skill WHERE name='Knife Fighting'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Harnessmaker'),
  (SELECT skill_id FROM csr.skill WHERE name='Leatherworking'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Harnessmaker'),
  (SELECT skill_id FROM csr.skill WHERE name='Animal Handling'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Stall-keeper'),
  (SELECT skill_id FROM csr.skill WHERE name='Bargaining'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Stall-keeper'),
  (SELECT skill_id FROM csr.skill WHERE name='Con'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Barber'),
  (SELECT skill_id FROM csr.skill WHERE name='First Aid'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Barber'),
  (SELECT skill_id FROM csr.skill WHERE name='Knife Fighting'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Butcher'),
  (SELECT skill_id FROM csr.skill WHERE name='Axe Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Butcher'),
  (SELECT skill_id FROM csr.skill WHERE name='Knife Fighting'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baker'),
  (SELECT skill_id FROM csr.skill WHERE name='Cooking'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Wine Merchant'),
  (SELECT skill_id FROM csr.skill WHERE name='Bargaining'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Wine Merchant'),
  (SELECT skill_id FROM csr.skill WHERE name='Wine Making'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Money Lender'),
  (SELECT skill_id FROM csr.skill WHERE name='Bargaining'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Money Lender'),
  (SELECT skill_id FROM csr.skill WHERE name='Diplomacy & Politics'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Town Labourer'),
  (SELECT skill_id FROM csr.skill WHERE name='Endurance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Town Labourer'),
  (SELECT skill_id FROM csr.skill WHERE name='Conditioning'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Town Labourer'),
  (SELECT skill_id FROM csr.skill WHERE name='Lifting'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mstr. Cloth Merchant'),
  (SELECT skill_id FROM csr.skill WHERE name='Bargaining'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mstr. Cloth Merchant'),
  (SELECT skill_id FROM csr.skill WHERE name='Spinning & Weaving'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mstr. Cloth Merchant'),
  (SELECT skill_id FROM csr.skill WHERE name='Dyeing'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Weaver'),
  (SELECT skill_id FROM csr.skill WHERE name='Spinning & Weaving'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Dyer'),
  (SELECT skill_id FROM csr.skill WHERE name='Dyeing'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mstr. Mason'),
  (SELECT skill_id FROM csr.skill WHERE name='Bargaining'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mstr. Mason'),
  (SELECT skill_id FROM csr.skill WHERE name='Masonry'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mstr. Mason'),
  (SELECT skill_id FROM csr.skill WHERE name='Mace Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Guild Mason'),
  (SELECT skill_id FROM csr.skill WHERE name='Masonry'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Guild Mason'),
  (SELECT skill_id FROM csr.skill WHERE name='Mace Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mstr. Builder'),
  (SELECT skill_id FROM csr.skill WHERE name='Architecture'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mstr. Builder'),
  (SELECT skill_id FROM csr.skill WHERE name='Masonry'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mstr. Goldsmith'),
  (SELECT skill_id FROM csr.skill WHERE name='Bargaining'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Goldsmith'),
  (SELECT skill_id FROM csr.skill WHERE name='Goldsmithing'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Jewelsmith'),
  (SELECT skill_id FROM csr.skill WHERE name='Jewelsmithing'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Ship-Owner/Captain'),
  (SELECT skill_id FROM csr.skill WHERE name='Bargaining'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Ship''s Captain'),
  (SELECT skill_id FROM csr.skill WHERE name='Leadership'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Ship''s Mate'),
  (SELECT skill_id FROM csr.skill WHERE name='Intimidation'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mariner'),
  (SELECT skill_id FROM csr.skill WHERE name='Knife Fighting'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mstr. Carpenter'),
  (SELECT skill_id FROM csr.skill WHERE name='Carpentry'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mstr. Carpenter'),
  (SELECT skill_id FROM csr.skill WHERE name='Bargaining'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mstr. Carpenter'),
  (SELECT skill_id FROM csr.skill WHERE name='Mace Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Guild Carpenter'),
  (SELECT skill_id FROM csr.skill WHERE name='Carpentry'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Guild Carpenter'),
  (SELECT skill_id FROM csr.skill WHERE name='Mace Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Cabinetmaker'),
  (SELECT skill_id FROM csr.skill WHERE name='Carpentry'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Cabinetmaker'),
  (SELECT skill_id FROM csr.skill WHERE name='Bargaining'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Cabinetmaker'),
  (SELECT skill_id FROM csr.skill WHERE name='Mace Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Barrelwright'),
  (SELECT skill_id FROM csr.skill WHERE name='Carpentry'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Barrelwright'),
  (SELECT skill_id FROM csr.skill WHERE name='Cooper'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Barrelwright'),
  (SELECT skill_id FROM csr.skill WHERE name='Mace Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Cartwright'),
  (SELECT skill_id FROM csr.skill WHERE name='Carpentry'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Cartwright'),
  (SELECT skill_id FROM csr.skill WHERE name='Cart-making'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Cartwright'),
  (SELECT skill_id FROM csr.skill WHERE name='Mace Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mstr. Shipbuilder'),
  (SELECT skill_id FROM csr.skill WHERE name='Carpentry'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mstr. Shipbuilder'),
  (SELECT skill_id FROM csr.skill WHERE name='Shipbuilding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mstr. Shipbuilder'),
  (SELECT skill_id FROM csr.skill WHERE name='Bargaining'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mstr. Shipbuilder'),
  (SELECT skill_id FROM csr.skill WHERE name='Marine Architecture'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Shipbuilder'),
  (SELECT skill_id FROM csr.skill WHERE name='Carpentry'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Shipbuilder'),
  (SELECT skill_id FROM csr.skill WHERE name='Shipbuilding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mstr. Armourer'),
  (SELECT skill_id FROM csr.skill WHERE name='Blacksmithing'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mstr. Armourer'),
  (SELECT skill_id FROM csr.skill WHERE name='Weaponsmithing'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mstr. Armourer'),
  (SELECT skill_id FROM csr.skill WHERE name='Engraving'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Armourer'),
  (SELECT skill_id FROM csr.skill WHERE name='Blacksmithing'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Armourer'),
  (SELECT skill_id FROM csr.skill WHERE name='Weaponsmithing'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mercenary Captain'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mercenary Captain'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mercenary Captain'),
  (SELECT skill_id FROM csr.skill WHERE name='Leadership'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mercenary Sergeant'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mercenary Sergeant'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mercenary Archer'),
  (SELECT skill_id FROM csr.skill WHERE name='Archery'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mercenary Archer'),
  (SELECT skill_id FROM csr.skill WHERE name='Short Sword'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mercenary Cross-bowman'),
  (SELECT skill_id FROM csr.skill WHERE name='Crossbow'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mercenary Cross-bowman'),
  (SELECT skill_id FROM csr.skill WHERE name='Short Sword'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mstr. Glassblower'),
  (SELECT skill_id FROM csr.skill WHERE name='Glassblowing & Glazing'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mstr. Glassblower'),
  (SELECT skill_id FROM csr.skill WHERE name='Bargaining'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Glassblower'),
  (SELECT skill_id FROM csr.skill WHERE name='Glassblowing & Glazing'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mstr. Potter'),
  (SELECT skill_id FROM csr.skill WHERE name='Pottery'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mstr. Potter'),
  (SELECT skill_id FROM csr.skill WHERE name='Bargaining'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Potter'),
  (SELECT skill_id FROM csr.skill WHERE name='Pottery'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mstr. Perfumer'),
  (SELECT skill_id FROM csr.skill WHERE name='Perfumery'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mstr. Perfumer'),
  (SELECT skill_id FROM csr.skill WHERE name='Bargaining'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Perfumer'),
  (SELECT skill_id FROM csr.skill WHERE name='Perfumery'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Apothecary'),
  (SELECT skill_id FROM csr.skill WHERE name='Make Drugs'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Apothecary'),
  (SELECT skill_id FROM csr.skill WHERE name='Poisons'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Apothecary'),
  (SELECT skill_id FROM csr.skill WHERE name='Herbal Lore'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mstr. Artist'),
  (SELECT skill_id FROM csr.skill WHERE name='Painting'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mstr. Sculptor'),
  (SELECT skill_id FROM csr.skill WHERE name='Sculpture'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mstr. Foundryman'),
  (SELECT skill_id FROM csr.skill WHERE name='Smelting'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mstr. Foundryman'),
  (SELECT skill_id FROM csr.skill WHERE name='Bargaining'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mstr. Foundryman'),
  (SELECT skill_id FROM csr.skill WHERE name='Endurance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Foundryman'),
  (SELECT skill_id FROM csr.skill WHERE name='Smelting'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Foundryman'),
  (SELECT skill_id FROM csr.skill WHERE name='Endurance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mine Owner'),
  (SELECT skill_id FROM csr.skill WHERE name='Mining'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mine Owner'),
  (SELECT skill_id FROM csr.skill WHERE name='Bargaining'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mine Owner'),
  (SELECT skill_id FROM csr.skill WHERE name='Geological Lore'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Miner'),
  (SELECT skill_id FROM csr.skill WHERE name='Mining'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Miner'),
  (SELECT skill_id FROM csr.skill WHERE name='Endurance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mstr. Engraver'),
  (SELECT skill_id FROM csr.skill WHERE name='Goldsmithing'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mstr. Engraver'),
  (SELECT skill_id FROM csr.skill WHERE name='Bargaining'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mstr. Engraver'),
  (SELECT skill_id FROM csr.skill WHERE name='Engraving'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mstr. Thief'),
  (SELECT skill_id FROM csr.skill WHERE name='Con'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Thief'),
  (SELECT skill_id FROM csr.skill WHERE name='Con'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Assassin'),
  (SELECT skill_id FROM csr.skill WHERE name='Intimidation'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Assassin'),
  (SELECT skill_id FROM csr.skill WHERE name='Stealth'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Assassin'),
  (SELECT skill_id FROM csr.skill WHERE name='Skulking in Shadows'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Assassin'),
  (SELECT skill_id FROM csr.skill WHERE name='Disguise'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Scribe/Clerk'),
  (SELECT skill_id FROM csr.skill WHERE name='Writing'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Scribe/Clerk'),
  (SELECT skill_id FROM csr.skill WHERE name='Paper Making'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Scribe/Clerk'),
  (SELECT skill_id FROM csr.skill WHERE name='Calligraphy & Illumination'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Physician'),
  (SELECT skill_id FROM csr.skill WHERE name='Writing'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Physician'),
  (SELECT skill_id FROM csr.skill WHERE name='Herb Lore'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Physician'),
  (SELECT skill_id FROM csr.skill WHERE name='First Aid'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Guild Scholar'),
  (SELECT skill_id FROM csr.skill WHERE name='Writing'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Scholar'),
  (SELECT skill_id FROM csr.skill WHERE name='Writing'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Magus'),
  (SELECT skill_id FROM csr.skill WHERE name='Ancient Language'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Magus'),
  (SELECT skill_id FROM csr.skill WHERE name='Writing'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='"Merchant Prince"'),
  (SELECT skill_id FROM csr.skill WHERE name='Bargaining'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='"Merchant Prince"'),
  (SELECT skill_id FROM csr.skill WHERE name='Con'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='"Merchant Prince"'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight-Errant'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight-Errant'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight-Errant'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight-Errant'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight-Errant'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight-Errant'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='In Household of a Landed Knight'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='In Household of a Landed Knight'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='In Household of a Landed Knight'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='In Household of a Landed Knight'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='In Household of a Landed Knight'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='In Household of a Landed Knight'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='In Household of a Landed Knight'),
  (SELECT skill_id FROM csr.skill WHERE name='Reading'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='In Household of a Bannerette'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='In Household of a Bannerette'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='In Household of a Bannerette'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='In Household of a Bannerette'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='In Household of a Bannerette'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='In Household of a Bannerette'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='In Household of a Bannerette'),
  (SELECT skill_id FROM csr.skill WHERE name='Reading'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='In Household of a Baron of the Realm'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='In Household of a Baron of the Realm'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='In Household of a Baron of the Realm'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='In Household of a Baron of the Realm'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='In Household of a Baron of the Realm'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='In Household of a Baron of the Realm'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='In Household of a Baron of the Realm'),
  (SELECT skill_id FROM csr.skill WHERE name='Reading'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='In Household of a Titled Nobleman'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='In Household of a Titled Nobleman'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='In Household of a Titled Nobleman'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='In Household of a Titled Nobleman'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='In Household of a Titled Nobleman'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='In Household of a Titled Nobleman'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='In Household of a Titled Nobleman'),
  (SELECT skill_id FROM csr.skill WHERE name='Reading'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='In Household of the Royal Family'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='In Household of the Royal Family'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='In Household of the Royal Family'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='In Household of the Royal Family'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='In Household of the Royal Family'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='In Household of the Royal Family'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='In Household of the Royal Family'),
  (SELECT skill_id FROM csr.skill WHERE name='Reading'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='In Household of the King'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='In Household of the King'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='In Household of the King'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='In Household of the King'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='In Household of the King'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='In Household of the King'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='In Household of the King'),
  (SELECT skill_id FROM csr.skill WHERE name='Reading'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(A)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(A)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(A)'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(A)'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(A)'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(A)'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(A)'),
  (SELECT skill_id FROM csr.skill WHERE name='Reading'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(B)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(B)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(B)'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(B)'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(B)'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(B)'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(B)'),
  (SELECT skill_id FROM csr.skill WHERE name='Reading'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(C)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(C)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(C)'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(C)'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(C)'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(C)'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(C)'),
  (SELECT skill_id FROM csr.skill WHERE name='Reading'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(D)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(D)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(D)'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(D)'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(D)'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(D)'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(D)'),
  (SELECT skill_id FROM csr.skill WHERE name='Reading'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(E)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(E)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(E)'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(E)'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(E)'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(E)'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(E)'),
  (SELECT skill_id FROM csr.skill WHERE name='Reading'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(F)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(F)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(F)'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(F)'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(F)'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(F)'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(F)'),
  (SELECT skill_id FROM csr.skill WHERE name='Reading'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(G)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(G)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(G)'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(G)'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(G)'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(G)'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(G)'),
  (SELECT skill_id FROM csr.skill WHERE name='Reading'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(H)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(H)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(H)'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(H)'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(H)'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(H)'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(H)'),
  (SELECT skill_id FROM csr.skill WHERE name='Reading'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(I)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(I)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(I)'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(I)'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(I)'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(I)'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(I)'),
  (SELECT skill_id FROM csr.skill WHERE name='Reading'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(J)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(J)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(J)'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(J)'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(J)'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(J)'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(J)'),
  (SELECT skill_id FROM csr.skill WHERE name='Reading'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(K)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(K)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(K)'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(K)'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(K)'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(K)'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(K)'),
  (SELECT skill_id FROM csr.skill WHERE name='Reading'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(L)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(L)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(L)'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(L)'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(L)'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(L)'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(L)'),
  (SELECT skill_id FROM csr.skill WHERE name='Reading'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Bannerette(M)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Bannerette(M)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Bannerette(M)'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Bannerette(M)'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Bannerette(M)'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Bannerette(M)'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Bannerette(M)'),
  (SELECT skill_id FROM csr.skill WHERE name='Reading'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Bannerette(N)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Bannerette(N)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Bannerette(N)'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Bannerette(N)'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Bannerette(N)'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Bannerette(N)'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Bannerette(N)'),
  (SELECT skill_id FROM csr.skill WHERE name='Reading'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Bannerette(O)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Bannerette(O)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Bannerette(O)'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Bannerette(O)'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Bannerette(O)'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Bannerette(O)'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Bannerette(O)'),
  (SELECT skill_id FROM csr.skill WHERE name='Reading'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Bannerette(P)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Bannerette(P)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Bannerette(P)'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Bannerette(P)'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Bannerette(P)'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Bannerette(P)'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Bannerette(P)'),
  (SELECT skill_id FROM csr.skill WHERE name='Reading'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baronet(Q)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baronet(Q)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baronet(Q)'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baronet(Q)'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baronet(Q)'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baronet(Q)'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baronet(Q)'),
  (SELECT skill_id FROM csr.skill WHERE name='Reading'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baronet(R)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baronet(R)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baronet(R)'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baronet(R)'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baronet(R)'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baronet(R)'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baronet(R)'),
  (SELECT skill_id FROM csr.skill WHERE name='Reading'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baronet(S)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baronet(S)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baronet(S)'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baronet(S)'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baronet(S)'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baronet(S)'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baronet(S)'),
  (SELECT skill_id FROM csr.skill WHERE name='Reading'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baron/Viscount(T)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baron/Viscount(T)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baron/Viscount(T)'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baron/Viscount(T)'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baron/Viscount(T)'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baron/Viscount(T)'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baron/Viscount(T)'),
  (SELECT skill_id FROM csr.skill WHERE name='Reading'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baron/Viscount(U)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baron/Viscount(U)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baron/Viscount(U)'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baron/Viscount(U)'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baron/Viscount(U)'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baron/Viscount(U)'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baron/Viscount(U)'),
  (SELECT skill_id FROM csr.skill WHERE name='Reading'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baron/Viscount(V)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baron/Viscount(V)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baron/Viscount(V)'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baron/Viscount(V)'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baron/Viscount(V)'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baron/Viscount(V)'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baron/Viscount(V)'),
  (SELECT skill_id FROM csr.skill WHERE name='Reading'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baron/Viscount(W)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baron/Viscount(W)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baron/Viscount(W)'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baron/Viscount(W)'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baron/Viscount(W)'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baron/Viscount(W)'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baron/Viscount(W)'),
  (SELECT skill_id FROM csr.skill WHERE name='Reading'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(X)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(X)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(X)'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(X)'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(X)'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(X)'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(X)'),
  (SELECT skill_id FROM csr.skill WHERE name='Reading'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(Y)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(Y)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(Y)'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(Y)'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(Y)'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(Y)'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(Y)'),
  (SELECT skill_id FROM csr.skill WHERE name='Reading'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(Z)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(Z)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(Z)'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(Z)'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(Z)'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(Z)'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(Z)'),
  (SELECT skill_id FROM csr.skill WHERE name='Reading'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(AA)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(AA)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(AA)'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(AA)'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(AA)'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(AA)'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(AA)'),
  (SELECT skill_id FROM csr.skill WHERE name='Reading'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(BB)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(BB)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(BB)'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(BB)'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(BB)'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(BB)'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(BB)'),
  (SELECT skill_id FROM csr.skill WHERE name='Reading'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(CC)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(CC)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(CC)'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(CC)'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(CC)'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(CC)'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(CC)'),
  (SELECT skill_id FROM csr.skill WHERE name='Reading'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(DD)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(DD)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(DD)'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(DD)'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(DD)'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(DD)'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(DD)'),
  (SELECT skill_id FROM csr.skill WHERE name='Reading'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(EE)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(EE)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(EE)'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(EE)'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(EE)'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(EE)'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(EE)'),
  (SELECT skill_id FROM csr.skill WHERE name='Reading'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Marquis(FF)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Marquis(FF)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Marquis(FF)'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Marquis(FF)'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Marquis(FF)'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Marquis(FF)'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Marquis(FF)'),
  (SELECT skill_id FROM csr.skill WHERE name='Reading'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Duke(GG)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Duke(GG)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Duke(GG)'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Duke(GG)'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Duke(GG)'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Duke(GG)'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Duke(GG)'),
  (SELECT skill_id FROM csr.skill WHERE name='Reading'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Duke(HH)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Duke(HH)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Duke(HH)'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Duke(HH)'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Duke(HH)'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Duke(HH)'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Duke(HH)'),
  (SELECT skill_id FROM csr.skill WHERE name='Reading'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Sovereign Prince(PR)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Sovereign Prince(PR)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Sovereign Prince(PR)'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Sovereign Prince(PR)'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Sovereign Prince(PR)'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Sovereign Prince(PR)'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Sovereign Prince(PR)'),
  (SELECT skill_id FROM csr.skill WHERE name='Reading'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Sovereign Prince(PR)'),
  (SELECT skill_id FROM csr.skill WHERE name='Diplomacy & Politics'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='King(KG)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='King(KG)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='King(KG)'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='King(KG)'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='King(KG)'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='King(KG)'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='King(KG)'),
  (SELECT skill_id FROM csr.skill WHERE name='Reading'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='King(KG)'),
  (SELECT skill_id FROM csr.skill WHERE name='Diplomacy & Politics'));

-- ADD father_vocation's RELATED binary_skillss
INSERT INTO csr.father_vocation_binary_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Cowherd'),
  (SELECT skill_id FROM csr.skill WHERE name='Cattle Herding'));
INSERT INTO csr.father_vocation_binary_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Cowherd'),
  (SELECT skill_id FROM csr.skill WHERE name='Dairy Herding'));
INSERT INTO csr.father_vocation_binary_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mstr. Goldsmith'),
  (SELECT skill_id FROM csr.skill WHERE name='Goldsmithing'));
INSERT INTO csr.father_vocation_binary_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mstr. Goldsmith'),
  (SELECT skill_id FROM csr.skill WHERE name='Jewelsmithing'));


-- ADD IO_PC_DATAS
INSERT INTO csr.io_pc_data(first_name, last_name, build, height, weight, aspect, rank, status, bags, flags, gender, gold, interface_flags, internal_script, level, name, race, social_class, xp, father_vocation) VALUES(
-- ADD io_pc_data's RELATED groupss

-- ADD io_pc_data's RELATED inventory_itemss

-- ADD io_pc_data's RELATED attributess

-- ADD io_pc_data's RELATED equipped_itemss


