
 insert into "User" (
    "blocked",
    device_token,
    ip_addres,
    "password",
    profile_experience,
    roles,
    user_agent,
    username)
values ('Available', 'Mac-13', '192.090.98.2', 'Pass12345', 'Expert', 'Admin','Tech','Jabefire'),
       ('Blocked', 'Windows-1', '192.000.18.2', 'RoLop35A', 'New', 'User','Noovie','Siulber'),
       ('Available', 'Mac-45', '152.908.01.0', 'CRipto3345@', 'Expert', 'Manager','Sales','Tank-Master63'),
       ('Blocked', 'Mac-23', '192.020.48.2', 'MiloCat65329Aqa', 'Gold', 'Tech','Tech','Mister66'),
       ('Available', 'Windows-3', '192.000.18.2', '123456789Aa', 'New', 'User','Noovie','MiloRex'),
       ('Available', 'Windows-4', '192.000.18.2', 'Po90Aa-uK90-12', 'New', 'User','Noovie','GodBoy'),
       ('Available', 'Windows-5', '192.000.18.2', '90-8oCat123', 'Bronze', 'User','Noovie','ProTech10'),
       ('Available', 'Windows-6', '192.000.18.2', '123456789', 'New', 'User','Noovie','Mister66'),
       ('Available', 'Mac-990', '142.020.00.1', 'ReferenceQ@a-A', 'Silver', 'User','Noovie','SoulDark 99'),
       ('Available', 'Mac-77', '192.010.11.1', '123456789', 'New', 'User','Noovie','NoobMaster69')
;

insert into "Posts" (
    "comments",
    idauthorp,
    profileimage,
    tags,
    title)
values
       ('Fundamental skills needed to operate, maintain, program and test robotic systems....',  1,  'Escanor',  '#Welcome #IA #Interactive', 'Robotic Fundamentals'),
       ('Are you sure about this?',  4,  'Sun shine',  '#Tech #MachileLearning', 'Chat Bot'),
       ('Recently the challenge to progress in this area...',  3,  'Galaxy',  '#GoldChallenge #IA', 'Soft Fish'),
       ('It is possible to maintain this?...',  9,  'Hole BLACK',  '#Tech #MachileLearning', 'MotoMan Robots'),
       ('For the purpose to keep the data...',  1,  'Escanor',  '#Tech #MachileLearning', 'Standard Roles')

;


insert into "Comments" (
    author,
    id_postc,
    parent_id,
    text_f)
values
        (  1, 3, NULL, 'I think that is awesome'),
        (  4, 1, NULL, 'That is amazing! '),
        (  8, 1, 2, 'Really?'),
        (  4, 1, 3, 'Yeah, in the future, people will be talking about this moment....'),
        (  3, 1, 4, 'Agree'),

        (  7, 2, NULL, 'Wowww'),
        (  9, 5, NULL, 'Got it'),
        (  7, 1, NULL, 'comment'),

        (  2, 4, NULL, 'Do u have ,the files to tested?'),
        (  9, 4, 9, 'Sure, drop your email by DM'),

        (  7, 5, NULL, 'Of course, agree'),
        (  7, 5, 10, 'Also, add new information about it'),
        (  1, 5, 10, 'Thanks! '),

        (  1, 1, 3, ' Absolutely, check it out '),




;


