use zeiterfassung;

INSERT IGNORE INTO tblzeitmodelle SET id = '5c88d4c5-4c8a-45f6-85f0-170ff4112427', bezeichnung='Standard'; 
INSERT IGNORE INTO tblzeitmodelle SET id = '5c88d4c5-4c8a-45f6-85f0-170ff4112401', bezeichnung='Standard-1'; 
INSERT IGNORE INTO tblzeitmodelle SET id = '5c88d4c5-4c8a-45f6-85f0-170ff4112402', bezeichnung='Standard-2'; 
INSERT IGNORE INTO tblzeitmodelle SET id = '5c88d4c5-4c8a-45f6-85f0-170ff4112403', bezeichnung='Standard-3'; 
INSERT IGNORE INTO tblzeitmodelle SET id = '5c88d4c5-4c8a-45f6-85f0-170ff4112404', bezeichnung='Standard-4'; 
INSERT IGNORE INTO tblzeitmodelle SET id = '5c88d4c5-4c8a-45f6-85f0-170ff4112405', bezeichnung='Standard-5'; 
INSERT IGNORE INTO tblzeitmodelle SET id = '5c88d4c5-4c8a-45f6-85f0-170ff4112406', bezeichnung='Standard-6'; 
INSERT IGNORE INTO tblzeitmodelle SET id = '5c88d4c5-4c8a-45f6-85f0-170ff4112407', bezeichnung='Standard-6'; 
INSERT IGNORE INTO tblzeitmodelle SET id = '5c88d4c5-4c8a-45f6-85f0-170ff4112408', bezeichnung='Standard-7'; 


INSERT IGNORE INTO `tblmitarbeiter` SET `username` = 'limago', `fullname` = 'Hersteller', hersteller=TRUE,password = '$2a$10$VyNSiMVB5s8M2MEOm1Mh/el8NW3mPM3UX81trnjgTVGdDrqbpq8Qq';

INSERT IGNORE INTO `tblmitarbeiter` SET `username` = 'peter', `fullname` = 'Peter Hinz', hersteller=FALSE,password = '$2a$10$VyNSiMVB5s8M2MEOm1Mh/el8NW3mPM3UX81trnjgTVGdDrqbpq8Qq';

INSERT IGNORE INTO `tblmitarbeiter` SET `username` = 'paul', `fullname` = 'Paul Kunz', hersteller=FALSE,password = '$2a$10$VyNSiMVB5s8M2MEOm1Mh/el8NW3mPM3UX81trnjgTVGdDrqbpq8Qq';

INSERT IGNORE INTO `tblmitarbeiter` SET `username` = 'mary', `fullname` = 'Mary Schmidt', hersteller=FALSE,password = '$2a$10$VyNSiMVB5s8M2MEOm1Mh/el8NW3mPM3UX81trnjgTVGdDrqbpq8Qq';


INSERT IGNORE INTO `zeiterfassung`.`tblmonteure_zeitmodelle` SET `beginn_gueltigkeit` = '2019-01-01', `mitarbeiter_username`='limago', `zeitmodell_id`='5c88d4c5-4c8a-45f6-85f0-170ff4112427';
INSERT IGNORE INTO `zeiterfassung`.`tblmonteure_zeitmodelle` SET `beginn_gueltigkeit` = '2019-01-01', `mitarbeiter_username`='peter', `zeitmodell_id`='5c88d4c5-4c8a-45f6-85f0-170ff4112427';


DELETE FROM tblmitarbeiterrollen WHERE username = 'limago';
DELETE FROM tblmitarbeiterrollen WHERE username = 'peter';
DELETE FROM tblmitarbeiterrollen WHERE username = 'paul';
DELETE FROM tblmitarbeiterrollen WHERE username = 'mary';


INSERT IGNORE INTO `tblmitarbeiterrollen` SET `username` = 'limago', `rolle` = 'ADMIN';
INSERT IGNORE INTO `tblmitarbeiterrollen` SET `username` = 'limago', `rolle` = 'MANAGER';
INSERT IGNORE INTO `tblmitarbeiterrollen` SET `username` = 'limago', `rolle` = 'MEISTER';
INSERT IGNORE INTO `tblmitarbeiterrollen` SET `username` = 'limago', `rolle` = 'MONTEUR';

INSERT IGNORE INTO `tblmitarbeiterrollen` SET `username` = 'mary', `rolle` = 'MANAGER';
INSERT IGNORE INTO `tblmitarbeiterrollen` SET `username` = 'paul', `rolle` = 'MEISTER';
INSERT IGNORE INTO `tblmitarbeiterrollen` SET `username` = 'peter', `rolle` = 'MONTEUR';