<?php

	function verif_bd($login,$mdp) { //CONNEXION D'UTILISATEUR
		
		require ("./Modele/connectBD.php") ; //connexion $link à MYSQL et sélection de la base
	
		$select_utilisateur= "select * from utilisateur where loginUtilisateur = '%s' and mdpUtilisateur = '%s'"; 
		$req_utilisateur = sprintf($select_utilisateur,$login,$mdp);
		
		$res_utilisateur = mysqli_query($link, $req_utilisateur)	
		or die (utf8_encode("erreur de requête : " . $req_utilisateur));
		
		if ($res_utilisateur) {
			$rowcount = mysqli_num_rows($res_utilisateur); //0
			echo $rowcount;
			$profil = mysqli_fetch_assoc($res_utilisateur);
			var_dump($profil); //null
			return -1;
		} 
		else {
			$profil = null;
			echo 'Echec de connexion';
			return 0;
		}
	}
	
	
	
	//insertion de l'utilisateur à la base de données
	function creerUtilisateur($prenomUtilisateur,$nomUtilisateur, $mdpUtilisateur,$naissanceUtilisateur,$sexeUtilisateur,$loginUtilisateur){
		require ("./Modele/connectBD.php") ; //connexion $link à MYSQL et sélection de la base
			
			$insert_user= "insert into etudiant(prenomUtilisateur,nomUtilisateur, mdpUtilisateur,naissanceUtilisateur, sexeUtilisateur,loginUtilisateur); 
			values ('%s','%s','%s','%s','%s','%s')"; 
			$req_user=sprintf($insert_user, $prenomUtilisateur,$nomUtilisateur, $mdpUtilisateur,$naissanceUtilisateur,$sexeUtilisateur,$loginUtilisateur );
			
			$res_etu = mysqli_query($link, $req_etu)	
				or die (utf8_encode("erreur de requête : " . $req_etu));
	}




?>