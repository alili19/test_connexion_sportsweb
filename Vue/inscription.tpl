<!doctype html>
<html lang="fr">
<head>
  <meta charset="utf-8">
  <title>Inscription</title>
   <link rel="stylesheet" href="Vue/style/style.css">
</head>


<body>
	<div id="pageInscription">
		<form method="post" action="index.php?controle=utilisateur&action=inscriptionUtilisateur" onsubmit="return valider ();" name="formInscription">
				<div class="form-group">
					<div class="col-md-5">
						<input type="text" name="prenomUtilisateur" class="form-control" id="prenomUtilisateur" placeholder="Prénom">
					</div>
				</div>
				<div class="form-group">
					<div class="col-md-5">
						<input type="text" name="nomUtilisateur" class="form-control" id="nomUtilisateur" placeholder="Nom de famille">
					</div>
				</div>
			
			<div class="form-group">
				<div class="col-md-10">
					<input type="text" class="form-control" name="loginUtilisateur" id="loginUtilisateur" placeholder="Numéro de mobile ou mobile">
				</div>
			</div>
			<div class="form-group">
				<div class="col-md-10">
					<input type="text" class="form-control" name="loginUtilisateurConfirm" id="loginUtilisateurConfirm" placeholder="Confirmer numéro de mobile ou email">
				</div>
			</div>
			<div class="form-group">
				<div class="col-md-10">
					<input type="text" class="form-control" name="mdpUtilisateur" id="mdpUtilisateur" placeholder="Nouveau mot de passe">
				</div>
			</div>
			<div class="form-group">
				<div class="col-md-10">
					<label for="naissanceUtilisateur">Date de naissance</label>
					<input type="date" class="form-control" name="naissanceUtilisateur" id="naissanceUtilisateur">
					<p><a href="">Pourquoi indiquer ma date de naissance ?</a></p>
				</div>
			</div>
			<div id="sexe">
				<div class="form-check">
					<div class="col-md-12">
					  <input class="form-check-input" type="radio" name="sexeUtilisateur" id="sexeFemme" value="0">Femme
					</div>
				</div>
				<div class="form-check">
					<div class="col-md-12">	
					 <input class="form-check-input" type="radio" name="sexeUtilisateur" id="sexeHomme" value="1">Homme
					</div>
				</div>
			</div>
			</div>
			<div id="DCU" class="col-md-10">
				<p>
					En cliquant sur Inscription, vous acceptez nos <a href="https://fr-fr.facebook.com/legal/terms">Conditions</a> 
					et indiquez que vous avez lu notre <a href="https://fr-fr.facebook.com/policies/cookies/">Politique d'utilisation des données</a>, y compris notre 
					<a href="https://fr-fr.facebook.com/policies/cookies/">Utilisations des cookies</a>
					Vous pourrez recevoir des notifications textos de la part de Facebook et pouvez vous désabonner à tout moment.
				</p>
			</div>
			<div class="col-md-10">
			<button type="submit" class="btn btn-success">Inscription</button>
			</div>
		</form>
	</div>	
<!--Le script est placé avant /body pour ne pas géner le chargement de la page-->	
<script type="text/javascript">

	function valider ( ){
		if ( document.formInscription.prenomUtilisateur.value == "" )
		{
			alert ( "Veuillez entrer votre prénom" );
			valid = false;
			return valid;
		}

		else if ( document.formInscription.nomUtilisateur.value == "" )
		{
			alert ( "Veuillez entrer votre nom" );
			valid = false;
			return valid;
		}
		else if ( document.formInscription.loginUtilisateur.value == "" || document.formInscription.loginUtilisateur.value <> document.formInscription.loginUtilisateurConfirm.value)
		{
			alert ( "login : il y a une erreur" );
			valid = false;
			return valid;
		}
		else if ( document.formInscription.mdpUtilisateur.value == "" )
		{
			alert ( "Veuillez entrer votre mot de passe" );
			valid = false;
			return valid;
		}	
	}
	
</script>	

</body>
</html>