/**
 * appel des differents module
 */
const express = require('express');
const ejs = require('ejs');
const mysql = require('mysql');
const methodOverride = require('method-override');

/**
 * Initialisation du serveur express
 */
const server = express();
/**
 *  Dire à express où aller trouver les vues(Nos pages web que le user sait voir)
 */
server.set('views');
/**
 * appel de tout fichier externe(css)
 */
server.use(express.static(__dirname + '/public'));
/**
 * Dire à express d'utiliser EJS comme moteur de template
 */
server.set('view engine', 'ejs');
/**
 * configuration de la base de donne
 */
const connection = mysql.createConnection({
  host:'localhost',
  user:'root',
  password:'1234',
  database:'jeaune_congo'
});


/**
 * affichages de tout les produits se trouvant dans la base de donnée
 */
server.get('/', (req, res) => {
  connection.query('select * from products', (erreur, resultat) => {
    if (erreur) throw erreur;    
    return res.render('produits/index', { produits: resultat });
  });
});
/**
 * affichage d'un produit en particulier
 */
server.get('/produits/:id', (req, res) => {
  connection.query(
    `select * from products where id=${req.params.id}`,
    (erreur, resultat) => {
      if (erreur) throw erreur;
      if(resultat.length<1){
        return res.send('404 not found');
      }else{
        return res.render('produits/detail', { produit: resultat[0] });
      }
    }
  );
});






 









//Définition du port
const PORT = 8000;
server.listen(PORT, () => {
  console.log(`Le serveur écoute sur le port ${PORT}`);
});
