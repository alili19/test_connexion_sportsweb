<?php
	function ident () {
		//recuperation du login et du password
		$login=isset($_POST['loginUtilisateur'])?trim($_POST['loginUtilisateur']):'';
		$mdp=isset($_POST['mdpUtilisateur'])?trim($_POST['mdpUtilisateur']):'';
		$msg="Utilisateur inexistant";
		require ("./modele/utilisateurBD.php"); //appel à la base de données
			if (verifS_ident($login, $mdp) && (verif_bd($login, $mdp) == -1)) {
				$profil = $login; 
				$_SESSION['profil'] = $profil;
				$nexturl = "index.php?controle=utilisateur&action=accueil";
				header ("Location: " . $nexturl);
				return;
			}
			else {
				pageConnexionInscription();
			}
	}
	
	
	//affichage des pages 
	
	function accueil(){
		require("Vue/accueil.tpl");
	}
	
	function pageConnexionInscription(){
		require("Vue/connexion.tpl");
		require("Vue/inscription.tpl");
	}
	
	
	
	// vérification syntaxique des saisies
	// nom : composé de caractères alphanumériques et du tiret, chaîne non vide de 30 caractères maximum
	// num : composé de caractères alphanumériques, à raison de 6 à 8 caractères
	// En cas d'erreur, une information sur l'erreur est retournée dans $err 
	function verifS_ident($login, $mdp, $err = null) {
		if (!preg_match("`^[[:alpha:][:digit:]\-]{1,255}$`", $login)) {
			$err = 'erreur de syntaxe sur le login';
			return false;
		}
		if (!preg_match("`^[[:alpha:][:digit:]\-]{1,255}$`", $mdp)) {
			$err = 'erreur de syntaxe sur le mdp.';
			return false;
		}
		return true;
	} 
	
?>