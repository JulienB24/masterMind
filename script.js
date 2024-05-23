const couleurs = ["🔴", "🟢", "🔵", "🟡"];
let jouer = document.querySelector("#jouer");
let message = document.querySelector("#message");
let messageJ1 = document.querySelector("#messageJ1");
let choixJ1 = [];
let boutonsCouleur = document.querySelectorAll(".couleur");
let boutons = document.querySelector("#bouton-joueur");
let tour = 1; // Variable pour suivre le tour actuel

boutons.style.display = "none";

jouer.addEventListener("click", function () {
  jouer.style.display = "none";
  boutons.style.display = "block";
  container.style.display = "block";
  manche.style.display = "block";
  message.style.display = "block";

  // Réinitialiser la variable tour
  tour = 1;

  // Effacer le contenu des divs correspondant aux rounds tout en conservant le numéro du tour
  for (let i = 1; i <= 10; i++) {
    let roundDiv = document.getElementById(`round${i}`);
    roundDiv.innerHTML = "⚫⚫⚫⚫"; // Remettre le numéro du tour
  }

  // Réinitialiser le contenu de la variable choixJ1
  choixJ1 = [];

  // Choisissez 4 couleurs aléatoires pour le jeu
  let couleursChoisies = [];
  for (let i = 0; i < 4; i++) {
    let index = Math.floor(Math.random() * couleurs.length);
    couleursChoisies.push(couleurs[index]);
  }
  // Affichez les couleurs choisies pour le jeu
  message.style.display = "none";
  message.innerHTML = "Combinaison secrète : " + couleursChoisies.join(", ");

  // Réinitialisez le texte affichant le tour actuel
  document.getElementById("manche").textContent = "Manche n° " + tour + " /10";
});

boutonsCouleur.forEach(function (bouton) {
  bouton.addEventListener("click", function () {
    if (choixJ1.length < 4) {
      // Vérifiez si le jeu est actif et que le nombre de choixJ1 est inférieur à 4
      let couleurSelectionnee = bouton.getAttribute("data-couleur");
      // Ajoutez la couleur sélectionnée à choixJ1
      choixJ1.push(couleurSelectionnee);

      // Si J1 a choisi 4 couleurs, vérifiez la proposition
      if (choixJ1.length === 4) {
        verifierProposition(choixJ1);

        choixJ1 = [];
      }
    }
  });
});

function verifierProposition(choixJ1) {
  let bienPlace = 0;
  let malPlace = 0;

  let couleursSecretes = message.textContent.split(" : ")[1].split(", "); // Récupérer la combinaison secrète
  console.log("Couleurs secrètes :", couleursSecretes); // Afficher les couleurs secrètes dans la console

  // Tableau pour stocker les indices des couleurs bien placées dans la combinaison secrète
  let indicesBienPlaces = [];

  // Tableau pour stocker les indices des couleurs bien placées chez le joueur
  let indicesBienPlacesJoueur = [];

  // Vérification des couleurs bien placées
  for (let i = 0; i < 4; i++) {
    if (choixJ1[i] === couleursSecretes[i]) {
      bienPlace++;
      // Marquer l'indice de la couleur bien placée chez le joueur et dans la combinaison secrète
      indicesBienPlacesJoueur.push(i);
      indicesBienPlaces.push(i);
    }
  }

  // Compter les mal placés en ignorant les bien placés
  for (let i = 0; i < 4; i++) {
    if (!indicesBienPlacesJoueur.includes(i)) {
      for (let j = 0; j < 4; j++) {
        if (
          !indicesBienPlaces.includes(j) &&
          choixJ1[i] === couleursSecretes[j]
        ) {
          malPlace++;
          // Marquer l'indice de la couleur mal placée chez le joueur et dans la combinaison secrète
          indicesBienPlacesJoueur.push(i);
          indicesBienPlaces.push(j);
          break;
        }
      }
    }
  }

  // Si toutes les couleurs sont bien placées, afficher un message de victoire
  if (bienPlace === 4) {
    messageJ1.innerHTML =
      "BRAVO, VOUS AVEZ GAGNÉ !! <i class='fa-solid fa-trophy'></i>";
    boutons.style.display = "none";
    jouer.style.display = "block";
    container.style.display = "block";
    manche.style.display = "none";
    message.style.display = "block";
  } else {
    // Mettre à jour le contenu du div correspondant au round actuel avec les choix du joueur
    let roundDiv = document.getElementById(`round${tour}`);
    roundDiv.innerHTML =
      choixJ1.join(" ") +
      `/ <i class="fa-solid fa-circle-check"></i> : ${bienPlace} | <i class="fa-regular fa-circle-xmark"></i> : ${malPlace}`;

    // Passer au tour suivant
    tour++;
    if (tour > 10) {
      messageJ1.innerHTML =
        "PARTIE TERMINÉE, VOUS AVEZ PERDU !! <i class='fa-solid fa-bomb'></i> ";
      boutons.style.display = "none";
      jouer.style.display = "block";
      container.style.display = "block";
      manche.style.display = "none";
      message.style.display = "block";
    } else {
      // Mettre à jour le texte affichant le tour actuel
      document.getElementById("manche").textContent =
        "Manche n° " + tour + " /10";
    }
  }

  // Réinitialiser les choix de J1 pour le prochain tour
  choixJ1 = [];
}
