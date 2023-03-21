-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Мар 14 2023 г., 20:00
-- Версия сервера: 10.4.27-MariaDB
-- Версия PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `bookshop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `name` varchar(35) NOT NULL,
  `autor` varchar(35) NOT NULL,
  `brief_retelling` text NOT NULL,
  `image` varchar(80) NOT NULL,
  `file` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `book`
--

INSERT INTO `book` (`id`, `name`, `autor`, `brief_retelling`, `image`, `file`) VALUES
(1, 'Кармилла', 'Людмила Андреева Брилова', 'Юная Лора вместе с отцом, отставным военным, живет в уединенном замке среди живописных лесов Австрийской империи. Она чувствует себя одинокой после известия о внезапной гибели Берты, которая могла стать единственной подругой.\r\nНо однажды в замке появляется незнакомка по имени Кармилла. Ее карета разбилась по пути, и мать девушки просит приютить на время раненую дочь.\r\nЛора и Кармилла проводят много времени вместе, но таинственная гостья ничего не рассказывает о себе. Вскоре начинают происходить странные события: Лора заболевает, ее состояние ухудшается с каждым днем, а по ночам мучают кошмары.\r\nДолгожданное переиздание классической вампирской истории Джозефа Шеридана Ле Фаню. «Кармилла» – первый вампирский триллер в истории литературы, написанный за 25 лет до известного «Дракулы» Брэма Стокера. Роман был множество раз экранизирован. Существует более 3000 изданий и переизданий «Кармиллы» практически на всех языках мира.\r\nДжозефа Шеридана Ле Фаню часто сравнивают с Эдгаром По, его готические романы и повести вдохновляли писателей ужасов более века.', 'Karmilla.png', 'Кармилла.epub'),
(2, 'Слово Императора', 'Дарья Андреевна Кузнецова', 'Принцесса Александра – умная девушка. Она понимает, что продолжение войны двух империй закончится крахом, поэтому без сожалений соглашается на династический брак с младшим братом владыки империи Руш, скрепляющий мирный договор. А то, что жениха в последний момент заменили… какая разница, один чужак или другой!\r\nИмператор Руамар – умный мужчина. Он знает, что некоторые оскорбления можно смыть только кровью, и, когда глупость брата ставит под угрозу мирное соглашение, без раздумий занимает его место у алтаря.\r\nА два умных человека всегда могут договориться, даже если один из них – и не человек вовсе.', 'Emperor\'s Word.png', 'Слово Императора.epub'),
(3, 'Наследница «Черного озера»', 'Ева Геннадьевна Никольская', 'Черное озеро…\r\nЯ постоянно видела его в своих снах, но даже представить не могла, что однажды придется встретиться лицом к лицу с ночным кошмаром. Приехав в унаследованный от дяди дом, я оказалась в удивительном месте, где меня с головой накрыла лавина тайн. Отчаянно пытаясь найти ответы на вопросы, я лишь увязла в них еще сильнее. Но самой большой загадкой стал мой новый сосед. И хоть первым желанием было сбежать из пропитанного мистикой места, я все равно осталась. Потому что кто знает – вдруг я и на самом деле вернулась домой?', 'Hieress of the Black Lake.png', 'Наследница Чёрного озера.epub'),
(4, 'Все цветы Парижа', 'Сара  Джио', 'После частичной потери памяти дочь известного киноактера Каролина Уильямс приезжает в Париж и арендует квартиру на улице Клер. Вскоре она понимает, что красивый старинный дом хранит сумрачную тайну. Каролина обнаруживает в одной из комнат письма некой Селины, датированные 1943 годом. Селину удерживали в доме насильно, но она не теряла присутствия духа и делала все, чтобы спасти своих любимых, особенно малышку дочь.\r\nРазбираясь с загадками, корни которых уходят более чем на полвека в прошлое, Каролина находит ключи и к собственной памяти, в глубинах которой притаились и боль, и вера, и любовь.', 'All Paris flowers.png', 'Все цветы Парижа.epub'),
(5, 'Пикник на обочине', 'Братья Стругацкие', 'Зона Посещения — их на Земле насчитывается всего шесть — это место, где за несколько лет до описываемых событий приземлились на несколько часов космические пришельцы, оставившие многочисленные материальные следы своего пребывания. Зона огорожена и тщательно охраняется, вход в Зону разрешен только по пропускам и только сотрудникам Междуна­родного института внеземных культур. Однако отчаянные парни — их называют сталкерами — проникают в Зону, выносят оттуда все, что им удается найти, и продают скупщикам эти неземные диковинки, каждая из которых имеет у сталкеров свое название — по аналогии с земными предметами: «булавка», «пустышка», «зуда», «газированная глина», «черные брызги» и т. д. У ученых существует несколько гипотез происхождения Зон Посещения: возможно, некий внеземной разум забросил на Землю контейнеры с образцами своей материальной культуры; возможно, пришельцы и сейчас живут в Зонах и пристально изучают землян; а возможно, пришельцы останав­ливались на Земле по пути к какой-то неведомой космической цели, и Зона — как бы пикник на обочине космической дороги, а все эти загадочные предметы в ней — просто разбросанные в беспорядке брошенные или потерянные вещи, как после обычного, земного пикника на полянке остаются следы костра, огрызки яблок, конфетные обертки, консервные банки, монетки, пятна бензина и тому подобные предметы.', 'Roadside Picnic.png', 'Пикник_на_обочине.pdf'),
(6, '1984', 'Джордж Оруэл', '1984 г. Лондон, столица Взлётной полосы I, провинции Океания. 39-летний невысокий тщедушный Уинстон Смит, сотрудник Министерства правды со стажем, поднимается в свою квартиру. В вестибюле висит плакат с изображением громадного грубого лица с густыми чёрными бровями. «Старший Брат смотрит на тебя» — гласит подпись. В комнате Уинстона, как и в любой другой, в стену вмонтирован аппарат (телекран), круглосуточно работающий и на приём, и на передачу. Полиция мыслей подслушивает каждое слово и наблюдает за каждым движением. Из окна виднеется фасад его министерства с партийными лозунгами: «Война — это мир. Свобода — это рабство. Незнание — сила».', '1984.png', '1984.pdf'),
(7, 'Алхимик', 'Пауло коэльо', 'Предисловие написано от лица автора, отдавшего 11 лет жизни изучению алхимии. Он предупреждает, что «Алхимик» — книга символическая.\r\nСвои исследования автор начал в середине семидесятых. В то время он все свои деньги тратил на книги по алхимии и знакомился с другими алхимиками, но его «усердие и рвение не давали абсолютно никаких результатов». Книги были написаны замысловатым языком, а мнимые алхимики тщательно охраняли свои секреты.', 'Alchemist.png', 'Алхимик.pdf'),
(8, 'Метро 2033', 'Дмитрий Глуховский', '2033 год. После Третьей Мировой войны прошло больше двадцати лет. Поверхность земли, заражённую радиацией, заселили мутанты. В Москве уцелели лишь успевшие перед ядерной бомбёжкой добежать до метро, ставшее бомбоубежищем с гермодверями, воздушными и водяными фильтрами. На поверхность выходили только сталкеры — герои метро, вооружённые до зубов, одетые в костюмы химзащиты и противогазы.', 'metro 2033.png', 'Метро_2033.pdf'),
(9, 'Змееловов больше нет', 'Дарья Андреевна Кузнецова', 'Великий Змеелов мертв, орден повержен, мир оправляется от безумия гражданской войны. Наступившая зима заботливо укрывает землю снегом, пряча кровь и пепел, знаменуя начало новой жизни. Новую жизнь пытается начать и Норика Неро, старший офицер ордена, которую месть и ненависть к бывшим учителям привела на сторону их врага. Молодой король предложил ей возглавить школу, где получат приют выжившие змееныши. Норика мечтает найти успокоение в помощи детям, которых когда-то спасла. Но, может быть, эта зима не только избавит от кошмаров, но принесет что-то еще? Счастье, на которое уже не смела надеяться. И любовь, которая, казалось, давно умерла.', 'No more snakes.png', 'Змееловов больше нет.epub'),
(10, 'Интервью с вампиром', 'Энн  Райс', 'Вампирская психодрама, созданная «посланницей оккультного мира» Энн Райс, стала поистине классикой не только жанра, но и мировой литературы.\r\nИстория вампира, рассказанная им самим в нарушение всех заповедей, завораживает с первых страниц. Гипнотический голос повествует о жизни и нежизни и словно во сне переносит слушателя то на плантации Луизианы, то в Париж XIX века, то в крохотную прикарпатскую деревушку… Неужели обитатели Мира Тьмы – это воплощенное зло – способны, подобно смертным, страдать и радоваться, любить и ненавидеть, вечно искать ответы на вечные вопросы?', 'Interview with a Vampire.png', 'Интервью с вампиром.zip'),
(11, 'Семь дней творения', 'Марк  Леви', 'Сегодня Марк Леви один из самых популярных французских писателей, его книги переведены на 33 языка и расходятся огромными тиражами, а за право экранизации его первого романа «Будь это правдой…» Спилберг заплатил два миллиона долларов. «Семь дней творения» — своего рода притча, но притча веселая. Бог и дьявол, чтобы решить извечный спор Добра и Зла, посылают на Землю двух своих «агентов», Софию и Лукаса, которым дается семь дней и семь ночей. У каждого свое задание, им позволено все, кроме одного: им нельзя встречаться, да они и не знают о существовании друг друга. И вот однажды…', 'Seven Days of Creation.png', '7 дней творения.epub'),
(12, 'Архимаг', 'Александр Валентинович Рудазов', 'Когда у человека есть мечта, это хорошо. Когда человек готов на все, чтобы мечта сбылась, это еще лучше. Но что делать, если ты мечтаешь ни много ни мало как о том, чтобы стать богом? И всего-то и нужно для этого, что умереть. А потом, естественно, воскреснуть. А заодно уничтожить целый мир, населенный легионами демонов. И как быть, если мир, в котором ты воскрес, ничуть не похож на тот, в котором ты умер?', 'archmage.png', 'Архимаг.epub'),
(13, 'Грозовой перевал', 'Эмилия  Бронте', '«Грозовой Перевал» Эмили Бронте — не просто золотая классика мировой литературы, но роман, перевернувший в свое время представления о романтической прозе. Проходят годы и десятилетия, но история роковой страсти Хитклифа, приемного сына владельца поместья «Грозовой перевал», к дочери хозяина Кэтрин не поддается ходу времени. «Грозовым Перевалом» зачитывалось уже много поколений женщин — продолжают зачитываться и сейчас. Эта книга не стареет, как не стареет истинная любовь...', 'Wuthering Heights.png', 'Грозовой перевал.epub'),
(14, 'До встречи с тобой', 'Джоджо  Мойес', 'Лу Кларк знает, сколько шагов от автобусной остановки до ее дома. Она знает, что ей очень нравится работа в кафе и что, скорее всего, она не любит своего бойфренда Патрика. Но Лу не знает, что вот-вот потеряет свою работу и что в ближайшем будущем ей понадобятся все силы, чтобы преодолеть свалившиеся на нее проблемы.\r\nУилл Трейнор знает, что сбивший его мотоциклист отнял у него желание жить. И он точно знает, что надо сделать, чтобы положить конец всему этому. Но он не знает, что Лу скоро ворвется в его мир буйством красок. И они оба не знают, что навсегда изменят жизнь друг друга.\r\nВ первые месяцы после выхода в свет романа Джоджо Мойес «До встречи с тобой» было продано свыше полумиллиона экземпляров. Книга вошла в список бестселлеров «Нью-Йорк таймс», переведена на 31 язык. Права на ее экранизацию купила киностудия «Метро-Голдвин-Майер».\r\nВпервые на русском языке!', 'Me Before You.png', 'До встречи с тобой.epub'),
(15, 'Мемуары гейши', 'Артур  Голден', 'История жизни одной из самых знаменитых гейш 20 века Нитта Саюри. Даже если вы не поклонник любовных романов и не верите в любовь с первого взгляда и на всю жизнь, вы получите незабываемое удовольствие от возможности окунуться в атмосферу страны Восходящего солнца и узнать незнакомое, закрытое для посторонних, общество изнутри.\r\n    Роман о совершенно другой жизни, дверь в иной мир, принадлежащий одним мужчинам. Мир, где женщины никогда не говорят того, что думают, — только то, что от них хотят услышать, то, что полагается говорить. Им нельзя иметь желаний, у них не может быть выбора. Они двигаются от рождения к смерти по заранее определенной дороге, и вероятность свернуть с нее ничтожна. Они существуют, но не вполне живут, потому что они становятся самими собой лишь в полном одиночестве, а в нем им тоже отказано.\r\n    Работа гейши — красота и искусство — со стороны. Изнутри — только труд, жестокий, изматывающий, лицемерный. И кроме него нет ничего. Совсем ничего.', 'Memoirs of a Geisha.png', 'Мемуары Гейши.epub'),
(16, 'Отель', 'Артур  Хейли', 'Вечеринка «золотой молодежи» закончилась большой бедой…\r\nТитулованный иностранец случайно совершает преступление – и пытается уйти от ответа…\r\nДочь миллионера, спасенная из рук насильников, влюбляется в своего спасителя…\r\nНет, это не детектив. Это – повседневная жизнь гигантского, роскошного отеля, где возможно все…', 'Hotel.png', 'Отель.zip'),
(17, 'Скажи, что будешь помнить', 'Кэти  МакГэрри', 'Эллисон Монро – дочь губернатора Кентукки, идеальная девушка с безупречной репутацией и мечтой однажды стать больше чем хорошенькой куколкой в предвыборной кампании своего отца.\r\nХендриксон Пирс – несовершеннолетний правонарушитель и талантливый музыкант, согласившийся на сделку с прокурором, чтобы спасти близкого человека.\r\nОни два разных мира, которым суждено встретиться и побороться за свою любовь. Оказавшись марионетками в политических играх, им предстоит не только выстоять против всех, но и побороть собственных демонов, которые грозят разрушить самое прекрасное чувство на свете…', 'Say you will remember.png', 'Скажи, что будешь помнить.epub'),
(18, 'Фея для лорда тьмы', 'Ева Геннадьевна Никольская', 'Я — фея под прикрытием и охотница за артефактами. Он — лорд тьмы, верховный жрец и затворник. А между нами древний лес, наводненный таинственными призраками. Чтобы разгадать их тайну и узнать намерения, нам придется действовать сообща. И тут главное не запутаться в паутине чужих интриг, не стать дичью на охоте, устроенной привидениями, и не пасть жертвой внезапно нахлынувших чувств. Впрочем, последний пункт можно и вычеркнуть.', 'Fairy for the lord of darkness.png', 'Фея для лорда тьмы.zip'),
(19, 'Я тебя рисую', 'Марина  Суржевская', 'Я жила у зеленых холмов Идегоррии, где растут исполинские деревья и искрятся хрустальные водопады. Я рисовала этот мир, изменяя реальность, ведь я – созидающая. Я была счастлива. Но моя жизнь изменилась в тот день, когда я стала пленницей у чужеземного захватчика. У него белые волосы, огненные глаза и тело воина. Я знаю, кто он, – арманец, демон Ранххара. Тот, о ком говорят шепотом, чтобы не накликать беду. Он принес в мой мир смерть и кровь, разукрасил его красным и черным, стал тем, кому я поклялась отомстить. И… не смогла…', 'I draw you.png', 'Я тебя рисую.epub'),
(20, 'Сто имен', 'Сесилия  Ахерн', 'Китти Логан так мечтала о карьере телеведущей! Но она совершила роковую ошибку, обвинив в отвратительном преступлении ни в чем не повинного человека, и все ее надежды рухнули. Китти стала притчей во языцех, от нее ушел бойфренд, старый друг обвинил в эгоизме, того и гляди ее уволят из журнала, в котором она проработала десять лет, и в довершение всех бед умирает Констанс — близкая подруга и наставница. Констанс задумала для журнала что-то очень интересное, однако рассказать о своей идее не успела. У Китти есть только список ста неизвестных ей имен и две недели, чтобы разгадать замысел Констанс и написать статью для номера, посвященного ее памяти. Она находит нескольких людей из списка, но никак не может понять, что же их объединяет. Чтобы проникнуть в тайну, Китти предстоит разобраться в себе самой, и тогда ее жизнь изменится…', '100 names.png', '100 имён.epub'),
(21, 'Один из нас лжет', 'Карен М. МакМанус', 'Строгий учитель в наказание оставил пятерых старшеклассников в классе после уроков, но только четверо вышли оттуда живыми. Пятый, Саймон, – школьный изгой, жестоко мстивший своим обидчикам в Интернете, раскрывая их самые неприглядные секреты, – был найден мертвым. Полиция не сомневается в том, что это убийство. Под подозрение попадают все, ведь у каждого есть что скрывать.\r\nНо кто из четверых юношей и девушек – убийца?\r\nБронвин – круглая отличница, поступающая в Лигу плюща?\r\nЭдди – первая красавица школы, блондинка из рекламы шампуня?\r\nНейт – юный преступник, находящийся на испытательном сроке?\r\nКупер – восходящая звезда бейсбола с лицом и фигурой Капитана Америки, кумир девушек?\r\nУ каждого из них были свои причины избавиться от Саймона. Но кто же пошел на преступление?', 'one of us is lying.png', 'Один из нас лжёт.epub'),
(22, 'Бумажные города', 'Джон  Грин', 'Выпускник школы Кью Джейкобсен с детских лет тайно влюблен в свою прекрасную и дерзкую соседку Марго Рот Шпигельман. Поэтому, когда однажды ночью она приглашает его принять участие в «карательной операции» против ее обидчиков, он соглашается. Но, придя в школу после их ночного приключения, Кью узнает, что Марго исчезла… оставив для него лишь таинственные послания, которые он должен разгадать, чтобы найти девушку. И Кью бросается в отчаянную погоню, но девушки, которая долгие годы царила в его сердце, на самом деле нет.', 'Paper cities.png', 'Бумажные города.epub'),
(23, '13 причин почему', 'Джей  Эшер', 'Однажды Клэй Дженсен находит на крыльце своего дома странную посылку. Внутри – несколько аудиокассет, которые станут роковыми в судьбе юноши.\r\nТринадцать человек. Тринадцать причин. Тринадцать историй, рассказанных Ханной Бэйкер, девушкой, которой уже нет в живых.\r\n«Тринадцать причин почему» – трогательная, завораживающая история об отношениях, понимании и сострадании, которая изменила жизни подростков во всем мире.', '13 reasons why.png', '13 причин почему.zip'),
(24, 'Открытие себя', 'Владимир Иванович Савченко', '«Открытие себя» — один из последних великих романов «золотого века» отечественной фантастики. А уж эпиграфы к этому роману, давным-давно раздерганные на цитаты, много лет как стали неотъемлемой частью фольклора российских знатоков и любителей фантастики.', 'Finding oneself.png', 'Открытие себя.epub'),
(25, 'Волшебник Изумрудного города', 'Александр Мелентьевич Волков', 'Сказочная повесть «Волшебник Изумрудного города» рассказывает об удивительных приключениях девочки Элли и её друзей – Страшилы, Смелого Льва и Железного Дровосека – в Волшебной стране. Уже много лет эту историю с удовольствием читают миллионы мальчиков и девочек.', 'The Wizard of Oz.png', 'Волшебник изумрудного города.zip'),
(26, 'Приключения Буратино', 'Алексей Николаевич Толстой', 'Когда я был маленький, - очень, очень давно, - я читал одну книжку, она называлась « Пиноккио или похождения деревянного куклы » (деревянная кукла - по-итальянски - буратино).\r\n    Я часто рассказывал моим товарищам, девочкам и мальчикам., занимательные приключения Буратино. Но так как книжка потерялась, то я рассказывал каждый раз по-разному, выдумывал такие похождения, каких в книге совсем и не было.\r\n    Теперь , через много много лет, я припомнил моего старого друга Буратино и надумал рассказать вам, девочки и мальчики, необычайную историю про этого деревянного человечка.', 'Pinoccio.png', 'Золотой ключик или Приключения Буратино.epub'),
(27, 'Маленький Принц', 'Антуан де Сент-Экзюпери', 'В одном из писем к матери Сент-Экзюпери признался: “Мне ненавистны люди, пишущие ради забавы, ищущие эффектов. Надо иметь что сказать”. Ему, романтику неба, не чуравшемуся земных радостей, любившему, по свидетельству друзей, “писать, говорить, петь, играть, докапываться до сути вещей, есть, обращать на себя внимание, ухаживать за женщинами”, человеку проницательного ума со своими достоинствами и недостатками, но всегда стоявшему на защите общечеловеческих ценностей, было “что сказать”. И он это сделал: написал сказку “Маленький принц”, о самом важном в этой жизни, жизни на планете Земля, все чаще такой неласковой, но любимой и единственной.', 'Little Prince.png', 'Маленький принц.epub'),
(28, 'Алиса в Стране чудес', 'Льюис  Кэрролл', '«Алиса в Стране чудес» – признанный и бесспорный шедевр мировой литературы. Вечная классика для детей и взрослых, принадлежащая перу английского писателя, поэта и математика Льюиса Кэрролла. В книгу вошли два его произведения: «Алиса в Стране чудес» и «Алиса в Зазеркалье».', 'Alice in the underworld.png', 'Алиса в стране чудес.zip'),
(29, 'Ангелы и демоны', 'Дэн  Браун', 'Иллюминаты. Древний таинственный орден, прославившийся в Средние века яростной борьбой с официальной церковью. Легенда далекого прошлого? Возможно… Но – почему тогда на груди убитого при загадочных обстоятельствах ученого вырезан именно символ иллюминатов? Приглашенный из Гарварда специалист по символике и его напарница, дочь убитого, начинают собственное расследование – и вскоре приходят к невероятным результатам…', 'Angels and demons.png', 'Ангелы и демоны.zip'),
(30, 'Код да Винчи', 'Дэн  Браун', 'Секретный код скрыт в работах Леонардо да Винчи…\r\nТолько он поможет найти христианские святыни, дававшие немыслимые власть и могущество…\r\nКлюч к величайшей тайне, над которой человечество билось веками, может быть найден…\r\nВ романе «Код да Винчи» автор собрал весь накопленный опыт расследований и вложил его в главного героя, гарвардского профессора иконографии и истории религии по имени Роберт Лэнгдон. Завязкой нынешней истории послужил ночной звонок, оповестивший Лэнгдона об убийстве в Лувре старого хранителя музея. Возле тела убитого найдена зашифрованная записка, ключи к которой сокрыты в работах Леонардо да Винчи…', 'Code Da Vinci.png', 'Код Да Винчи.zip'),
(31, 'Утраченный символ', 'Дэн  Браун', 'Приключения Роберта Лэнгдона продолжаются.\r\n    На этот раз ему предстоит разгадать величайшую тайну масонов, которая способна изменить мир.\r\n    Веками хранимые секреты, загадочные знаки и символы — и смертельно опасное путешествие по лабиринтам прошлого…', 'Lost symbol.png', 'Утраченный символ.epub'),
(32, 'Инферно', 'Дэн  Браун', '…Оказавшись в самом загадочном городе Италии — Флоренции, профессор Лэнгдон, специалист по кодам, символам и истории искусства, неожиданно попадает в водоворот событий, которые способны привести к гибели все человечество. И помешать этому может только разгадка тайны, некогда зашифрованной Данте в строках бессмертной эпической поэмы.', 'Inferno.png', 'Инферно.epub'),
(33, 'Происхождение', 'Дэн  Браун', 'Роберт Лэнгдон прибывает в музей Гуггенхайма в Бильбао по приглашению друга и бывшего студента Эдмонда Кирша. Миллиардер и компьютерный гуру, он известен своими удивительными открытиями и предсказаниями. И этим вечером Кирш собирается «перевернуть все современные научные представления о мире», дав ответ на два главных вопроса, волнующих человечество на протяжении всей истории: Откуда мы? Что нас ждет? Однако прежде, чем Эдмонд успевает сделать заявление, роскошный прием превращается в хаос. Лэнгдону и директору музея, красавице Амбре Видаль, чудом удается бежать. Теперь их путь лежит в Барселону, где Кирш оставил для своего учителя закодированный ключ к тайне, способной потрясти сами основы представлений человечества о себе. Тайне, которая была веками похоронена во тьме забвения. Тайне, которой, возможно, лучше бы никогда не увидеть света, – по крайней мере, так считают те, кто преследует Лэнгдона и Видаль и готов на все, чтобы помешать им раскрыть истину.', 'Origin.png', 'Происхождение.epub'),
(34, 'Много шума из ничего', 'Уильям Шекспир', '\"Много шума из ничего\" - комедия Уильяма Шекспира в пяти актах.\r\nВ дом славного губернатора Леонато приезжает принц Арагонский дон Педро со своей свитой. Молодой граф Клавдио, лишь переступив порог гостеприимного дома, влюбляется в юную дочь Леонато. Их чувства взаимны, и семья начинает готовиться к свадьбе.\r\nЗа счастьем молодых и весельем гостей наблюдает брат принца Арагонского. Он \"болен ненавистью\" к дону Педро и его друзьям и готов на всё ради мести.', 'Much ado about nothing.png', 'Много шума из ничего.epub'),
(35, 'Столкновение цивилизаций', 'Самюэль  Хантингтон', 'Книга Самюэля Хантингтона «Столкновение цивилизаций» – один из самых популярных геополитических трактатов 90-х годов. Возникшая из статьи в журнале Foreign Affairs, которая вызвала наибольший резонанс за всю вторую половину XX века, она по-новому описывает политическую реальность наших дней и дает прогноз глобального развития всей земной цивилизации. Книга содержит также знаменитую статью Ф. Фукуямы «Конец истории».', 'Сlash of civilizations.png', 'Столкновение цивилизаций.epub'),
(36, 'Будь лучшей версией себя', 'Дэн  Вальдшмидт', 'В этой книге описаны истории обычных людей, добившихся неординарного успеха. От них веет невероятной энергией. Они никого не оставят равнодушным и обязательно вдохновят вас на новые достижения в профессиональной и личной жизни, потому что это истории из жизни реальных людей из разных областей деятельности, которые рискнули и добились выдающегося результата.', 'be the best version of yourself.png', 'Будь лучшей версией себя.epub'),
(37, 'Три товарища', 'Эрих Мария Ремарк', 'Эрих Мария Ремарк – писатель, чье имя говорит само за себя. Для многих поколений читателей, выросших на его произведениях, для критиков, единодушно признавших его работы, он стал своеобразным символом времени. Трагедии Первой и Второй мировой, боль «потерянного поколения», попытка создать для себя во «времени, вывихнувшим сустав» забавный, в чем-то циничный, а в чем-то – щемяще-чистый маленький мир верной дружбы и отчаянной любви – таков Ремарк, автор, чья проза не принадлежит старению…', 'three comrades.png', 'Три товарища.epub'),
(38, 'Самый богатый человек в Вавилоне', 'Джордж Сэмюэль  Клейсон', 'Автор этой книги уверен: чтобы исполнить все свои замыслы и желания, Вы прежде всего должны добиться успеха в денежных вопросах, используя принципы управления личными финансами, изложенные на её страницах. Для широкого круга читателей.', 'richest man in babylon.png', 'Самый богатый человек в Вавилоне.zip'),
(39, 'Эмма', 'Джейн  Остин', 'Эмма Вудхаус, красивая, умная и самонадеянная особа, уверена, что замуж не выйдет никогда. Ей веселее и приятнее обустраивать личное счастье близких людей, и на это у нее, по ее собственному глубокому убеждению, есть особый дар. Свояк и добрый друг Вудхаусов мистер Найтли не одобряет пристрастий девушки, но Эмма все же берется устроить брак своей новой подруги Харриет Смит и викария мистера Элтона…', 'Emma.png', 'Эмма.epub'),
(40, 'Дорога', 'Кормак  Маккарти', 'Кормак Маккарти — современный американский классик главного калибра, хорошо известный нашему читателю романом «Старикам тут не место» (фильм братьев Коэн по этой книге получил четыре «Оскара»). Его роман «Дорога» в 2007 году получил Пулитцеровскую премию и вот уже более трех лет остается в списках бестселлеров и не сходит с прилавков книжных магазинов.\r\n    Роман «Дорога» производит неизгладимое впечатление. В какой-то степени это эмоциональный шок! Сюжет прост. После катастрофы Отец и Сын идут через выжженные земли, пересекая континент. Всю книгу пронизывают глубокие, ранящие в самое сердце вопросы. Есть ли смысл жить, если будущего — нет? Вообще нет. Есть ли смысл жить ради детей? Это роман о том, что все в жизни относительно, что такие понятия, как добро и зло, в определенных условиях перестают работать и теряют смысл. Это роман о том, что действительно важно в жизни, и о том, как это ценить. И это также роман о смерти, о том, что все когда-нибудь кончается, и поэтому нужно каждый день принимать таким, какой есть. Нужно просто… жить.', 'Way.png', 'Дорога.epub'),
(41, 'История', 'Геродот', 'Классический труд древнегреческого историка Геродота из Галикарнасса (V в. до н. э.) — ценнейший источник по ранней истории Греции и Востока. Точные описания, меткие наблюдения соседствуют в его труде с новеллами и легендами. Противопоставление Персии и Греции, рабства и свободы, демократии и тирании составляют основное содержание труда «отца истории», как именуют Геродота. Живое дыхание эпохи, изысканный и вместе с тем предельно ясный язык снискали ему заслуженную славу одного из самых увлекательных произведений мировой истории.', 'History.png', 'История.epub');

-- --------------------------------------------------------

--
-- Структура таблицы `janrs`
--

CREATE TABLE `janrs` (
  `book_id` int(11) NOT NULL,
  `detektiv` tinyint(4) NOT NULL DEFAULT 0,
  `novel` tinyint(4) NOT NULL DEFAULT 0,
  `thriller` tinyint(4) NOT NULL DEFAULT 0,
  `science_fiction` tinyint(4) NOT NULL DEFAULT 0,
  `fantasy` tinyint(4) NOT NULL DEFAULT 0,
  `horror` tinyint(4) NOT NULL DEFAULT 0,
  `art` tinyint(4) NOT NULL DEFAULT 0,
  `biography` tinyint(4) NOT NULL DEFAULT 0,
  `history` tinyint(4) NOT NULL DEFAULT 0,
  `philosophy` tinyint(4) NOT NULL DEFAULT 0,
  `psychology` tinyint(4) NOT NULL DEFAULT 0,
  `policy` tinyint(4) NOT NULL DEFAULT 0,
  `religion` tinyint(4) NOT NULL DEFAULT 0,
  `humor` tinyint(4) NOT NULL DEFAULT 0,
  `fairy_tales` tinyint(4) NOT NULL DEFAULT 0,
  `adventures` tinyint(4) NOT NULL DEFAULT 0,
  `post-apocalypse` tinyint(4) NOT NULL DEFAULT 0,
  `drama` tinyint(4) NOT NULL DEFAULT 0,
  `comedy` tinyint(4) NOT NULL DEFAULT 0,
  `antiutopia` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `janrs`
--

INSERT INTO `janrs` (`book_id`, `detektiv`, `novel`, `thriller`, `science_fiction`, `fantasy`, `horror`, `art`, `biography`, `history`, `philosophy`, `psychology`, `policy`, `religion`, `humor`, `fairy_tales`, `adventures`, `post-apocalypse`, `drama`, `comedy`, `antiutopia`) VALUES
(1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(7, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0),
(8, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0),
(9, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10, 0, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(13, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(14, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(15, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(16, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(17, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(18, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(19, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0),
(22, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(23, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(24, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(25, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0),
(26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0),
(27, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0),
(28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0),
(29, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(30, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(31, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(32, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(33, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(34, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(35, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(37, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(39, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(40, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0),
(41, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(16) NOT NULL,
  `password` varchar(64) NOT NULL,
  `secret_word` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `name`, `password`, `secret_word`) VALUES
(6, 'Doniyor', '$2y$10$gtPnQrIEn5IlBDe/nz7F1eUNnVOtou.1iVE0eyviehpb8iBW4G4fq', '4 вперёд, 4 назад');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `janrs`
--
ALTER TABLE `janrs`
  ADD PRIMARY KEY (`book_id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT для таблицы `janrs`
--
ALTER TABLE `janrs`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
