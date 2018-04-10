<!doctype html>
<html lang="fr">
<head>
  <meta charset="utf-8">
  <title>Connexion</title>
  <link rel="stylesheet" href="Vue/style/style.css">
  <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<div id="pageConnexion">
		<form method="post" name="formConnexion" action="index.php?controle=utilisateur&action=ident">
		<div id="loginMdp">
			<div class="form-group">
				<div class="col-md-4 col-xs-5">
					<label for="loginUtilisateur" style="color:#fff;">Adresse e-mail ou mobile</label>
					<input type="text" class="form-control" id="loginUtilisateur" placeholder="Votre login" autofocus required>
				</div>
			</div>
			<div class="form-group">
			  <div class="col-md-4 col-xs-5">
					<label for="mdpUtilisateur" style="color:#fff;">Mot de passe</label>
					<input type="password" class="form-control" id="mdpUtilisateur" placeholder="Votre mot de passe" required>
			  </div>
			</div>
		  </div>
		  <div class="form-group align-bottom">
			  <button type="submit" class="btn btn-primary" class="align-bottom">Connexion</button>
		  </div>
		</form>
	</div>
</body>
</html>