INSERT INTO "master_db_customuser"(
    "password",
    "last_login",
    "is_superuser",
    "first_name",
    "last_name",
    "is_staff",
    "is_active",
    "uuid",
    "email",
    "phone",
    "date_joined",
    "date_updated"
  )
VALUES (
    'pbkdf2_sha256$260000$fdSBoXLCOb2v7yIK9eIKCD$bWbpj6GaYGiSnmtEYCzm6eYyA9TLmhnHKLBEu1cIoZM=',
    null,
    False,
    'Hilda',
    'Ramirez',
    False,
    True,
    'b0343384-0152-4671-a7d6-c2122a65eab1',
    'owner@localhost.com',
    '0950128413',
    '2021-12-08 08:08:14.987748+00',
    '2021-12-08 08:08:14.987763+00'
  );
INSERT INTO "master_db_brand"("uuid", "name", "desc")
VALUES (
    '84093bb8-8496-596a-819b-2c443009a9d0',
    'Apple',
    'Apple Inc. is an American multinational technology company that specializes in consumer electronics, computer software, and online services. Apple is the world''s largest technology company by revenue and valuable.'
  ),
  (
    'b4d15076-4123-51ce-9037-11de1c219139',
    'Oppo',
    'cell happened younger arrive at torn connected dozen easily highest light look rubber sign beat farmer bend identity silent mental wrote bicycle listen stared'
  ),
  (
    '1d3a7492-dcaa-5c99-a381-07132b0c7653',
    'Realme',
    'sang arm youth bowl sort horn massage torn lying had shoot few studied public dress state sudden wool tax enough whose mountain another merely'
  ),
  (
    '698e22b3-01af-507f-ae85-60cfe6353670',
    'Samsung',
    'thread company author light cross parallel sink drop clothes unhappy planning fastened wolf cold mark bright accept pond both castle bit film learn percent'
  ),
  (
    '2ab90059-22a9-547e-bc03-c36a54a4fe43',
    'Vivo',
    'press obtain sentence planning basis strange war myself loud changing tears nature bank grabbed water planet pictured afternoon pretty reader ranch thus noise threw'
  ),
  (
    '6bb97ccb-3f69-58ea-a679-c1e53a3e32bf',
    'Xiaomi',
    'smell bottle ahead twelve using heard species stone iron us managed vegetable lead hurried wing bee recently tree neighborhood closely dog asleep like also'
  ),
  (
    '25f7247e-3afc-592f-8a5c-33323bd3d097',
    'Bphone',
    'tall wet flag realize warn prevent attempt ran angle empty welcome nation forgot relationship taught brief collect across standard few glad exclaimed simple deeply'
  ),
  (
    'ea828991-b54c-5d60-b183-27eb6c0cb066',
    'Sony',
    'wagon dark aware likely putting lips do alike torn where either shells man activity lion generally studying honor anyone quickly expression story cross indicate'
  ),
  (
    'b0870f00-72db-5175-a844-0f470b929f8f',
    'Pixel',
    'begun goose coach let shine choose market mile business name origin wheat entirely gas continent sink angry dangerous across addition college rhyme earlier snake'
  );
INSERT INTO "master_db_product"(
    "uuid",
    "brand_id",
    "image",
    "name",
    "color",
    "storage",
    "ram",
    "year",
    "camera",
    "price",
    "material",
    "battery",
    "screen",
    "perk",
    "desc"
  )
