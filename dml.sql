INSERT INTO "Brand"(name, description)
VALUES (
    'Apple',
    'clothing mice research closer depth law grew constantly mark me way down kept grow strike plate finish themselves pack sail rope greatest will without'
  ),
  (
    'Oppo',
    'cell happened younger arrive at torn connected dozen easily highest light look rubber sign beat farmer bend identity silent mental wrote bicycle listen stared'
  ),
  (
    'Realme',
    'sang arm youth bowl sort horn massage torn lying had shoot few studied public dress state sudden wool tax enough whose mountain another merely'
  ),
  (
    'Samsung',
    'thread company author light cross parallel sink drop clothes unhappy planning fastened wolf cold mark bright accept pond both castle bit film learn percent'
  ),
  (
    'Vivo',
    'press obtain sentence planning basis strange war myself loud changing tears nature bank grabbed water planet pictured afternoon pretty reader ranch thus noise threw'
  ),
  (
    'Xiaomi',
    'smell bottle ahead twelve using heard species stone iron us managed vegetable lead hurried wing bee recently tree neighborhood closely dog asleep like also'
  );
INSERT INTO "Product"(
    image,
    brand,
    color,
    storage,
    ram,
    year,
    camera,
    name,
    description,
    price,
    perk,
    rem_quantity
  )
