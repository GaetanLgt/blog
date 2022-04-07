-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : jeu. 07 avr. 2022 à 08:32
-- Version du serveur :  10.3.34-MariaDB-0ubuntu0.20.04.1
-- Version de PHP : 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `blog`
--
CREATE DATABASE IF NOT EXISTS `blog` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `blog`;

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `slug` varchar(60) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `content` longtext NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `auteur_id` int(11) NOT NULL,
  `categorie_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `titre`, `slug`, `image`, `content`, `created_at`, `updated_at`, `auteur_id`, `categorie_id`) VALUES
(1, 'Partially, but it also obeys your commands.', 'partially', '/img/vador.jpg', 'Don\'t be too proud of this technological terror you\'ve constructed. The ability to destroy a planet is insignificant next to the power of the Force. Don\'t be too proud of this technological terror you\'ve constructed. The ability to destroy a planet is insignificant next to the power of the Force.', '2020-06-11 12:39:56', '2020-06-24 04:01:22', 1, 1),
(2, 'What?!', 'what', '/img/13.jpg', 'I care. So, what do you think of her, Han? He is here. I\'m surprised you had the courage to take the responsibility yourself. Look, I ain\'t in this for your revolution, and I\'m not in it for you, Princess. I expect to be well paid. I\'m in it for the money.\r\n\r\nI call it luck. I can\'t get involved! I\'ve got work to do! It\'s not that I like the Empire, I hate it, but there\'s nothing I can do about it right now. It\'s such a long way from here. I don\'t know what you\'re talking about.\r\nYou mean it controls your actions?\r\n\r\nEscape is not his plan. I must face him, alone. You\'re all clear, kid. Let\'s blow this thing and go home! Remember, a Jedi can feel the Force flowing through him. I\'m trying not to, kid. I want to come with you to Alderaan. There\'s nothing for me here now. I want to learn the ways of the Force and be a Jedi, like my father before me.', '2020-06-22 13:25:21', '2020-06-24 04:01:31', 3, 1),
(3, 'I call it luck.', 'luck', NULL, 'Leave that to me. Send a distress signal, and inform the Senate that all on board were killed. But with the blast shield down, I can\'t even see! How am I supposed to fight? Obi-Wan is here. The Force is with him.', '2020-06-22 13:28:52', '2020-06-25 11:51:23', 3, 1),
(4, 'I\'m trying not to, kid.', 'kid', NULL, 'Look, I ain\'t in this for your revolution, and I\'m not in it for you, Princess. I expect to be well paid. I\'m in it for the money.\r\n<p>Escape is not his plan. I must face him, alone. I\'m surprised you had the courage to take the responsibility yourself. I find your lack of faith disturbing. What!?</p>\r\n<p>As you wish. Partially, but it also obeys your commands. Your eyes can deceive you. Don\'t trust them. <strong> I need your help, Luke.</strong> <em> She needs your help.</em> I\'m getting too old for this sort of thing.</p>\r\n<h2>You mean it controls your actions?</h2>\r\n<p>Hokey religions and ancient weapons are no match for a good blaster at your side, kid. What good is a reward if you ain\'t around to use it? Besides, attacking that battle station ain\'t my idea of courage. It\'s more like…suicide.</p>\r\n<ol>\r\n\r\n    <li>All right. Well, take care of yourself, Han. I guess that\'s what you\'re best at, ain\'t it?</li><li>I don\'t know what you\'re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan--</li><li>I can\'t get involved! I\'ve got work to do! It\'s not that I like the Empire, I hate it, but there\'s nothing I can do about it right now. It\'s such a long way from here.</li>\r\n\r\n</ol>', '2020-06-22 13:30:46', '2020-06-25 11:51:30', 1, 1),
(5, 'Kids, we need to talk', 'talk', '/img/les_simpsons3.jpg', '<p>Bart, with $10,000 we\'d be millionaires! We could buy all kinds of useful things like…love! <strong> Donuts.</strong>  Is there anything they <em>can\'t do?</em> Lisa, vampires are make-believe, like elves, gremlins, and Eskimos.</p>\r\n<h2>I was saying \"Boo-urns.\"</h2>\r\n<p>And here I am using my own lungs like a sucker. Beer. Now there\'s a temporary solution. D\'oh. I like my beer cold, my TV loud and my homosexuals flaming.</p>\r\n<ol>\r\n\r\n    <li>Aaah! Natural light! Get it off me! Get it off me!</li><li>You know, the one with all the well meaning rules that don\'t work out in real life, uh, Christianity.</li><li>Marge, just about everything\'s a sin. Y\'ever sat down and read this thing? Technically we\'re not supposed to go to the bathroom.</li>\r\n\r\n</ol>', '2020-06-22 14:54:03', '2020-06-24 04:02:04', 2, 2),
(6, 'It\'s art! A statement on modern society, \'Oh Ain\'t Modern Society Awful?\'!', 'statement ', '/img/p04znpm3.jpg', '<p>They\'re not aliens, they\'re Earth…liens! I\'m the Doctor. Well, they call me the Doctor. I don\'t know why. I call me the Doctor too. I still don\'t know why. I\'m the Doctor, I\'m worse than everyone\'s aunt. *catches himself* And that is not how I\'m introducing myself.</p>\r\n<p>Annihilate? No. No violence. I won\'t stand for it. Not now, not ever, do you understand me?! I\'m the Doctor, the Oncoming Storm - and you basically meant beat them in a football match, didn\'t you? Annihilate? No. No violence. <strong> I won\'t stand for it.</strong> <em> Not now, not ever, do you understand me?!</em> I\'m the Doctor, the Oncoming Storm - and you basically meant beat them in a football match, didn\'t you?</p>\r\n<h2>I am the last of my species, and I know how that weighs on the heart so don\'t lie to me!</h2>\r\n<p>You hate me; you want to kill me! Well, go on! Kill me! KILL ME! They\'re not aliens, they\'re Earth…liens! Annihilate? No. No violence. I won\'t stand for it. Not now, not ever, do you understand me?! I\'m the Doctor, the Oncoming Storm - and you basically meant beat them in a football match, didn\'t you?</p>\r\n<ol>\r\n\r\n    <li>Aw, you\'re all Mr. Grumpy Face today.</li><li>*Insistently* Bow ties are cool! Come on Amy, I\'m a normal bloke, tell me what normal blokes do!</li><li>All I\'ve got to do is pass as an ordinary human being. Simple. What could possibly go wrong?</li>\r\n\r\n</ol>', '2020-06-23 09:16:28', '2020-06-23 07:35:38', 4, 3),
(7, 'Did I mention we have comfy chairs?', 'mention', '/img/d_who.jpg', '<p>You hit me with a cricket bat. All I\'ve got to do is pass as an ordinary human being. Simple. What could possibly go wrong? I am the last of my species, and I know how that weighs on the heart so don\'t lie to me!</p>\r\n<p>Annihilate? No. No violence. I won\'t stand for it. <strong> Not now, not ever, do you understand me?!</strong> <em> I\'m the Doctor, the Oncoming Storm - and you basically meant beat them in a football match, didn\'t you?</em> I\'m nobody\'s taxi service; I\'m not gonna be there to catch you every time you feel like jumping out of a spaceship.</p>\r\n<h2>It\'s a fez. I wear a fez now. Fezes are cool.</h2>\r\n<p>No, I\'ll fix it. I\'m good at fixing rot. Call me the Rotmeister. No, I\'m the Doctor. Don\'t call me the Rotmeister. No… It\'s a thing; it\'s like a plan, but with more greatness. It\'s art! A statement on modern society, \'Oh Ain\'t Modern Society Awful?\'!</p>\r\n<ol>\r\n\r\n    <li>I am the Doctor, and you are the Daleks!</li><li>Sorry, checking all the water in this area; there\'s an escaped fish.</li><li>It\'s art! A statement on modern society, \'Oh Ain\'t Modern Society Awful?\'!</li>\r\n\r\n</ol>\r\n\r\n<h3>No, I\'ll fix it. I\'m good at fixing rot. Call me the Rotmeister. No, I\'m the Doctor. Don\'t call me the Rotmeister.</h3>\r\n<p>You know when grown-ups tell you \'everything\'s going to be fine\' and you think they\'re probably lying to make you feel better? It\'s art! A statement on modern society, \'Oh Ain\'t Modern Society Awful?\'!</p>', '2020-06-23 19:19:19', '2020-06-24 04:02:27', 4, 3),
(8, 'I\'m nobody\'s taxi service; I\'m not gonna be there to catch you every time you feel like jumping out of a spaceship.', 'spaceship', '/img/d_who2.jpg', '<p>I am the Doctor, and you are the Daleks! It\'s a fez. I wear a fez now. Fezes are cool. They\'re not aliens, they\'re Earth…liens! You know how I sometimes have really brilliant ideas?</p>\r\n<p>Heh-haa! <strong> Super squeaky bum time!</strong> <em> You know when grown-ups tell you \'everything\'s going to be fine\' and you think they\'re probably lying to make you feel better?</em> They\'re not aliens, they\'re Earth…liens!</p>\r\n<h2>You hit me with a cricket bat.</h2>\r\n<p>Annihilate? No. No violence. I won\'t stand for it. Not now, not ever, do you understand me?! I\'m the Doctor, the Oncoming Storm - and you basically meant beat them in a football match, didn\'t you? Annihilate? No. No violence. I won\'t stand for it. Not now, not ever, do you understand me?! I\'m the Doctor, the Oncoming Storm - and you basically meant beat them in a football match, didn\'t you?</p>\r\n<ol>\r\n\r\n    <li>Annihilate? No. No violence. I won\'t stand for it. Not now, not ever, do you understand me?! I\'m the Doctor, the Oncoming Storm - and you basically meant beat them in a football match, didn\'t you?</li><li>I am the Doctor, and you are the Daleks!</li><li>Heh-haa! Super squeaky bum time!</li>\r\n\r\n</ol>\r\n', '2020-06-23 14:18:41', '2020-06-24 04:10:49', 4, 3),
(9, 'Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you\'re going.', 'anchorhead', NULL, '<p>She must have hidden the plans in the escape pod. Send a detachment down to retrieve them, and see to it personally, Commander. There\'ll be no one to stop us this time! She must have hidden the plans in the escape pod. Send a detachment down to retrieve them, and see to it personally, Commander. There\'ll be no one to stop us this time!</p>\r\n<p>The more you tighten your grip, Tarkin, the more star systems will slip through your fingers. <strong> I want to come with you to Alderaan.</strong> <em> There\'s nothing for me here now.</em> I want to learn the ways of the Force and be a Jedi, like my father before me.</p>\r\n<h2>Ye-ha!</h2>\r\n<p>Still, she\'s got a lot of spirit. I don\'t know, what do you think? Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you\'re going. Alderaan? I\'m not going to Alderaan. I\'ve got to go home. It\'s late, I\'m in for it as it is.</p>\r\n<ol>\r\n\r\n    <li>I need your help, Luke. She needs your help. I\'m getting too old for this sort of thing.</li><li>What?!</li><li>I want to come with you to Alderaan. There\'s nothing for me here now. I want to learn the ways of the Force and be a Jedi, like my father before me.</li>\r\n\r\n</ol>', '2020-06-23 17:50:18', '2020-06-23 17:21:59', 3, 1),
(10, 'Marge, you being a cop makes you the man! Which makes me the woman — and I have no interest in that, besides occasionally wearing the underwear, which as we discussed, is strictly a comfort thing.', 'marge', '/img/les_simpsons.jpg', '<p>A lifetime of working with nuclear power has left me with a healthy green glow…and left me as impotent as a Nevada boxing commissioner. I like my beer cold, my TV loud and my homosexuals flaming.</p>\r\n<p>And here I am using my own lungs like a sucker. Lisa, vampires are make-believe, like elves, gremlins, and Eskimos. <strong> Oh, so they have Internet on computers now!</strong> <em> Marge, it takes two to lie.</em> One to lie and one to listen.</p>\r\n<h2>A lifetime of working with nuclear power has left me with a healthy green glow…and left me as impotent as a Nevada boxing commissioner.</h2>\r\n<p>I\'ve had it with this school, Skinner. Low test scores, class after class of ugly, ugly children… Stan Lee never left. I\'m afraid his mind is no longer in mint condition. Ahoy hoy? Son, a woman is like a beer. They smell good, they look good, you\'d step over your own mother just to get one! But you can\'t stop at one. You wanna drink another woman!</p>\r\n<ol>\r\n\r\n    <li>Save me, Jeebus.</li><li>But, Aquaman, you cannot marry a woman without gills. You\'re from two different worlds… Oh, I\'ve wasted my life.</li><li>I\'ll be back. You can\'t keep the Democrats out of the White House forever, and when they get in, I\'m back on the streets, with all my criminal buddies.</li>\r\n\r\n</ol>\r\n\r\n<h3>Uh, no, they\'re saying \"Boo-urns, Boo-urns.\"</h3>', '2020-06-23 19:22:33', '2020-06-24 04:03:40', 5, 2),
(11, 'The way I see it, every life is a pile of good things and bad things.…hey.…the good things don\'t always soften the bad things; but vice-versa the bad things don\'t necessarily spoil the good things and make them unimportant.', 'the-way', NULL, '<p>Aw, you\'re all Mr. Grumpy Face today. It\'s art! A statement on modern society, \'Oh Ain\'t Modern Society Awful?\'! It\'s art! A statement on modern society, \'Oh Ain\'t Modern Society Awful?\'! All I\'ve got to do is pass as an ordinary human being. Simple. What could possibly go wrong?</p>\r\n<p>Annihilate? No. No violence. I won\'t stand for it. Not now, not ever, do you understand me?! I\'m the Doctor, the Oncoming Storm - and you basically meant beat them in a football match, didn\'t you? I\'m the Doctor. Well, they call me the Doctor. <strong> I don\'t know why.</strong> <em> I call me the Doctor too.</em> I still don\'t know why.</p>\r\n<h2>All I\'ve got to do is pass as an ordinary human being. Simple. What could possibly go wrong?</h2>\r\n<p>All I\'ve got to do is pass as an ordinary human being. Simple. What could possibly go wrong? Heh-haa! Super squeaky bum time! The way I see it, every life is a pile of good things and bad things.…hey.…the good things don\'t always soften the bad things; but vice-versa the bad things don\'t necessarily spoil the good things and make them unimportant.</p>', '2020-06-23 16:56:18', '2020-06-23 17:25:21', 4, 3),
(12, 'Sorry, checking all the water in this area; there\'s an escaped fish.', 'checking', '/img/Dalek.jpg', '<p>I\'m nobody\'s taxi service; I\'m not gonna be there to catch you every time you feel like jumping out of a spaceship. The way I see it, every life is a pile of good things and bad things.…hey.…the good things don\'t always soften the bad things; but vice-versa the bad things don\'t necessarily spoil the good things and make them unimportant.</p>\r\n<p>You know when grown-ups tell you \'everything\'s going to be fine\' and you think they\'re probably lying to make you feel better? I hate yogurt. It\'s just stuff with bits in. You hate me; you want to kill me! Well, go on! Kill me! KILL ME!</p>\r\n<p>I\'m nobody\'s taxi service; I\'m not gonna be there to catch you every time you feel like jumping out of a spaceship. You\'ve swallowed a planet! You know when grown-ups tell you \'everything\'s going to be fine\' and you think they\'re probably lying to make you feel better?</p>\r\n<p>I am the last of my species, and I know how that weighs on the heart so don\'t lie to me! I hate yogurt. It\'s just stuff with bits in. *Insistently* Bow ties are cool! Come on Amy, I\'m a normal bloke, tell me what normal blokes do!</p>\r\n<p>Saving the world with meals on wheels. You hit me with a cricket bat. You know how I sometimes have really brilliant ideas? I am the Doctor, and you are the Daleks! No, I\'ll fix it. I\'m good at fixing rot. Call me the Rotmeister. No, I\'m the Doctor. Don\'t call me the Rotmeister.</p>\r\n<p>They\'re not aliens, they\'re Earth…liens! Aw, you\'re all Mr. Grumpy Face today. You\'ve swallowed a planet! I\'m the Doctor, I\'m worse than everyone\'s aunt. *catches himself* And that is not how I\'m introducing myself.</p>\r\n<p>You know when grown-ups tell you \'everything\'s going to be fine\' and you think they\'re probably lying to make you feel better? The way I see it, every life is a pile of good things and bad things.…hey.…the good things don\'t always soften the bad things; but vice-versa the bad things don\'t necessarily spoil the good things and make them unimportant.</p>\r\n<p>They\'re not aliens, they\'re Earth…liens! Stop talking, brain thinking. Hush. I am the last of my species, and I know how that weighs on the heart so don\'t lie to me! You hate me; you want to kill me! Well, go on! Kill me! KILL ME!</p>\r\n<p>No… It\'s a thing; it\'s like a plan, but with more greatness. Heh-haa! Super squeaky bum time! Did I mention we have comfy chairs? I hate yogurt. It\'s just stuff with bits in. You know when grown-ups tell you \'everything\'s going to be fine\' and you think they\'re probably lying to make you feel better?</p>\r\n<p>Saving the world with meals on wheels. Saving the world with meals on wheels. Did I mention we have comfy chairs? It\'s a fez. I wear a fez now. Fezes are cool. Stop talking, brain thinking. Hush.</p>', '2020-06-24 07:21:33', '2020-06-24 05:21:33', 4, 3),
(13, 'Shut up and get to the point!', 'point', '/img/donuts.jpg', '<h3>Goodbye, friends. I never thought I\'d die like this. But I always really hoped.</h3>\r\n<p>I didn\'t ask for a completely reasonable excuse! I asked you to get busy! It\'s just like the story of the grasshopper and the octopus. All year long, the grasshopper kept burying acorns for winter, while the octopus mooched off his girlfriend and watched TV. But then the winter came, and the grasshopper died, and the octopus ate all his acorns. Also he got a race car. Is any of this getting through to you?</p>\r\n<ul>\r\n\r\n    <li>In our darkest hour, we can stand erect, with proud upthrust bosoms.</li><li>Hey, what kinda party is this? There\'s no booze and only one hooker.</li><li>I daresay that Fry has discovered the smelliest object in the known universe!</li>\r\n\r\n</ul>\r\n\r\n<p>My fellow Earthicans, as I have explained in my book \'Earth in the Balance\'\', and the much more popular \'\'Harry Potter and the Balance of Earth\', we need to defend our planet against pollution. Also dark wizards. I meant \'physically\'. Look, perhaps you could let me work for a little food? I could clean the floors or paint a fence, or service you sexually?</p>\r\n<p>Is the Space Pope reptilian!? Yeah, and if you were the pope they\'d be all, \"Straighten your pope hat.\" And \"Put on your good vestments.\" Hello Morbo, how\'s the family? You\'re going back for the Countess, aren\'t you?</p>', '2020-06-24 09:35:49', '2020-06-24 07:35:49', 2, 2),
(14, 'one all-powerful Force controlling everything.', 'controlling-everything', '/img/etoile-noire.jpg', '<p>Obi-Wan is here. The Force is with him. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you\'re going. Ye-ha! I care. So, what do you think of her, Han?</p>\r\n<p>Hokey religions and ancient weapons are no match for a good blaster at your side, kid. She must have hidden the plans in the escape pod. Send a detachment down to retrieve them, and see to it personally, Commander. There\'ll be no one to stop us this time!</p>\r\n<p>Partially, but it also obeys your commands. I need your help, Luke. She needs your help. I\'m getting too old for this sort of thing. But with the blast shield down, I can\'t even see! How am I supposed to fight?</p>\r\n<p>What?! I call it luck. As you wish. Don\'t underestimate the Force. I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n<p>Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you\'re going. You don\'t believe in the Force, do you? He is here. Oh God, my uncle. How am I ever gonna explain this?</p>\r\n<p>The Force is strong with this one. I have you now. I want to come with you to Alderaan. There\'s nothing for me here now. I want to learn the ways of the Force and be a Jedi, like my father before me. She must have hidden the plans in the escape pod. Send a detachment down to retrieve them, and see to it personally, Commander. There\'ll be no one to stop us this time!</p>', '2020-06-24 09:40:04', '2020-06-24 07:40:04', 1, 1),
(15, 'The plans you refer to will soon be back in our hands.', 'plans', NULL, '<p>The plans you refer to will soon be back in our hands. I have traced the Rebel spies to her. Now she is my only link to finding their secret base. You don\'t believe in the Force, do you? I suggest you try it again, Luke. This time, let go your conscious self and act on instinct.</p>\r\n<p>I suggest you try it again, Luke. This time, let go your conscious self and act on instinct. I\'m surprised you had the courage to take the responsibility yourself. The plans you refer to will soon be back in our hands.</p>\r\n<p>The more you tighten your grip, Tarkin, the more star systems will slip through your fingers. Don\'t act so surprised, Your Highness. You weren\'t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you.</p>\r\n<p>Red Five standing by. Leave that to me. Send a distress signal, and inform the Senate that all on board were killed. Don\'t act so surprised, Your Highness. You weren\'t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you.</p>\r\n<p>Look, I ain\'t in this for your revolution, and I\'m not in it for you, Princess. I expect to be well paid. I\'m in it for the money. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you\'re going.</p>\r\n<p>I can\'t get involved! I\'ve got work to do! It\'s not that I like the Empire, I hate it, but there\'s nothing I can do about it right now. It\'s such a long way from here. No! Alderaan is peaceful. We have no weapons. You can\'t possibly…</p>\r\n<p>Alderaan? I\'m not going to Alderaan. I\'ve got to go home. It\'s late, I\'m in for it as it is. Ye-ha! Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>', '2020-06-24 12:40:40', '2020-06-25 11:51:10', 3, 1),
(16, 'You don\'t like your job, you don\'t strike. You go in every day and do it really half-assed. That\'s the American way.', 'american-way', NULL, '<p>I didn\'t get rich by signing checks. Kids, kids. I\'m not going to die. That only happens to bad people. Look out, Itchy! He\'s Irish! Uh, no, you got the wrong number. This is 9-1…2. Yes! I am a citizen! Now which way to the welfare office? I\'m kidding, I\'m kidding. I work, I work.</p>\r\n<p>He didn\'t give you gay, did he? Did he?! Your guilty consciences may make you vote Democratic, but secretly you all yearn for a Republican president to lower taxes, brutalize criminals, and rule you like a king!</p>\r\n<p>Beer. Now there\'s a temporary solution. Homer no function beer well without. I didn\'t get rich by signing checks. Slow down, Bart! My legs don\'t know how to be as long as yours.</p>\r\n<p>I didn\'t get rich by signing checks. I\'m a Spalding Gray in a Rick Dees world. Homer no function beer well without. You don\'t win friends with salad. How is education supposed to make me feel smarter? Besides, every time I learn something new, it pushes some old stuff out of my brain. Remember when I took that home winemaking course, and I forgot how to drive?</p>\r\n<p>How is education supposed to make me feel smarter? Besides, every time I learn something new, it pushes some old stuff out of my brain. Remember when I took that home winemaking course, and I forgot how to drive? Books are useless! I only ever read one book, \"To Kill A Mockingbird,\" and it gave me absolutely no insight on how to kill mockingbirds! Sure it taught me not to judge a man by the color of his skin…but what good does *that* do me?</p>\r\n<p>Attempted murder? Now honestly, what is that? Do they give a Nobel Prize for attempted chemistry? Homer no function beer well without. I\'ll be back. You can\'t keep the Democrats out of the White House forever, and when they get in, I\'m back on the streets, with all my criminal buddies.</p>\r\n<p>A woman is a lot like a refrigerator. Six feet tall, 300 pounds…it makes ice. You know, the one with all the well meaning rules that don\'t work out in real life, uh, Christianity. Yes! I am a citizen! Now which way to the welfare office? I\'m kidding, I\'m kidding. I work, I work.</p>\r\n<p>Save me, Jeebus. When will I learn? The answers to life\'s problems aren\'t at the bottom of a bottle, they\'re on TV! Fat Tony is a cancer on this fair city! He is the cancer and I am the…uh…what cures cancer?</p>', '2020-06-24 12:43:40', '2020-06-24 10:43:18', 5, 2),
(17, 'As you wish.', 'wish', NULL, '<h3>You mean it controls your actions?</h3>\r\n<p>Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you\'re going. Look, I ain\'t in this for your revolution, and I\'m not in it for you, Princess. I expect to be well paid. I\'m in it for the money.</p>\r\n<ul>\r\n\r\n    <li>The plans you refer to will soon be back in our hands.</li><li>Alderaan? I\'m not going to Alderaan. I\'ve got to go home. It\'s late, I\'m in for it as it is.</li><li>But with the blast shield down, I can\'t even see! How am I supposed to fight?</li>\r\n\r\n</ul>\r\n\r\n<p>What!? Partially, but it also obeys your commands. A tremor in the Force. The last time I felt it was in the presence of my old master. I\'m trying not to, kid. The Force is strong with this one. I have you now.</p>\r\n<p>I want to come with you to Alderaan. There\'s nothing for me here now. I want to learn the ways of the Force and be a Jedi, like my father before me. I call it luck. Remember, a Jedi can feel the Force flowing through him.</p>\r\n<p>Oh God, my uncle. How am I ever gonna explain this? Red Five standing by. The Force is strong with this one. I have you now. Obi-Wan is here. The Force is with him. Kid, I\'ve flown from one side of this galaxy to the other. I\'ve seen a lot of strange stuff, but I\'ve never seen anything to make me believe there\'s one all-powerful Force controlling everything. There\'s no mystical energy field that controls my destiny. It\'s all a lot of simple tricks and nonsense.</p>\r\n<p>Partially, but it also obeys your commands. What!? Your eyes can deceive you. Don\'t trust them. No! Alderaan is peaceful. We have no weapons. You can\'t possibly… The more you tighten your grip, Tarkin, the more star systems will slip through your fingers.</p>\r\n<p>Red Five standing by. What!? Hokey religions and ancient weapons are no match for a good blaster at your side, kid. Don\'t act so surprised, Your Highness. You weren\'t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you.</p>\r\n<p>What!? What?! The plans you refer to will soon be back in our hands. I\'m surprised you had the courage to take the responsibility yourself. Oh God, my uncle. How am I ever gonna explain this?</p>', '2020-06-24 12:43:30', '2020-06-24 10:44:30', 1, 1),
(18, 'Yep, I remember. They came in last at the Olympics, then retired to promote alcoholic beverages!', ' alcoholic', '/img/blender.jpg', '<p>Michelle, I don\'t regret this, but I both rue and lament it. For the last time, I don\'t like lilacs! Your \'first\' wife was the one who liked lilacs! Kids have names? I daresay that Fry has discovered the smelliest object in the known universe!</p>\r\n<p>Shut up and get to the point! Michelle, I don\'t regret this, but I both rue and lament it. I\'ll get my kit! I videotape every customer that comes in here, so that I may blackmail them later. Doomsday device? Ah, now the ball\'s in Farnsworth\'s court!</p>\r\n<p>Bender, hurry! This fuel\'s expensive! Also, we\'re dying! These old Doomsday Devices are dangerously unstable. I\'ll rest easier not knowing where they are. Okay, it\'s 500 dollars, you have no choice of carrier, the battery can\'t hold the charge and the reception isn\'t very…</p>\r\n<p>I\'m just glad my fat, ugly mama isn\'t alive to see this day. So, how \'bout them Knicks? Can I use the gun? But, like most politicians, he promised more than he could deliver. Alright, let\'s mafia things up a bit. Joey, burn down the ship. Clamps, burn down the crew.</p>\r\n<p>Morbo can\'t understand his teleprompter because he forgot how you say that letter that\'s shaped like a man wearing a hat. When will that be? Maybe I love you so much I love you no matter who you are pretending to be.</p>\r\n<p>Leela, are you alright? You got wanged on the head. Why would I want to know that? Can we have Bender Burgers again? Oh dear! She\'s stuck in an infinite loop, and he\'s an idiot! Well, that\'s love for you.</p>', '2020-06-24 11:38:00', '2020-06-24 09:38:00', 6, 4),
(19, 'Large bet on myself in round one.', 'myself', NULL, 'No! I want to live! There are still too many things I don\'t own! But I\'ve never been to the moon! Incidentally, you have a dime up your nose. Calculon is gonna kill us and it\'s all everybody else\'s fault!\r\n\r\nSwitzerland is small and neutral! We are more like Germany, ambitious and misunderstood! But existing is basically all I do! Well I\'da done better, but it\'s plum hard pleading a case while awaiting trial for that there incompetence.\r\nWho\'s brave enough to fly into something we all keep calling a death sphere?\r\n\r\nIt\'s just like the story of the grasshopper and the octopus. All year long, the grasshopper kept burying acorns for winter, while the octopus mooched off his girlfriend and watched TV. But then the winter came, and the grasshopper died, and the octopus ate all his acorns. Also he got a race car. Is any of this getting through to you? Throw her in the brig.', '2020-06-25 13:53:31', '2020-06-25 11:53:31', 6, 4),
(20, 'If rubbin\' frozen dirt in your crotch is wrong, hey I don\'t wanna be right.', 'frozen', '/img/neo3.jpg', 'I could if you hadn\'t turned on the light and shut off my stereo.\r\n<p>I love you, buddy! Bender, being God isn\'t easy. If you do too much, people get dependent on you, and if you do nothing, they lose hope. You have to use a light touch. Like a safecracker, or a pickpocket.</p>\r\n<p>I was having the most wonderful dream. Except you were there, and you were there, and you were there! Do a flip! Goodbye, friends. I never thought I\'d die like this. <strong> But I always really hoped.</strong> <em> Come, Comrade Bender!</em> We must take to the streets!</p>\r\n<h2>Nay, I respect and admire Harold Zoid too much to beat him to death with his own Oscar.</h2>\r\n<p>Really?! OK, this has gotta stop. I\'m going to remind Fry of his humanity the way only a woman can. And I\'d do it again! And perhaps a third time! But that would be it. Can I use the gun? And remember, don\'t do anything that affects anything, unless it turns out you were supposed to, in which case, for the love of God, don\'t not do it!</p>\r\n<ol>\r\n\r\n    <li>And remember, don\'t do anything that affects anything, unless it turns out you were supposed to, in which case, for the love of God, don\'t not do it!</li><li>I don\'t know what you did, Fry, but once again, you screwed up! Now all the planets are gonna start cracking wise about our mamas.</li><li>She also liked to shut up!</li>\r\n\r\n</ol>', '2020-06-25 13:54:22', '2020-06-26 09:36:46', 6, 4),
(21, 'ertert', 'zerze', '/img/Turanga-Leela.jpg', 'sstsdtgd', '2020-06-25 14:15:45', '2020-06-25 12:15:45', 6, 4);

-- --------------------------------------------------------

--
-- Structure de la table `articles_commentaires`
--

CREATE TABLE `articles_commentaires` (
  `id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `commentaire_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `articles_commentaires`
--

INSERT INTO `articles_commentaires` (`id`, `article_id`, `commentaire_id`) VALUES
(4, 1, 1),
(7, 1, 4),
(8, 8, 5),
(9, 1, 6),
(10, 6, 7),
(11, 13, 8),
(12, 18, 9),
(13, 1, 10),
(14, 1, 11),
(15, 1, 12),
(16, 1, 13),
(17, 21, 14);

-- --------------------------------------------------------

--
-- Structure de la table `auteurs`
--

CREATE TABLE `auteurs` (
  `id` int(11) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `mail` varchar(60) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `auteurs`
--

INSERT INTO `auteurs` (`id`, `nom`, `prenom`, `mail`, `password`) VALUES
(1, 'VADOR', 'Dark', 'dark_vador@etoile-noire.fr', '$2y$10$/FBHRMofOG/9XhCVzRPnXOvD4k/uVv/q1.x2L2bg.zmvJIye9xSyC'),
(2, 'SIMPSONS', 'Bart', 'va_te_faire_shampoigner@springfield-mail.com', '$2y$10$ZORXANM613ZpW6oa1OCaUeKSCggT7iyGrO8MMJ4skQsU1ts229c8G'),
(3, 'KENOBI', 'Obiwan', 'ewoks@andor.com', '$2y$10$ZzZH.Q6krmJj4uW4DCJQY.KhDKpWNmspvATpjDI3CU7i5CRdZna1K'),
(4, 'SMITH', 'John', 'doctor_who@tardis.net', '$2y$10$VQzEU.CIkM9bfEBcwn3XzeavQDpo.s19SZdEGsxwzXKjRs2.77rNC'),
(5, 'SIMPSONS', 'Homer', 'duffman@duff-beer.com', '$2y$10$JOv6lu6NpDYJKRV/OAxr7uqqjchcjvie.ajQQwpvz4E2GhuY4csy6'),
(6, 'PHILIP J.', 'Fry', 'fry@futurama.fr', '$2y$10$6h5J8sLu0nGHPbCprzWB6ujhlusMqWr70YH9k/KJf6w/EdgNw2MJG');

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `nom_categorie` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `nom_categorie`) VALUES
(1, 'Star Wars'),
(2, 'The Simpsons'),
(3, 'Docteur Who'),
(4, 'Futurama');

-- --------------------------------------------------------

--
-- Structure de la table `commentaires`
--

CREATE TABLE `commentaires` (
  `id` int(11) NOT NULL,
  `nom_auteur` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `commentaires`
--

INSERT INTO `commentaires` (`id`, `nom_auteur`, `content`, `date`) VALUES
(1, 'Palpatine', 'Vive l\'empire', '2020-06-23 16:19:03'),
(4, 'Yoda', 'que la force soit avec toi ;) ', '2020-06-23 16:37:49'),
(5, 'Clara', 'La fille impossible ', '2020-06-23 16:41:55'),
(6, 'aze', 'aze', '2020-06-24 13:19:52'),
(7, 'Missy', 'See you soon ! ;) ', '2020-06-24 17:50:02'),
(8, 'Clancy Wiggum', 'I Love donuts too ... ', '2020-06-24 17:52:08'),
(9, 'Bender Tordeur Rodríguez', 'robot portant le numéro 2716057, est un personnage de fiction et l\'un des personnages principaux ainsi que l\'anti-héros de la série télévisée Futurama. Il fait partie avec ses amis Fry et Leela d\'un groupe qui travaille pour la société Planet Express.', '2020-06-24 17:53:34'),
(10, 'Yoda', '<h1>Kif, I have mated with a woman. Inform the men.</h1>\r\n<p>You won\'t have time for sleeping, soldier, not with all the bed making you\'ll be doing. Yes, if you make it look like an electrical fire. When you do things right, people won\'t be sure you\'ve done anything at all.</p>\r\n<p>Is today\'s hectic lifestyle making you tense and impatient? Now, now. Perfectly symmetrical violence never solved anything. <strong> Say what?</strong> <em> Switzerland is small and neutral!</em> We are more like Germany, ambitious and misunderstood!</p>\r\n<h2>Kif, I have mated with a woman. Inform the men.</h2>\r\n<p>Can we have Bender Burgers again? No! I want to live! There are still too many things I don\'t own! Well, let\'s just dump it in the sewer and say we delivered it. Can I use the gun? Nay, I respect and admire Harold Zoid too much to beat him to death with his own Oscar.</p>\r\n<ol>\r\n\r\n    <li>I love you, buddy!</li><li>In your time, yes, but nowadays shut up! Besides, these are adult stemcells, harvested from perfectly healthy adults whom I killed for their stemcells.</li><li>Good news, everyone! There\'s a report on TV with some very bad news!</li>\r\n\r\n</ol>', '2020-06-25 09:01:42'),
(11, 'Grozilla', '<h1>Kid, I\'ve flown from one side of this galaxy to the other. I\'ve seen a lot of strange stuff, but I\'ve never seen anything to make me believe there\'s one all-powerful Force controlling everything. There\'s no mystical energy field that controls my destiny. It\'s all a lot of simple tricks and nonsense.</h1>\r\n<p>Red Five standing by. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you\'re going. I suggest you try it again, Luke. This time, let go your conscious self and act on instinct.</p>\r\n<p>What?! Red Five standing by. <strong> Your eyes can deceive you.</strong> <em> Don\'t trust them.</em> As you wish.</p>\r\n<h2>I suggest you try it again, Luke. This time, let go your conscious self and act on instinct.</h2>\r\n<p>Dantooine. They\'re on Dantooine. Oh God, my uncle. How am I ever gonna explain this? The Force is strong with this one. I have you now. I want to come with you to Alderaan. There\'s nothing for me here now. I want to learn the ways of the Force and be a Jedi, like my father before me.</p>\r\n<ol>\r\n\r\n    <li>Red Five standing by.</li><li>Alderaan? I\'m not going to Alderaan. I\'ve got to go home. It\'s late, I\'m in for it as it is.</li><li>You don\'t believe in the Force, do you?</li>\r\n\r\n</ol>', '2020-06-25 09:22:05'),
(12, 'grozilla', '<h1>Kid, I\'ve flown from one side of this galaxy to the other. I\'ve seen a lot of strange stuff, but I\'ve never seen anything to make me believe there\'s one all-powerful Force controlling everything. There\'s no mystical energy field that controls my destiny. It\'s all a lot of simple tricks and nonsense.</h1>\r\n<p>Red Five standing by. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you\'re going. I suggest you try it again, Luke. This time, let go your conscious self and act on instinct.</p>\r\n<p>What?! Red Five standing by. <strong> Your eyes can deceive you.</strong> <em> Don\'t trust them.</em> As you wish.</p>\r\n<h2>I suggest you try it again, Luke. This time, let go your conscious self and act on instinct.</h2>\r\n<p>Dantooine. They\'re on Dantooine. Oh God, my uncle. How am I ever gonna explain this? The Force is strong with this one. I have you now. I want to come with you to Alderaan. There\'s nothing for me here now. I want to learn the ways of the Force and be a Jedi, like my father before me.</p>\r\n<ol>\r\n\r\n    <li>Red Five standing by.</li><li>Alderaan? I\'m not going to Alderaan. I\'ve got to go home. It\'s late, I\'m in for it as it is.</li><li>You don\'t believe in the Force, do you?</li>\r\n\r\n</ol>', '2020-06-25 09:22:44'),
(13, 'grozilla', '<h1>Kid, I\'ve flown from one side of this galaxy to the other. I\'ve seen a lot of strange stuff, but I\'ve never seen anything to make me believe there\'s one all-powerful Force controlling everything. There\'s no mystical energy field that controls my destiny. It\'s all a lot of simple tricks and nonsense.</h1>\r\n<p>Red Five standing by. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you\'re going. I suggest you try it again, Luke. This time, let go your conscious self and act on instinct.</p>\r\n<p>What?! Red Five standing by. <strong> Your eyes can deceive you.</strong> <em> Don\'t trust them.</em> As you wish.</p>\r\n<h2>I suggest you try it again, Luke. This time, let go your conscious self and act on instinct.</h2>\r\n<p>Dantooine. They\'re on Dantooine. Oh God, my uncle. How am I ever gonna explain this? The Force is strong with this one. I have you now. I want to come with you to Alderaan. There\'s nothing for me here now. I want to learn the ways of the Force and be a Jedi, like my father before me.</p>\r\n<ol>\r\n\r\n    <li>Red Five standing by.</li><li>Alderaan? I\'m not going to Alderaan. I\'ve got to go home. It\'s late, I\'m in for it as it is.</li><li>You don\'t believe in the Force, do you?</li>\r\n\r\n</ol>', '2020-06-25 09:27:00'),
(14, 'frfr', 'c(rc(rcr', '2020-12-18 11:32:25');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auteur_id` (`auteur_id`),
  ADD KEY `categorie_id` (`categorie_id`);

--
-- Index pour la table `articles_commentaires`
--
ALTER TABLE `articles_commentaires`
  ADD PRIMARY KEY (`id`),
  ADD KEY `article_id` (`article_id`),
  ADD KEY `commentaire_id` (`commentaire_id`);

--
-- Index pour la table `auteurs`
--
ALTER TABLE `auteurs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `commentaires`
--
ALTER TABLE `commentaires`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `articles_commentaires`
--
ALTER TABLE `articles_commentaires`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `auteurs`
--
ALTER TABLE `auteurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `commentaires`
--
ALTER TABLE `commentaires`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `auteur_id` FOREIGN KEY (`auteur_id`) REFERENCES `auteurs` (`id`),
  ADD CONSTRAINT `categorie_id` FOREIGN KEY (`categorie_id`) REFERENCES `categories` (`id`);

--
-- Contraintes pour la table `articles_commentaires`
--
ALTER TABLE `articles_commentaires`
  ADD CONSTRAINT `article_id` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`),
  ADD CONSTRAINT `commentaire_id` FOREIGN KEY (`commentaire_id`) REFERENCES `commentaires` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