VALUES (
    '6d9349b0-7877-5f44-a863-888e273c3ab0',
    (
      SELECT id
      FROM "master_db_brand"
      WHERE name = 'Apple'
    ),
    '/product/iphone-12.png',
    'iPhone 12',
    '[ "white", "red", "green", "yellow", "blue", "purple", "black" ]',
    '[ "128GB", "256GB", "512GB" ]',
    '4GB',
    2021,
    '2 camera 12MP',
    24490000,
    'species learn spring progress calm machinery down rapidly',
    'sister fruit both thee summer very bread real',
    'rain needed people surprise stuck funny vote swimming',
    '[ "Hot deal!" ]',
    'forty four tribe century situation degree pour husband party break particular next growth construction happen metal figure which vowel basic twice frequently globe concerned'
  ),
  (
    'ce602c59-de2e-5dfb-8841-02e1d719b1d4',
    (
      SELECT id
      FROM "master_db_brand"
      WHERE name = 'Apple'
    ),
    '/product/iphone-13.png',
    'iPhone 13',
    '[ "white", "black", "blue", "red" ]',
    '[ "128GB", "256GB", "512GB" ]',
    '4GB',
    2021,
    '2 camera 12MP',
    24490000,
    'replace bowl welcome very establish barn no create',
    'courage let beneath stronger golden ask draw three',
    'opinion alive government somewhere foot cool somehow cattle',
    '[ "50% OFF" ]',
    'born pole settlers case serve bill learn easily cold colony alone read building recall face love there dark fallen level relationship to book nodded'
  ),
  (
    'baf9c355-a040-5f07-a669-a92e6245bf3e',
    (
      SELECT id
      FROM "master_db_brand"
      WHERE name = 'Apple'
    ),
    '/product/iphone-13-pro-max.png',
    'iPhone 13 Pro Max',
    '[ "white", "red", "green", "yellow", "blue", "purple", "black" ]',
    '[ "256GB", "128GB", "512GB", "1TB" ]',
    '4GB',
    2021,
    '3 camera 12MP',
    34490000,
    'article place broad closer further store top later',
    'love compare fastened opinion region daily cloth fourth',
    'park before improve combine orange happened steam pair',
    '[ "50% OFF" ]',
    'specific fat judge eye every spread forth concerned teeth electricity growth composed one caught price youth difference quarter locate tall gasoline slightly recall have'
  ),
  (
    '072c8269-eda2-5085-8d5f-4811e5adb80d',
    (
      SELECT id
      FROM "master_db_brand"
      WHERE name = 'Apple'
    ),
    '/product/iphone-7.png',
    'iPhone 7',
    '[ "red", "purple", "black", "white", "yellow" ]',
    '[ "64GB", "128GB", "256GB" ]',
    '4GB',
    2019,
    '2 camera 12MP',
    18990000,
    'let curious trail political education oil compass wear lonely over chance bar down pain bottle review were off decide construction total mail bee into',
    'settlers solve education line hurt higher victory refer blew neighbor glass baseball wire breathing belong terrible bean cool forest knife where snake nodded stove',
    'nearest worried thing recent noted sink choose please difficulty desk hold mouse brave bow arrange disease figure policeman offer expect did remarkable section surrounded',
    '[ ]',
    'dot such additional want species butter corner soon middle heat contrast cover sign pig stuck include planning baby value trip running space valley exciting'
  ),
  (
    'ba50b773-0580-5da1-b4fa-56f01696a1cb',
    (
      SELECT id
      FROM "master_db_brand"
      WHERE name = 'Oppo'
    ),
    '/product/oppo-f17-pro.png',
    'Oppo F17 Pro',
    '[ "white", "black" ]',
    '[ "128GB" ]',
    '8GB',
    2021,
    '48MP, 2MP, 2MP',
    6990000,
    'rice upward mail lie member asleep guess brass express gas changing gun herd shorter means could silly twenty four broken shallow deeply slight layers',
    'youth swing fireplace faster lungs flat meal pick leg nine public proud first this fastened iron pretty open growth under shoe that likely bush',
    'salmon gravity social largest truck potatoes upper bush meat wonder rod mission tool construction saddle space pencil degree what poem rather palace tropical hand',
    '[ ]',
    'race nest noun produce orange finally wrapped oldest fly vast report job wagon design possible equator without pick rest soap till closely science rhyme'
  ),
  (
    'e5fb8ff4-9520-5118-8195-290803e57460',
    (
      SELECT id
      FROM "master_db_brand"
      WHERE name = 'Oppo'
    ),
    '/product/redmi-note-10.png',
    'Reno6 Pro 5G',
    '[ "blue", "white" ]',
    '[ "256GB" ]',
    '12GB',
    2021,
    '50MP, 16MP, Wide 13MP, Depth 2MP',
    17990000,
    'temperature light information yes growth specific move wealth account express door farther obtain rocky report period small written physical select during bad newspaper average',
    'respect military scientist floating necessary voice grandfather silly paid other active live chief citizen common handsome board heading applied hunt laugh worry cry yes',
    'bread putting what could particular difficulty previous easily bank amount everything subject proud struck research face else dull positive teeth away nails effect range',
    '[ "50% OFF", "Coupon" ]',
    'factory coach indeed greatly past however evidence pitch slowly chapter off evening cannot wheat memory kill gas general arm health brother themselves environment catch'
  ),
  (
    'a5690a42-e79f-53d0-9972-b8f566633892',
    (
      SELECT id
      FROM "master_db_brand"
      WHERE name = 'Oppo'
    ),
    '/product/rog-phone-5s-pro.png',
    'Reno6 Z 5G',
    '[ "white", "black" ]',
    '[ "256GB" ]',
    '12GB',
    2021,
    '64MP, Wide 8MP, Depth 2MP',
    9490000,
    'port coach ordinary load spend question bottle drop sing garage we daughter barn bee down equal ring about broken part deep color those law',
    'definition useful cry experience border air column raise train snake talk pleasure end cloud know tent factory produce recently remarkable picture public thus winter',
    'pattern hurried coast newspaper did affect eventually drive told chose importance angry plastic away somehow badly rocket learn cause highway plain organized decide final',
    '[ ]',
    'cold consonant kids corn bowl stage expression section cast local parent push raw circle yes was south though numeral sign list explain fair difficult'
  ),
  (
    'e107cbf1-930b-5e40-8cc9-f09fd0d91ed1',
    (
      SELECT id
      FROM "master_db_brand"
      WHERE name = 'Realme'
    ),
    '/product/samsung-galaxy-a71.png',
    'Realme C11 (2021)',
    '[ "blue", "white" ]',
    '[ "32GB", "64GB" ]',
    '4GB',
    2021,
    '8MP',
    2990000,
    'they too certainly damage tree truck policeman how cake kept object ill twice swung far owner official acres pipe nearly wealth opinion word plane',
    'consider won away spend original whistle earth once realize over tiny arrive please whispered frozen now building paint egg fifty knowledge four image speech',
    'went hit best regular read sold joined term glass select vegetable note space knife anybody hair eye sentence river atmosphere amount appropriate thumb yourself',
    '[ ]',
    'fact brick total across proud greatly thick swing difference how pocket sad although window sort biggest snow regular snake magnet real smoke lead wise'
  ),
  (
    '27eaec5c-4fbd-5ff7-b270-43fa8a3b0bc7',
    (
      SELECT id
      FROM "master_db_brand"
      WHERE name = 'Samsung'
    ),
    '/product/samsung-galaxy-a72.png',
    'Samsung Galaxy A03s',
    '[ "black", "blue", "white" ]',
    '[ "64GB" ]',
    '4GB',
    2021,
    '13MP, Macro 2MP, Depth 2MP',
    3690000,
    'language in differ pine valuable brass',
    'pencil recognize living hunt straw daughter',
    'slave tribe fought scientist include swing',
    '[ "Hot deal!", "Coupon" ]',
    'size of value cry football shade experiment cowboy why whistle sugar asleep wise dish therefore try apart so jump hard attack whole improve swing'
  ),
  (
    '4c182238-d5b2-593f-aeb7-5a1a1f91c7ee',
    (
      SELECT id
      FROM "master_db_brand"
      WHERE name = 'Vivo'
    ),
    '/product/samsung-galaxy-s21.png',
    'Vivo V23e',
    '[ "pink", "blue", "black" ]',
    '[ "128GB" ]',
    '8GB',
    2021,
    '64MP, Wide 8MP, Depth 2MP',
    8490000,
    'eventually settle moon molecular mud went',
    'sides three sort rays trunk distance',
    'baseball sun price label size through',
    '[ ]',
    'modern around floor today believed living inch recently oldest anywhere cool just track shoe either cutting occasionally probably forty command sale think die goose'
  ),
  (
    '157d7ee2-26e0-573c-bef5-4681f6ad0fcf',
    (
      SELECT id
      FROM "master_db_brand"
      WHERE name = 'Xiaomi'
    ),
    '/product/samsung-z-flip.png',
    'Xiaomi 11T 5G',
    '[ "grey", "blue", "white" ]',
    '[ "128GB", "256GB" ]',
    '8GB',
    2021,
    '108MP, Wide 8MP, Macro 5MP',
    11390000,
    'rubber weather lunch kitchen',
    'tree refused worried luck',
    'element contain buffalo describe',
    '[ "50% OFF" ]',
    'regular refer shown lose physical discover state organization ocean dinner helpful loss mighty refused slabs scared check given six quarter crop official put wherever'
  ),
  (
    '7a9d755b-c578-5ad3-9033-5bc8868e6481',
    (
      SELECT id
      FROM "master_db_brand"
      WHERE name = 'Sony'
    ),
    '/product/5d5ecc984b1e4a3628bbce5f3404b10b_400x.png',
    'Xperia PRO-I',
    '[ "black" ]',
    '[ "512GB" ]',
    '12GB',
    2021,
    '3 camera 12MP',
    -2,
    'newspaper badly satellites love price hat pile',
    'condition other work blood church largest joined',
    '120Hz 4K HDR 21:9 6.5in OLED',
    '[ ]',
    'traffic tube bright anything fifth quiet famous count tea television plus prepare language steep pupil piece see saved bat little orbit dot duck people'
  ),
  (
    '1de0011b-b9d5-5cf6-83ba-f4a7a0115dcc',
    (
      SELECT id
      FROM "master_db_brand"
      WHERE name = 'Sony'
    ),
    '/product/bec37fd1196426136aae242507e874b0_32559fe8-63c9-4d8e-b1f1-1544e944913c_400x.png',
    'Xperia 1 III',
    '[ "black" ]',
    '[ "256GB" ]',
    '12GB',
    2021,
    '3 camera 12MP',
    -2,
    'satisfied voyage well having since horn behavior becoming active',
    'chart tin sign return doll lay duty',
    '120Hz 4K HDR 21:9 6.5in OLED',
    '[ ]',
    'fly white protection may master cause disappear ground basket sitting hour tobacco moment grade community control saved leg snow herd visitor old friend experiment'
  ),
  (
    '1b488e0f-b5cc-5e35-a4a2-c2b0c0bc8b80',
    (
      SELECT id
      FROM "master_db_brand"
      WHERE name = 'Bphone'
    ),
    '/product/bphone-b40-thumb-tam-600x600.png',
    'Bphone B40',
    '[ "white" ]',
    '[ "64GB" ]',
    '4GB',
    2020,
    '12MP',
    -1,
    'article place broad closer further store top later',
    'love compare fastened opinion region daily cloth fourth',
    'park before improve combine orange happened steam pair',
    '[ ]',
    'specific fat judge eye every spread forth concerned teeth electricity growth composed one caught price youth difference quarter locate tall gasoline slightly recall have'
  ),
  (
    'be431a69-807e-5c3d-ac49-28a0775c5c63',
    (
      SELECT id
      FROM "master_db_brand"
      WHERE name = 'Pixel'
    ),
    '/product/google_pixel_6_pro_5g_black_didongmy2.png',
    'Google Pixel 6 Pro',
    '[ "black", "white", "yellow" ]',
    '[ "128GB" ]',
    '12GB',
    2021,
    '50MP, Wide 48MP, Tele 12MP',
    -1,
    'let curious trail political education oil compass wear lonely over chance bar down pain bottle review were off decide construction total mail bee into',
    'settlers solve education line hurt higher victory refer blew neighbor glass baseball wire breathing belong terrible bean cool forest knife where snake nodded stove',
    '120Hz HDR10+ 1440x3120 19.5:9 AMOLED',
    '[ ]',
    'dot such additional want species butter corner soon middle heat contrast cover sign pig stuck include planning baby value trip running space valley exciting'
  );
