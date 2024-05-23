<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="AFFICHER &quot;-----------------------------------------------------------------------------------------------------------------------------------------&quot;"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2etat="inactif" F2para="" F2lignes="" F2defaut=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param nbDecimales="8" totalBoucles="5000000" totalAffichages="1000" arrondiAuto="vrai" epaisseurLigne="2" maxBoucle="500000" epaisseurPoint="2"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="joueurA EST_DU_TYPE LISTE" code="1#LISTE#joueurA"/>
        <item algoitem="joueurB EST_DU_TYPE LISTE" code="1#LISTE#joueurB"/>
        <item algoitem="joueurAtemp EST_DU_TYPE LISTE" code="1#LISTE#joueurAtemp"/>
        <item algoitem="joueurBtemp EST_DU_TYPE LISTE" code="1#LISTE#joueurBtemp"/>
        <item algoitem="bienPlace EST_DU_TYPE NOMBRE" code="1#NOMBRE#bienPlace"/>
        <item algoitem="malPlace EST_DU_TYPE NOMBRE" code="1#NOMBRE#malPlace"/>
        <item algoitem="i EST_DU_TYPE NOMBRE" code="1#NOMBRE#i"/>
        <item algoitem="j EST_DU_TYPE NOMBRE" code="1#NOMBRE#j"/>
        <item algoitem="nbrManche EST_DU_TYPE NOMBRE" code="1#NOMBRE#nbrManche"/>
        <item algoitem="win EST_DU_TYPE NOMBRE" code="1#NOMBRE#win"/>
        <item algoitem="recommencer EST_DU_TYPE NOMBRE" code="1#NOMBRE#recommencer"/>
        <item algoitem="nouvellePartie EST_DU_TYPE CHAINE" code="1#CHAINE#nouvellePartie"/>
        <item algoitem="PointA EST_DU_TYPE NOMBRE" code="1#NOMBRE#PointA"/>
        <item algoitem="PointB EST_DU_TYPE NOMBRE" code="1#NOMBRE#PointB"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="bienPlace PREND_LA_VALEUR 0" code="5#bienPlace#0#pasliste"/>
        <item algoitem="nbrManche PREND_LA_VALEUR 1" code="5#nbrManche#1#pasliste"/>
        <item algoitem="win PREND_LA_VALEUR 0" code="5#win#0#pasliste"/>
        <item algoitem="recommencer PREND_LA_VALEUR 0" code="5#recommencer#0#pasliste"/>
        <item algoitem="AFFICHER &quot;Bienvenue dans le jeu Mastermind !&quot;" code="4#Bienvenue dans le jeu Mastermind !#1"/>
        <item algoitem="TANT_QUE (recommencer == 0) FAIRE" code="15#recommencer == 0">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="AFFICHER &quot;Manche n° &quot;" code="4#Manche n° #0"/>
            <item algoitem="AFFICHER nbrManche" code="3#nbrManche#1#pasliste"/>
            <item algoitem="POUR i ALLANT_DE 1 A 4" code="12#i#1#4">
                <item algoitem="DEBUT_POUR" code="13#debutpour"/>
                <item algoitem="joueurA[i] PREND_LA_VALEUR ALGOBOX_ALEA_ENT(1, 4)" code="5#joueurA#ALGOBOX_ALEA_ENT(1, 4)#i"/>
                <item algoitem="AFFICHER joueurA[i]" code="3#joueurA#0#i"/>
                <item algoitem="joueurAtemp[i] PREND_LA_VALEUR joueurA[i]" code="5#joueurAtemp#joueurA[i]#i"/>
                <item algoitem="FIN_POUR" code="14#finpour"/>
            </item>
            <item algoitem="TANT_QUE (nbrManche &lt;= 10 ET win == 0) FAIRE" code="15#nbrManche &lt;= 10 ET win == 0">
                <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
                <item algoitem="AFFICHER &quot; &quot;" code="4# #1"/>
                <item algoitem="AFFICHER &quot;Tentative n° &quot;" code="4#Tentative n° #0"/>
                <item algoitem="AFFICHER nbrManche" code="3#nbrManche#1#pasliste"/>
                <item algoitem="AFFICHER &quot; &quot;" code="4# #1"/>
                <item algoitem="AFFICHER &quot;Proposition du joueur B (entrez 4 nombres entre 1 et 4) : &quot;" code="4#Proposition du joueur B (entrez 4 nombres entre 1 et 4) : #0"/>
                <item algoitem="POUR j ALLANT_DE 1 A 4" code="12#j#1#4">
                    <item algoitem="DEBUT_POUR" code="13#debutpour"/>
                    <item algoitem="LIRE joueurB[j]" code="2#joueurB#j"/>
                    <item algoitem="TANT_QUE (joueurB[j] &lt; 1 OU joueurB[j] > 4) FAIRE" code="15#joueurB[j] &lt; 1 OU joueurB[j] > 4">
                        <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
                        <item algoitem="AFFICHER &quot;Saisie incorrecte. Veuillez entrer un nombre entre 1 et 4 : &quot;" code="4#Saisie incorrecte. Veuillez entrer un nombre entre 1 et 4 : #0"/>
                        <item algoitem="LIRE joueurB[j]" code="2#joueurB#j"/>
                        <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
                    </item>
                    <item algoitem="joueurBtemp[j] PREND_LA_VALEUR joueurB[j]" code="5#joueurBtemp#joueurB[j]#j"/>
                    <item algoitem="FIN_POUR" code="14#finpour"/>
                </item>
                <item algoitem="POUR i ALLANT_DE 1 A 4" code="12#i#1#4">
                    <item algoitem="DEBUT_POUR" code="13#debutpour"/>
                    <item algoitem="SI (joueurA[i] == joueurB[i]) ALORS" code="6#joueurA[i] == joueurB[i]">
                        <item algoitem="DEBUT_SI" code="7#debutsi"/>
                        <item algoitem="bienPlace PREND_LA_VALEUR bienPlace + 1" code="5#bienPlace#bienPlace + 1#pasliste"/>
                        <item algoitem="joueurAtemp[i] PREND_LA_VALEUR 0" code="5#joueurAtemp#0#i"/>
                        <item algoitem="joueurBtemp[i] PREND_LA_VALEUR 0" code="5#joueurBtemp#0#i"/>
                        <item algoitem="FIN_SI" code="8#finsi"/>
                    </item>
                    <item algoitem="FIN_POUR" code="14#finpour"/>
                </item>
                <item algoitem="malPlace PREND_LA_VALEUR 0" code="5#malPlace#0#pasliste"/>
                <item algoitem="POUR i ALLANT_DE 1 A 4" code="12#i#1#4">
                    <item algoitem="DEBUT_POUR" code="13#debutpour"/>
                    <item algoitem="SI (joueurAtemp[i] != 0) ALORS" code="6#joueurAtemp[i] != 0">
                        <item algoitem="DEBUT_SI" code="7#debutsi"/>
                        <item algoitem="POUR j ALLANT_DE 1 A 4" code="12#j#1#4">
                            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
                            <item algoitem="SI (joueurAtemp[i] == joueurBtemp[j] ) ALORS" code="6#joueurAtemp[i] == joueurBtemp[j] ">
                                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                                <item algoitem="malPlace PREND_LA_VALEUR malPlace + 1" code="5#malPlace#malPlace + 1#pasliste"/>
                                <item algoitem="joueurAtemp[i] PREND_LA_VALEUR 0" code="5#joueurAtemp#0#i"/>
                                <item algoitem="joueurBtemp[j] PREND_LA_VALEUR 0" code="5#joueurBtemp#0#j"/>
                                <item algoitem="FIN_SI" code="8#finsi"/>
                            </item>
                            <item algoitem="FIN_POUR" code="14#finpour"/>
                        </item>
                        <item algoitem="FIN_SI" code="8#finsi"/>
                    </item>
                    <item algoitem="FIN_POUR" code="14#finpour"/>
                </item>
                <item algoitem="AFFICHER &quot;Bien placé : &quot;" code="4#Bien placé : #0"/>
                <item algoitem="AFFICHER bienPlace" code="3#bienPlace#1#pasliste"/>
                <item algoitem="AFFICHER &quot;Bonne couleur, mal placé : &quot;" code="4#Bonne couleur, mal placé : #0"/>
                <item algoitem="AFFICHER malPlace" code="3#malPlace#1#pasliste"/>
                <item algoitem="AFFICHER &quot; &quot;" code="4# #1"/>
                <item algoitem="SI (bienPlace == 4) ALORS" code="6#bienPlace == 4">
                    <item algoitem="DEBUT_SI" code="7#debutsi"/>
                    <item algoitem="win PREND_LA_VALEUR 1" code="5#win#1#pasliste"/>
                    <item algoitem="FIN_SI" code="8#finsi"/>
                </item>
                <item algoitem="bienPlace PREND_LA_VALEUR 0" code="5#bienPlace#0#pasliste"/>
                <item algoitem="malPlace PREND_LA_VALEUR 0" code="5#malPlace#0#pasliste"/>
                <item algoitem="nbrManche PREND_LA_VALEUR nbrManche + 1" code="5#nbrManche#nbrManche + 1#pasliste"/>
                <item algoitem="AFFICHER &quot; &quot;" code="4# #0"/>
                <item algoitem="SI (win == 1 OU nbrManche > 10) ALORS" code="6#win == 1 OU nbrManche > 10">
                    <item algoitem="DEBUT_SI" code="7#debutsi"/>
                    <item algoitem="SI (win == 1) ALORS" code="6#win == 1">
                        <item algoitem="DEBUT_SI" code="7#debutsi"/>
                        <item algoitem="AFFICHER &quot;BRAVO, VOUS AVEZ GAGNÉ !!&quot;" code="4#BRAVO, VOUS AVEZ GAGNÉ !!#1"/>
                        <item algoitem="AFFICHER &quot; &quot;" code="4# #1"/>
                        <item algoitem="PointA PREND_LA_VALEUR PointA+1" code="5#PointA#PointA+1#pasliste"/>
                        <item algoitem="AFFICHER &quot;Point A: &quot;" code="4#Point A: #0"/>
                        <item algoitem="AFFICHER PointA" code="3#PointA#1#pasliste"/>
                        <item algoitem="AFFICHER &quot;Point B: &quot;" code="4#Point B: #0"/>
                        <item algoitem="AFFICHER PointB" code="3#PointB#1#pasliste"/>
                        <item algoitem="AFFICHER &quot; &quot;" code="4# #1"/>
                        <item algoitem="FIN_SI" code="8#finsi"/>
                        <item algoitem="SINON" code="9#sinon">
                            <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                            <item algoitem="AFFICHER &quot;PARTIE TERMINÉE, VOUS AVEZ PERDU&quot;" code="4#PARTIE TERMINÉE, VOUS AVEZ PERDU#1"/>
                            <item algoitem="AFFICHER &quot; &quot;" code="4# #1"/>
                            <item algoitem="PointB PREND_LA_VALEUR PointB+1" code="5#PointB#PointB+1#pasliste"/>
                            <item algoitem="AFFICHER &quot;Point A: &quot;" code="4#Point A: #0"/>
                            <item algoitem="AFFICHER PointA" code="3#PointA#1#pasliste"/>
                            <item algoitem="AFFICHER &quot;Point B: &quot;" code="4#Point B: #0"/>
                            <item algoitem="AFFICHER PointB" code="3#PointB#1#pasliste"/>
                            <item algoitem="AFFICHER &quot; &quot;" code="4# #1"/>
                            <item algoitem="FIN_SINON" code="11#finsinon"/>
                        </item>
                    </item>
                    <item algoitem="AFFICHER &quot;La combinaison secrète était : &quot;" code="4#La combinaison secrète était : #0"/>
                    <item algoitem="POUR i ALLANT_DE 1 A 4" code="12#i#1#4">
                        <item algoitem="DEBUT_POUR" code="13#debutpour"/>
                        <item algoitem="AFFICHER joueurA[i]" code="3#joueurA#0#i"/>
                        <item algoitem="FIN_POUR" code="14#finpour"/>
                    </item>
                    <item algoitem="AFFICHER &quot; &quot;" code="4# #1"/>
                    <item algoitem="AFFICHER &quot;Recommencer ? (o/n)&quot;" code="4#Recommencer ? (o/n)#1"/>
                    <item algoitem="LIRE nouvellePartie" code="2#nouvellePartie#pasliste"/>
                    <item algoitem="AFFICHER &quot; &quot;" code="4# #1"/>
                    <item algoitem="SI (nouvellePartie == &quot;o&quot;) ALORS" code="6#nouvellePartie == &quot;o&quot;">
                        <item algoitem="DEBUT_SI" code="7#debutsi"/>
                        <item algoitem="recommencer PREND_LA_VALEUR 0" code="5#recommencer#0#pasliste"/>
                        <item algoitem="nbrManche PREND_LA_VALEUR 1" code="5#nbrManche#1#pasliste"/>
                        <item algoitem="win PREND_LA_VALEUR 0" code="5#win#0#pasliste"/>
                        <item algoitem="FIN_SI" code="8#finsi"/>
                        <item algoitem="SINON" code="9#sinon">
                            <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                            <item algoitem="recommencer PREND_LA_VALEUR 1" code="5#recommencer#1#pasliste"/>
                            <item algoitem="FIN_SINON" code="11#finsinon"/>
                        </item>
                    </item>
                    <item algoitem="FIN_SI" code="8#finsi"/>
                </item>
                <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
            </item>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="AFFICHER &quot;-----------------------------------------------------------------------------------------------------------------------------------------&quot;" code="4#-----------------------------------------------------------------------------------------------------------------------------------------#1"/>
        <item algoitem="AFFICHER &quot;Merci d'avoir joué au Mastermind ! Au revoir.&quot;" code="4#Merci d'avoir joué au Mastermind ! Au revoir.#1"/>
        <item algoitem="AFFICHER &quot;-----------------------------------------------------------------------------------------------------------------------------------------&quot;" code="4#-----------------------------------------------------------------------------------------------------------------------------------------#1"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
