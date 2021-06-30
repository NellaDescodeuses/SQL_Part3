# Partie 3

## exercice 1
-- Créer la base codex, créer une table clients avec les colonnes id, lastName, firstName,birthDate, adress, phoneNumber et mail.
CREATE TABLE `clients` (`id` INT, `lastName` VARCHAR(30), `firstName` VARCHAR(30), `birthDate` DATE, `adress` VARCHAR(100), `phoneNumber` VARCHAR(10), `mail` VARCHAR(50));

## exercice 2
-- Dans la base de donnée 'webDevelopment',ajouter à la table languages une colonne versions (VARCHAR).
USE webDevelopment;
ALTER TABLE `languages` ADD `versions` VARCHAR(30);

## exercice 3
-- Ajouter à la table frameworks une colonne version (INT)
ALTER TABLE `frameworks` ADD `version` VARCHAR(30);

## exercice 4
-- Dans la table languages renommer la colonne versions en version.
ALTER TABLE `languages` CHANGE `versions` `version` VARCHAR(30);

## exercice 5
-- Dans la table frameworks, renommer la colonne name en framework.
ALTER TABLE `frameworks` CHANGE `name` `frameworks` VARCHAR(30);

## exercice 6
-- à la table frameworks changer le type de la colonne version en VARCHAR de taille 10.
ALTER TABLE `frameworks` MODIFY `version` VARCHAR(10)

##Bonus
-- Dans la base codex, dans la table clients et en une seule requête :
-- -supprimer la colonne phoneNumber -renommer la colonne mail par mails --ajouter les colonnes zipCode(VARCHAR) et city(VARCHAR)
USE codex;
ALTER TABLE `clients` DROP `phoneNumber`, CHANGE `mail` `mails` VARCHAR(55), ADD `zipCode` VARCHAR(55),ADD `city` VARCHAR(55);