VALUES (
    '/product/iphone-12-trang-13-600x600.jpg',
    (
      SELECT id
      FROM "Brand"
      WHERE name = 'Apple'
    ),
    '[ "white", "black", "red", "green", "blue", "purple" ]',
    '[ "128GB", "256GB", "512GB" ]',
    '[ "4GB" ]',
    2021,
    '[ "2 camera 12MP" ]',
    'iPhone 12',
    'replace rapidly missing locate receive seeing passage summer foreign tropical stretch doubt among softly finally orbit steep land edge troops gulf previous father direction',
    24490000,
    '[ "sale" ]',
    100
  ),
  (
    '/product/iphone-13-midnight-2-600x600.jpg',
    (
      SELECT id
      FROM "Brand"
      WHERE name = 'Apple'
    ),
    '[ "white", "black", "blue", "pink", "red" ]',
    '[ "128GB", "256GB", "512GB" ]',
    '[ "4GB" ]',
    2021,
    '[ "2 camera 12MP" ]',
    'iPhone 13',
    'other at hole split friend gravity late labor till behavior studied fear success local business hurt smooth mud influence making against here quite determine',
    24490000,
    '[ "sale" ]',
    100
  ),
  (
    '/product/iphone-13-pro-gold-1-600x600.jpg',
    (
      SELECT id
      FROM "Brand"
      WHERE name = 'Apple'
    ),
    '[ "gold", "brown", "silver", "blue" ]',
    '[ "256GB", "128GB", "512GB", "1TB" ]',
    '[ "4GB" ]',
    2021,
    '[ "3 camera 12MP" ]',
    'iPhone 13 Pro',
    'chemical camp difficult knife spent feet ancient thousand difference ill type chamber moment feed highest hungry remarkable usual dance dollar old refused specific expression',
    34490000,
    '[ "sale" ]',
    100
  ),
  (
    '/product/iphone-xi-do-600x600.jpg',
    (
      SELECT id
      FROM "Brand"
      WHERE name = 'Apple'
    ),
    '[ "red", "green", "purple", "black", "white", "yellow" ]',
    '[ "64GB", "128GB", "256GB" ]',
    '[ "4GB" ]',
    2019,
    '[ "2 camera 12MP" ]',
    'iPhone 11',
    'planning comfortable bone bread replied local movie capital fewer wheat group other short tightly parallel grain machine scientific peace lack shinning road stove adjective',
    18990000,
    '[ ]',
    100
  ),
  (
    '/product/oppo-a95-4g-bac-2-600x600.jpg',
    (
      SELECT id
      FROM "Brand"
      WHERE name = 'Oppo'
    ),
    '[ "silver", "black" ]',
    '[ "128GB" ]',
    '[ "8GB" ]',
    2021,
    '[ "48MP", "2MP", "Depth 2MP" ]',
    'Oppo A95 4G',
    'bigger cup concerned involved pour felt ran sense promised nature such finish particularly unknown pig diameter weight became officer best principal arrow sum speak',
    6990000,
    '[ ]',
    100
  ),
  (
    '/product/oppo-reno6-pro-blue-1-600x600.jpg',
    (
      SELECT id
      FROM "Brand"
      WHERE name = 'Oppo'
    ),
    '[ "blue", "brown" ]',
    '[ "256GB" ]',
    '[ "12GB" ]',
    2021,
    '[ "50MP", "16MP", "Wide 13MP", "Depth 2MP" ]',
    'Reno6 Pro 5G',
    'rock turn trail basis plan take breath leaf decide growth sentence dirty suggest soft member kept news construction corner led wall coffee law look',
    17990000,
    '[ "sale" ]',
    100
  ),
  (
    '/product/oppo-reno6-z-5g-aurora-1-600x600.jpg',
    (
      SELECT id
      FROM "Brand"
      WHERE name = 'Oppo'
    ),
    '[ "silver", "black" ]',
    '[ "256GB" ]',
    '[ "12GB" ]',
    2021,
    '[ "64MP", "Wide 8MP", "Depth 2MP" ]',
    'Reno6 Z 5G',
    'whenever younger sitting frequently particularly potatoes oil species green human harbor bound final division thought trick pet ourselves across seeing bear reader swam easy',
    9490000,
    '[ ]',
    100
  ),
  (
    '/product/realme-c11-2021-blue-1-600x600.jpg',
    (
      SELECT id
      FROM "Brand"
      WHERE name = 'Realme'
    ),
    '[ "blue", "brown" ]',
    '[ "32GB", "64GB" ]',
    '[ "2GB", "4GB" ]',
    2021,
    '[ "8MP" ]',
    'Realme C11 (2021)',
    'saw beneath dress seat living pictured plate short road blood service familiar market factory floating morning divide every teeth force strange say frozen storm',
    2990000,
    '[ ]',
    100
  ),
  (
    '/product/samsung-galaxy-a03s-black-600x600.jpg',
    (
      SELECT id
      FROM "Brand"
      WHERE name = 'Samsung'
    ),
    '[ "black", "blue", "white" ]',
    '[ "64GB" ]',
    '[ "4GB" ]',
    2021,
    '[ "13MP", "Macro 2MP", "Depth 2MP" ]',
    'Samsung Galaxy A03s',
    'most muscle earth church fireplace contrast rose sleep might on physical judge remember local rice terrible quickly form donkey plane changing nodded triangle although',
    3690000,
    '[ ]',
    100
  ),
  (
    '/product/Vivo-V23e-1-2-600x600.jpg',
    (
      SELECT id
      FROM "Brand"
      WHERE name = 'Vivo'
    ),
    '[ "pink", "blue", "black" ]',
    '[ "128GB" ]',
    '[ "8GB" ]',
    2021,
    '[ "64MP", "Wide 8MP", "Depth 2MP" ]',
    'Vivo V23e',
    'broke sick spell familiar dozen by previous north equipment hung company mouth because story tube simplest drink moment circle also join sheet hello field',
    8490000,
    '[ ]',
    100
  ),
  (
    '/product/xiaomi-11t-grey-1-600x600.jpg',
    (
      SELECT id
      FROM "Brand"
      WHERE name = 'Xiaomi'
    ),
    '[ "grey", "blue", "white" ]',
    '[ "128GB", "256GB" ]',
    '[ "8GB" ]',
    2021,
    '[ "108MP", "Wide 8MP", "Macro 5MP" ]',
    'Xiaomi 11T 5G',
    'bottle sick chemical continent cloth finger bean judge introduced church cake service enjoy double might upon frighten date condition nice learn firm may gradually',
    11390000,
    '[ "sale" ]',
    100
  );
