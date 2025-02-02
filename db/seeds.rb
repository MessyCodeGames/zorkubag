# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts 'Destroying kill means cards'
KillMean.destroy_all
puts 'All kill means cards have been destroyed'

# Creating the projects
puts 'Creating the kill means cards'
KillMean.create!(
  name: "Pris dans les bouchons",
  objective: "Faites sentir une bouteille de vin ouverte à votre victime en lui faisant remarquer: 'Le vin est bouchonné, tu ne trouves pas?'. Attendez, sa réaction avant de lui répondre 'Le vin je sais pas, mais toi, t'es bien faisandé!'",
  action_zone: "La table du repas.",
  weapon: "Une bouteille",
  flavor_test: "Elle meurt, les narines rafraichies à l'acide sulfurique",
  difficulty: 1,
  card_type: "orange"
)

KillMean.create!(
  name: "Vieillesse spontanée",
  objective: "Souhaitez un joyeux anniversaire à votre victime, même si ce n'est pas le sien, en lui offrant un petit cadeau (ce que vous voulez, mais emballé). Votre victime doit le prendre.",
  action_zone: "Partout",
  weapon: "La perfidie",
  flavor_test: "Malgré sa joie, elle ne peut s'empêcher de se rappeler qu'elle prend un an chaque année (ce qu'elle occultait jusqu'ici). Votre geste réveille ce qui se cachait. Elle prend 50 ans en 2 secondes se racornit et meurt",
  difficulty: 2,
  card_type: "orange"
)

KillMean.create!(
  name: "Arête tu me fais mal!",
  objective: "Amenez votre victime à vous donner une recette contenant au moins du poisson ou des fruits de mer. Lorsqu'elle a fini, lui dire 'J'ai déjà essayé, c'est dégueulasse ton truc!'",
  action_zone: "Partout",
  weapon: "La dénigrement",
  flavor_test: "Plus discret et plus sûr qu'une arête de poisson, c'est le dépit qui fera s'étrangler votre victie",
  difficulty: 1,
  card_type: "blue"
)

KillMean.create!(
  name: "Le septième sceau",
  objective: "Faites dire à votre victime: 'Je ne triche jamais' (la même phrase au passé, ou au futur est acceptée). Vous rétorquerez ensuite 'Même avec la mort?'",
  action_zone: "Partout",
  weapon: "Votre persuasion",
  flavor_test: "Là, elle meurt",
  difficulty: 1,
  card_type: "blue"
)

KillMean.create!(
  name: "Médecine perpendiculaire",
  objective: "Vous devez faire assoir votre victime puis lui toucher les deux genoux",
  action_zone: "Partout",
  weapon: "Vos mains",
  flavor_test: "Le fluide énergétique contenu dans vos mains va bouleverser la chimie interne de votre victime, qui va se retrouver avec le foie au niveau du coeur. Implosion, empoisonement, dysfonctionnement, fuite d'énergie vitale... mort interne immédiate",
  difficulty: 1,
  card_type: "blue"
)

KillMean.create!(
  name: "Un dernier pour la route",
  objective: "Trinquez avec votre victime. Entrechoquez votre verre avec le sien et la regardant dans les yeux et en lui disant 'A notre belle amitié'. Après qu'elle a prononcé les mots 'A la tienne' (ou 'Tchin!' ou quelque phrase équivalente).",
  action_zone: "L'apéro, les repas et autres collations",
  weapon: "Un beau sourire",
  flavor_test: "Vous pouvez lui annoncer qu'elle peut enfin mourir en paix, rassurée sur votre compte et avec du plutonium dans le gosier",
  difficulty: 1,
  card_type: "blue"
)

KillMean.create!(
  name: "Star Epidémie",
  objective: "Vous devez faire chanter votre victime (vous devez chanter avec elle) devant témoin(s)",
  action_zone: "Partout",
  weapon: "Votre amour de la musique",
  flavor_test: "La honte la tuera, à moins que cela ne soit le ridicule",
  difficulty: 1,
  card_type: "blue"
)

KillMean.create!(
  name: "La dernière bouchée",
  objective: "Votre victime doit ingérer un morceau de ce qui est dans votre assiette. Une fois le morceau dans sa bouche, vous devez lui dire 'C'est bon?'",
  action_zone: "Les repas et autres collations",
  weapon: "Votre nourriture",
  flavor_test: "Là, elle décède, empoisonnée tout simplement (pas besoin de mettre du vrai poison dans la nourriture, ce n'est qu'un jeu)",
  difficulty: 1,
  card_type: "orange"
)

KillMean.create!(
  name: "Rira bien qui rira le dernier",
  objective: "Obtenir un rire de votre victime. Un sourire ne peut suffire, il faut un bruit franc",
  action_zone: "seul ou presque (pas plus de 3 personnes présentes dans un cercle de trois mètres)",
  weapon: "Votre humour",
  flavor_test: "Preuve que votre victime sétouffe réellement, et qu'elle meurt de rire",
  difficulty: 2,
  card_type: "blue"
)

KillMean.create!(
  name: "La mort au bout des mots",
  objective: "Votre victime doit lire la phrase suivante: 'Si tu lis ces mots, tu es mort!'. Cette phrase doit être écrite.",
  action_zone: "Partout",
  weapon: "Une phrase",
  flavor_test: "Ces mots associés les uns aux autres connectent des synapses qui n'ont pas l'habitude d'être connectées",
  difficulty: 1,
  card_type: "blue"
)


puts 'Kill means cards created'
