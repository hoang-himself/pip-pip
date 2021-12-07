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
    "perk"
  )
VALUES (
    '6d9349b0-7877-5f44-a863-888e273c3ab0',
    (
      SELECT id
      FROM "master_db_brand"
      WHERE name = 'Apple'
    ),
    '/product/iphone-12-trang-13-600x600.jpg',
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
    '[ "Hot deal!" ]'
  ),
  (
    'ce602c59-de2e-5dfb-8841-02e1d719b1d4',
    (
      SELECT id
      FROM "master_db_brand"
      WHERE name = 'Apple'
    ),
    '/product/iphone-13-midnight-2-600x600.jpg',
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
    '[ "50% OFF" ]'
  ),
  (
    'baf9c355-a040-5f07-a669-a92e6245bf3e',
    (
      SELECT id
      FROM "master_db_brand"
      WHERE name = 'Apple'
    ),
    '/product/iphone-13-pro-gold-1-600x600.jpg',
    'iPhone 13 Pro',
    '[ "white", "red", "green", "yellow", "blue", "purple", "black" ]',
    '[ "256GB", "128GB", "512GB", "1TB" ]',
    '4GB',
    2021,
    '3 camera 12MP',
    34490000,
    'article place broad closer further store top later',
    'love compare fastened opinion region daily cloth fourth',
    'park before improve combine orange happened steam pair',
    '[ "50% OFF" ]'
  ),
  (
    '072c8269-eda2-5085-8d5f-4811e5adb80d',
    (
      SELECT id
      FROM "master_db_brand"
      WHERE name = 'Apple'
    ),
    '/product/iphone-xi-do-600x600.jpg',
    'iPhone 11',
    '[ "red", "purple", "black", "white", "yellow" ]',
    '[ "64GB", "128GB", "256GB" ]',
    '4GB',
    2019,
    '2 camera 12MP',
    18990000,
    'let curious trail political education oil compass wear lonely over chance bar down pain bottle review were off decide construction total mail bee into',
    'settlers solve education line hurt higher victory refer blew neighbor glass baseball wire breathing belong terrible bean cool forest knife where snake nodded stove',
    'nearest worried thing recent noted sink choose please difficulty desk hold mouse brave bow arrange disease figure policeman offer expect did remarkable section surrounded',
    '[ ]'
  ),
  (
    'ba50b773-0580-5da1-b4fa-56f01696a1cb',
    (
      SELECT id
      FROM "master_db_brand"
      WHERE name = 'Oppo'
    ),
    '/product/oppo-a95-4g-bac-2-600x600.jpg',
    'Oppo A95 4G',
    '[ "white", "black" ]',
    '[ "128GB" ]',
    '8GB',
    2021,
    '48MP, 2MP, 2MP',
    6990000,
    'rice upward mail lie member asleep guess brass express gas changing gun herd shorter means could silly twenty four broken shallow deeply slight layers',
    'youth swing fireplace faster lungs flat meal pick leg nine public proud first this fastened iron pretty open growth under shoe that likely bush',
    'salmon gravity social largest truck potatoes upper bush meat wonder rod mission tool construction saddle space pencil degree what poem rather palace tropical hand',
    '[ ]'
  ),
  (
    'e5fb8ff4-9520-5118-8195-290803e57460',
    (
      SELECT id
      FROM "master_db_brand"
      WHERE name = 'Oppo'
    ),
    '/product/oppo-reno6-pro-blue-1-600x600.jpg',
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
    '[ "50% OFF", "Coupon" ]'
  ),
  (
    'a5690a42-e79f-53d0-9972-b8f566633892',
    (
      SELECT id
      FROM "master_db_brand"
      WHERE name = 'Oppo'
    ),
    '/product/oppo-reno6-z-5g-aurora-1-600x600.jpg',
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
    '[ ]'
  ),
  (
    'e107cbf1-930b-5e40-8cc9-f09fd0d91ed1',
    (
      SELECT id
      FROM "master_db_brand"
      WHERE name = 'Realme'
    ),
    '/product/realme-c11-2021-blue-1-600x600.jpg',
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
    '[ ]'
  ),
  (
    '27eaec5c-4fbd-5ff7-b270-43fa8a3b0bc7',
    (
      SELECT id
      FROM "master_db_brand"
      WHERE name = 'Samsung'
    ),
    '/product/samsung-galaxy-a03s-black-600x600.jpg',
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
    '[ "Hot deal!", "Coupon" ]'
  ),
  (
    '4c182238-d5b2-593f-aeb7-5a1a1f91c7ee',
    (
      SELECT id
      FROM "master_db_brand"
      WHERE name = 'Vivo'
    ),
    '/product/Vivo-V23e-1-2-600x600.jpg',
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
    '[ ]'
  ),
  (
    '157d7ee2-26e0-573c-bef5-4681f6ad0fcf',
    (
      SELECT id
      FROM "master_db_brand"
      WHERE name = 'Xiaomi'
    ),
    '/product/xiaomi-11t-grey-1-600x600.jpg',
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
    '[ "50% OFF" ]'
  );
