USE adlister_pair_project;


#IMPORTANT!!!! Run migration file before running seeder to clear current

# |  1 | ttwelvetrees0 | lmandell0@studiopress.com | $2a$12$ZYEz22t0h2RIr5LaxhGWteSM1/04kbldj1WWn8ssJgjTU4SuPgJh. |
# |  2 | hkingsmill1   | pallott1@bluehost.com     | $2a$12$OuWltf.TrkzrE7eOgNXjke/QFocE6anTbQm1HkdRaYl/C8p.PDMdW |
# |  3 | sburfoot2     | bkrinks2@yellowbook.com   | $2a$12$BPycyRwAS7vejADCSR7qi.K7n6d0FN1kUohrr7Vw7Uj36TPFaMsFa |
# |  5 | admin         | admin@email.com           | $2a$12$uhYpC7vnvoZsuGttHqIOCOJdKAIl5yihJUJctdgmbnJo.D4Wyxfua |
# |  6 | aarmanc       | mbealec@adobe.com         | $2a$12$KEGMp3jZYbHmXdUVJ/IKjeNQhXyr4/u7SnWkZ/jBu878a4o.1iUA6 |
# |  7 | Andre         | andre@email.com           | $2a$12$phm0in/l5oX09KgJRLFnO.PXtQ60dSWJzDlyyTQsSFZ/zBtcuox3K |
# |  8 | Said          | Said@email.com            | $2a$12$5nDLcuYufYYoB47nZ7RnhOF4K35nTpwrKUjnDekXfleeNHMBK6Fha |
# |  9 | Luke          | Luke@email.com            | $2a$12$YVPWQxxtm12BUntwpJX7tOyMWLAnH2hgSqORNZPO8.8lgV42gq4Mm |
# | 10 | Ricardo       | ricardo@email.com         | $2a$12$ZoCVDG3Kg9NoL8xhfKyyCO48u8zHK2W2vLK8up7QcOme5myTBDmAm

INSERT INTO  users (username, email, password) VALUES ('aarmanc', 'mbealec@adobe.com', '$2a$12$sOdELYRavX8WQDnG4YOJT.h/XhLLODX5Uu4QkkYsuCrl4K1vi0plq'); #password is aarmanc for this user
INSERT INTO  users (username, email, password) VALUES ('admin', 'admin@email.com', '$2a$12$LTx4pgyJbvIw6LkMC3.13OWTCXYO7Fc/BpIhasylJSF9cDzkS9l.m'); #password is password for this user
INSERT INTO  users (username, email, password) VALUES ('Andre', 'andre@email.com', '$2a$12$6bx7n4IhzHyIk56DHJyfYO5LkMRedzE/667cBnBx2./c1n6HvDFM2');
INSERT INTO  users (username, email, password) VALUES ('luke', 'luke@email.com', '$2a$12$LFzI/iLbkrCXRjp412Qun.txpWHEkumWzoTcwE/4YPVNu51VUuTTa');
INSERT INTO  users (username, email, password) VALUES ('Said', 'said@email.com', '$2a$12$qfrEgXTS5OsSZsHsgKQ5f.HlmsvGcCz1AqB/F2uCbhWht1jDgaMB2');
INSERT INTO  users (username, email, password) VALUES ('Ricardo', 'ricardo@email.com', '$2a$12$2QzLzsFihYYRKBQNac/LCeQJaUP/LBAduqVkMtnqrOQ.1Yydp0Jim');
INSERT INTO  users (username, email, password) VALUES ('ttwelvetrees0', 'lmandell0@studiopress.com', '');#password is trees for this user

INSERT INTO ads (user_id, category, title, description, price, photo) VALUES (3, 'electronics', 'MacBook Pro', 'Lightly used comes with charger', 800,  'https://images.pexels.com/photos/102061/pexels-photo-102061.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2');
INSERT INTO ads (user_id, category, title, description, price, photo) VALUES (6, 'electronics', 'Ipad', 'Comes with case and screen protector', 300, 'https://images.pexels.com/photos/768473/pexels-photo-768473.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2');
INSERT INTO ads (user_id, category, title, description, price, photo) VALUES (3, 'electronics', 'Iphone 6', 'Comes with case and screen protector', 200, 'https://images.pexels.com/photos/635535/pexels-photo-635535.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2');
INSERT INTO ads (user_id, category, title, description, price, photo) VALUES (2, 'electronics', 'Monitor', 'never really used has been sitting for 3 months works', 150, 'https://images.pexels.com/photos/967065/pexels-photo-967065.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2');
INSERT INTO ads (user_id, category, title, description, price, photo) VALUES (6, 'services', 'Website Building', 'Need a website built email me for more information', 500,'https://images.pexels.com/photos/6476595/pexels-photo-6476595.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2');
INSERT INTO ads (user_id, category, title, description, price, photo) VALUES (7, 'services', 'De-bugging', 'will de-bug code when you are stuck', 100, 'https://images.pexels.com/photos/2338148/pexels-photo-2338148.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2');
INSERT INTO ads (user_id, category, title, description, price, photo) VALUES (7, 'services', 'Code cleaning', 'will review code and make suggestions on how to clean it up and improve it', 150, 'https://images.pexels.com/photos/14016664/pexels-photo-14016664.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2');
INSERT INTO ads (user_id, category, title, description, price, photo) VALUES (4, 'services', 'Tutoring', 'Need help writing code and understanding it I offer tutoring for those that need it', 60, 'https://images.pexels.com/photos/6929194/pexels-photo-6929194.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2');



DELETE FROM users WHERE id = 1;