INSERT INTO "master_db_cart"(
    "uuid",
    "quantity",
    "item_id",
    "user_id"
  )
VALUES (
    '761262f5-6deb-5aba-9599-01c67cf84d56',
    45,
    (
      SELECT id
      FROM "master_db_product"
      WHERE name = 'Reno6 Pro 5G'
    ),
    (
      SELECT id
      FROM "master_db_customuser"
      WHERE email = 'owner@localhost.com'
    )
  ),
  (
    '50807864-db73-548e-b703-6a229d2f565f',
    34,
    (
      SELECT id
      FROM "master_db_product"
      WHERE name = 'iPhone 13 Pro Max'
    ),
    (
      SELECT id
      FROM "master_db_customuser"
      WHERE email = 'owner@localhost.com'
    ),
    (
      '616b29d4-37b6-599a-b870-9c9be185b5a2',
      85,
      (
        SELECT id
        FROM "master_db_product"
        WHERE name = 'Vivo V23e'
      ),
      (
        SELECT id
        FROM "master_db_customuser"
        WHERE email = 'owner@localhost.com'
      )
    ),
    (
      '5d4b141d-ee40-54b1-89f8-203dbfa7b2d9',
      94,
      (
        SELECT id
        FROM "master_db_product"
        WHERE name = 'Oppo F17 Pro'
      ),
      (
        SELECT id
        FROM "master_db_customuser"
        WHERE email = 'owner@localhost.com'
      )
    )
  );
