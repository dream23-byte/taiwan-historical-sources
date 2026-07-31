-- ============================================================
-- 東亞歷史權威史料庫 — 中國史料匯入 SQL（增量模式）
-- 由 Import-ChinaToSupabase.ps1 v2 自動產生
-- ============================================================

-- === 1. 來源機構（僅新增者） ===
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (196, '故宮博物院') ON CONFLICT (name_zh) DO NOTHING;

SELECT setval('institutions_id_seq', 196);

-- === 2. 主要史料 ===
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (901, '《明實錄》', '明朝官方（歷朝史官）', '明（1368–1627）', 22, 1, '中央研究院', 'CN-ST-MING-SHILU-01', 'https://hanchi.ihp.sinica.edu.tw/', 'zh', '明代歷朝官修編年史，記太祖至熹宗十五朝二百餘年軍國大事，含詔令、奏疏、朝政與邊事，為明史研究最重要之第一手官方檔案，《太祖實錄》經三修，今通行本據北平圖書館藏本影印', '明實錄;編年史;官方檔案;明朝;史官', '明', '全中國', NULL, '明史;明會典;萬曆起居注', '中央研究院', NULL, '2026-07-31', 'UNCLEAR', '漢籍全文資料庫需申請帳號密碼', '已收錄 metadata', NULL, '明史研究之基本史源', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (902, '《明史》', '張廷玉等（乾隆四年欽定）', '清乾隆四年（1739）', 22, 1, '中央研究院', 'CN-ST-MING-MINGSHI-01', 'https://hanchi.ihp.sinica.edu.tw/', 'zh', '清代官修《明史》三百三十二卷，為二十四史最後一部正史，據明實錄、檔冊與私史改修而成，紀傳體記載明朝二百七十六年興亡，其中〈食貨〉〈兵〉〈藝文〉諸志保存明制要目', '明史;張廷玉;二十四史;紀傳體;明清易代', '明', '全中國', NULL, '明實錄;明會典', '中央研究院', NULL, '2026-07-31', 'UNCLEAR', '漢籍全文資料庫需申請帳號密碼', '已收錄 metadata', NULL, '記載明朝興亡之官修正史', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (903, '《明會典》', '申時行等（萬曆重修）', '明萬曆十五年（1587）', 22, 1, '中央研究院', 'CN-ST-MING-HUIDIAN-01', 'https://hanchi.ihp.sinica.edu.tw/', 'zh', '明代官修行政法典，以六部為綱，分記職官、儀制、禮制、兵刑、賦役、茶馬等二百二十八卷，為明代官制與政務運作最詳盡之制度文獻，今通行萬曆重修本', '明會典;六部;官制;政典;申時行', '明', '全中國', NULL, '明史;明實錄', '中央研究院', NULL, '2026-07-31', 'UNCLEAR', '漢籍全文資料庫需申請帳號密碼', '已收錄 metadata', NULL, '明代行政制度之總綱', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (904, '《萬曆起居注》', '明朝官方（內閣）', '明萬曆年間（1573–1620）', 22, 1, '中央研究院', 'CN-ST-MING-QIJUZHU-01', 'https://hanchi.ihp.sinica.edu.tw/', 'zh', '明代起居注僅萬曆一朝較完整傳世，記皇帝言行、內閣票擬、章奏批答與朝政實錄，為萬曆一朝政治運作之逐日檔案，對研究萬曆怠政、礦稅之爭與黨爭極具價值', '萬曆起居注;起居注;內閣;票擬;萬曆皇帝', '明', '全中國', NULL, '明實錄;萬曆會計錄', '中央研究院', NULL, '2026-07-31', 'UNCLEAR', '漢籍全文資料庫需申請帳號密碼', '已收錄 metadata', NULL, '萬曆一朝之逐日政務檔案', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (905, '鄭和下西洋官方史料與《鄭和航海圖》', '明朝官方／茅元儀（輯）', '明永樂三年至宣德八年（1405–1433）', 22, 1, '中央研究院', 'CN-ST-MING-ZHENGHE-01', 'https://hanchi.ihp.sinica.edu.tw/', 'zh', '鄭和七下西洋（1405–1433），率船隊遠航東南亞、印度洋直抵非洲東岸，《武備志》所收〈鄭和航海圖〉繪四十餘國航路，《瀛涯勝覽》《星槎勝覽》《西洋番國志》為隨行記録，為明代最大規模官方海外交通之第一手史料', '鄭和;下西洋;航海圖;海上絲路;永樂', '明', '東南亞;印度洋;非洲東岸', NULL, '武備志;瀛涯勝覽;星槎勝覽', '中央研究院', NULL, '2026-07-31', 'UNCLEAR', '漢籍全文資料庫需申請帳號密碼', '已收錄 metadata', NULL, '十五世紀全球最大遠洋航行實錄', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (906, '明末農民戰爭史料（李自成、張獻忠）', '中央研究院（輯）', '明（1627–1644）', 22, 1, '中央研究院', 'CN-ST-MING-FARMSWAR-01', 'https://hanchi.ihp.sinica.edu.tw/', 'zh', '明末陝北饑荒引發農民起事，李自成陷北京、張獻忠據蜀，《明季北略》《綏寇紀略》《懷陵流寇始終錄》等記載起事始末與明廷剿撫之策，為明亡社會經濟史之關鍵史料', '明末農民戰爭;李自成;張獻忠;明季北略;流寇', '明', '陝西;河南;湖北;四川;北京', NULL, '明史;南明史料', '中央研究院', NULL, '2026-07-31', 'UNCLEAR', '漢籍全文資料庫需申請帳號密碼', '已收錄 metadata', NULL, '明亡之直接社會動因', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (907, '嘉靖大倭寇與海禁政策史料', '中央研究院（輯）', '明（1523–1567）', 22, 1, '中央研究院', 'CN-ST-MING-WOKOU-01', 'https://hanchi.ihp.sinica.edu.tw/', 'zh', '嘉靖年間倭患熾烈，浙閩沿海遭襲，《籌海圖編》《明史紀事本末》《日本一鑑》及《世宗實錄》載倭亂與王直等海商集團，海禁政策與隆慶開關之爭亦見其中，為明代海防與海洋政策之核心文獻', '倭寇;海禁;嘉靖;王直;海防', '明', '浙江;福建;廣東沿海', NULL, '籌海圖編;明實錄', '中央研究院', NULL, '2026-07-31', 'UNCLEAR', '漢籍全文資料庫需申請帳號密碼', '已收錄 metadata', NULL, '明代海防與海洋政策之關鍵', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (908, '南明與明清易代史料', '中央研究院（輯）', '明末清初（1644–1662）', 22, 1, '中央研究院', 'CN-ST-MING-NANMING-01', 'https://hanchi.ihp.sinica.edu.tw/', 'zh', '順治元年北京陷落後，南明弘光、隆武、永曆諸朝相繼於江南、閩廣抗清，延平王鄭氏據臺灣延明祚至1683，《南明史》《小腆紀年》《爝火錄》等記易代之際忠烈與政局，為明清之際東亞政權更迭之要籍', '南明;弘光;永曆;鄭成功;明清易代', '明', '江南;福建;廣東;雲南;臺灣', NULL, '明史;明末農民戰爭史料', '中央研究院', NULL, '2026-07-31', 'UNCLEAR', '漢籍全文資料庫需申請帳號密碼', '已收錄 metadata', NULL, '明祚延續至臺灣之見證', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (909, '《籌海圖編》', '胡宗憲（編）／鄭若曾（纂）', '明嘉靖四十一年（1562）', 22, 2, '中央研究院', 'CN-ST-MING-CHOUHAI-01', 'https://hanchi.ihp.sinica.edu.tw/', 'zh', '嘉靖間胡宗憲督師東南、鄭若曾纂《籌海圖編》十三卷，繪沿海州縣圖、日本圖與倭寇來蹤，詳述海防、水軍與禦倭之策，為明代海防地理與軍事制度最重要之輿圖文獻', '籌海圖編;海防;沿海輿圖;胡宗憲;倭寇', '明', '東南沿海;日本', NULL, '嘉靖大倭寇史料;九邊圖', '中央研究院', NULL, '2026-07-31', 'UNCLEAR', '漢籍全文資料庫需申請帳號密碼', '已收錄 metadata', NULL, '明代海防輿圖之集大成', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (910, '《廣輿圖》', '羅洪先（增繪）', '明嘉靖（1561）', 22, 2, '中央研究院', 'CN-ST-MING-GUANGYUTU-01', 'https://hanchi.ihp.sinica.edu.tw/', 'zh', '羅洪先據元代朱思本〈輿地圖〉增補成《廣輿圖》二卷，創分幅地圖與計里畫方之制，收兩京十三布政使司圖、九邊圖、漕運圖、河圖等，為明代最重要之全國總圖，影響晚明至清代製圖', '廣輿圖;羅洪先;計里畫方;兩京十三布政使司;製圖', '明', '全中國', NULL, '九邊圖;籌海圖編', '中央研究院', NULL, '2026-07-31', 'UNCLEAR', '漢籍全文資料庫需申請帳號密碼', '已收錄 metadata', NULL, '明代全國輿圖之典範', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (911, '《九邊圖》與明代北疆防禦輿圖', '明代繪圖官', '明（14–17世紀）', 22, 2, '中國國家圖書館', 'CN-ST-MING-JIUBIANTU-01', NULL, 'zh', '明代沿長城設遼東、薊鎮、宣府、大同、山西、延綏、寧夏、固原、甘肅九邊重鎮，《九邊圖》繪九鎮形勝、墩臺與駐軍，中國國家圖書館藏《九邊圖》彩繪本為明代北部邊防最完整之輿圖', '九邊;長城;邊防;輿圖;軍鎮', '明', '長城沿線', NULL, '廣輿圖;明長城遺存', '中國國家圖書館', NULL, '2026-07-31', 'UNCLEAR', '國圖藏彩繪本需到館閱覽', '已收錄 metadata', NULL, '明代九邊防務之空間實錄', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (912, '《永樂大典》殘本', '解縉／姚廣孝等（編）', '明永樂五年（1407）', 22, 7, '中國國家圖書館', 'CN-ST-MING-YONGLE-01', NULL, 'zh', '《永樂大典》二萬二千八百七十七卷，為世界最大百科全書，今存殘本約八百餘卷分藏世界各地，中國國家圖書館藏約二百二十餘卷，保存宋元佚文與方志、醫學、科技資料，尤以「門」類輯佚價值最高', '永樂大典;類書;百科全書;輯佚;解縉', '明', '全中國', NULL, '明會典;大明一統志', '中國國家圖書館', NULL, '2026-07-31', 'UNCLEAR', '殘本分藏全球，國圖藏本部分數位公開', '已收錄 metadata', NULL, '世界最大類書之劫餘殘卷', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (913, '明代四大奇書（《三國演義》《水滸傳》《西遊記》《金瓶梅》）', '羅貫中／施耐庵／吳承恩／蘭陵笑笑生', '明（14–16世紀）', 22, 7, '中華書局', 'CN-ST-MING-SIDAQISHU-01', NULL, 'zh', '明代四大奇書標誌中國白話長篇小說之成熟：羅貫中《三國演義》、施耐庵《水滸傳》、吳承恩《西遊記》為章回小說典範，《金瓶梅》首開世情小說，四大奇書並保存明代社會、商業與風俗之生動側面', '四大奇書;章回小說;三國演義;水滸傳;西遊記;金瓶梅', '明', '全中國', NULL, '傳習錄;陽明學', '中華書局', NULL, '2026-07-31', 'ARR', '中華書局校點本通行', '已收錄 metadata', NULL, '中國白話小說之高峰', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (914, '《武備志》', '茅元儀', '明天啟元年（1621）', 22, 7, '中央研究院', 'CN-ST-MING-WUBEIZHI-01', 'https://hanchi.ihp.sinica.edu.tw/', 'zh', '茅元儀輯《武備志》二百四十卷，分兵訣、戰略、陣練、軍資、占度五部，載火器（火銃、火箭）、軍陣與邊海防圖說，所收〈鄭和航海圖〉〈航海針經〉尤為珍貴，為明代軍事技術百科全書', '武備志;茅元儀;火器;兵法;鄭和航海圖', '明', '全中國', NULL, '鄭和下西洋史料;九邊圖', '中央研究院', NULL, '2026-07-31', 'UNCLEAR', '漢籍全文資料庫需申請帳號密碼', '已收錄 metadata', NULL, '明代軍事科技之百科', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (915, '王陽明《傳習錄》與陽明學', '王守仁（王陽明）', '明（1518）', 22, 7, '中央研究院', 'CN-ST-MING-CHUANXILU-01', 'https://hanchi.ihp.sinica.edu.tw/', 'zh', '王守仁集心學大成，倡「致良知」「知行合一」，其與門人問答由徐愛等輯為《傳習錄》三卷，晚年講學江西、浙江，陽明學影響明代中葉後學術思想與東亞儒學至深', '王陽明;傳習錄;心學;致良知;知行合一', '明', '全中國', NULL, '明史;國朝獻徵錄', '中央研究院', NULL, '2026-07-31', 'UNCLEAR', '漢籍全文資料庫需申請帳號密碼', '已收錄 metadata', NULL, '明代心學之第一經典', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (916, '《國朝獻徵錄》', '焦竑（輯）', '明萬曆四十四年（1616）', 22, 4, '中央研究院', 'CN-ST-MING-XIANZHENGLU-01', 'https://hanchi.ihp.sinica.edu.tw/', 'zh', '焦竑輯《國朝獻徵錄》一百二十卷，收明初至萬曆間宗室、百官、列卿、儒林、隱逸等人物傳記三千餘篇，取材碑誌、家傳與實錄，為明代人物傳記資料之淵藪', '國朝獻徵錄;焦竑;人物傳記;碑傳;明代人物', '明', '全中國', NULL, '明史;傳習錄', '中央研究院', NULL, '2026-07-31', 'UNCLEAR', '漢籍全文資料庫需申請帳號密碼', '已收錄 metadata', NULL, '明代人物傳記之淵藪', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (917, '《南都繁會圖》', '明代院體畫家', '明（15–16世紀）', 22, 5, '中國國家博物館', 'CN-ST-MING-NANDU-01', NULL, 'zh', '明人繪《南都繁會圖》卷（中國國家博物館藏），以寫實筆法描繪南京城郊市廛百業、河運商旅與節慶繁華，人物千餘、店鋪眾多，為明代中葉城市經濟與市民生活最重要之圖像史料', '南都繁會圖;南京;市井;城市經濟;明代繪畫', '明', '南京', NULL, '明代黃冊與魚鱗圖冊;徽商史料', '中國國家博物館', NULL, '2026-07-31', 'ARR', '館藏圖像依館方規定使用', '已收錄 metadata', NULL, '明代市井繁華之圖像實錄', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (918, '明代黃冊與魚鱗圖冊', '明朝戶部／地方州縣', '明（1381–1644）', 22, 6, '中國第一歷史檔案館', 'CN-ST-MING-HUANGCE-01', NULL, 'zh', '明太祖洪武十四年（1381）推行黃冊（戶籍）與魚鱗圖冊（田籍），黃冊載丁口事產、魚鱗圖冊繪田畝形界，奠定明代賦役徵收基礎，現存徽州等地文書檔案與遼東都司檔案為制度實錄', '黃冊;魚鱗圖冊;戶籍;田籍;賦役', '明', '全中國', NULL, '萬曆會計錄;一條鞭法史料', '中國第一歷史檔案館', NULL, '2026-07-31', 'ARR', '館藏檔案需申請調閱', '已收錄 metadata', NULL, '明代戶籍田籍制度之核心', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (919, '《萬曆會計錄》', '張學顏（纂）', '明萬曆十年（1582）', 22, 6, '中央研究院', 'CN-ST-MING-HUIJILU-01', 'https://hanchi.ihp.sinica.edu.tw/', 'zh', '《萬曆會計錄》四十三卷為明代財政總簿，逐項開列天下田賦、屯田、鹽課、商稅、馬政收支額，反映一條鞭法實施前後國庫收支實況，為明中葉財政統計最系統之官方紀錄', '萬曆會計錄;財政;田賦;鹽課;統計', '明', '全中國', NULL, '黃冊與魚鱗圖冊;一條鞭法史料', '中央研究院', NULL, '2026-07-31', 'UNCLEAR', '漢籍全文資料庫需申請帳號密碼', '已收錄 metadata', NULL, '明代國庫收支之總帳', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (920, '明定陵出土文物（萬曆帝）', '中國社會科學院考古研究所（發掘）', '明（1584–1620）', 22, 7, '中國國家博物館', 'CN-ST-MING-DINGLING-01', NULL, 'zh', '定陵為明神宗萬曆帝及孝端、孝靖二后合葬陵，1956–1958年發掘，出土金冠、龍袍、鳳冠與萬曆年間器物三千餘件，為唯一經考古發掘之明代帝陵，出土文物為明晚期宮廷制度與工藝之直接實證', '定陵;萬曆皇帝;帝陵;金冠;考古發掘', '明', '北京（昌平十三陵）', NULL, '明十三陵碑刻;紫禁城營建', '中國國家博物館', NULL, '2026-07-31', 'ARR', '出土文物依文保規定，圖像多已公開', '已收錄 metadata', NULL, '唯一考古發掘之明代帝陵', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (921, '北京故宮（紫禁城）營建史料與遺存', '明朝工部／蒯祥（營造）', '明永樂四年至十八年（1406–1420）', 22, 7, '故宮博物院', 'CN-ST-MING-GUGONG-01', NULL, 'zh', '永樂帝遷都北京，於1406–1420年營建紫禁城，前朝後寢、左祖右社之制沿《周禮》，宮殿九千餘間為世界最大木構建築群，現為北京故宮博物院，其建築與藏存文物為明代宮廷文化之總匯', '紫禁城;故宮;永樂遷都;宮殿;明代建築', '明', '北京', NULL, '明北京城址;明會典', '故宮博物院', NULL, '2026-07-31', 'ARR', '故宮藏品影像依院方規定', '已收錄 metadata', NULL, '世界最大宮殿建築群', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (922, '景德鎮御窯廠遺址與明代瓷器', '江西省文物考古研究院（發掘）', '明（1369–1644）', 22, 7, '江西省文物考古研究院', 'CN-ST-MING-JINGDEZHEN-01', NULL, 'zh', '明洪武二年設景德鎮御窯廠，專供宮廷用瓷，青花、釉裏紅、鬥彩、五彩諸名品迭出；1980年代後珠山龍珠閣遺址歷次發掘出土大量落選砸碎之御窯殘片，為明代官窯制度與瓷器工藝之考古實證', '景德鎮;御窯廠;青花瓷;龍珠閣;考古', '明', '江西景德鎮', NULL, '明代海外貿易史料;定陵出土文物', '江西省文物考古研究院', NULL, '2026-07-31', 'ARR', '發掘報告已出版，館藏影像依館方規定', '已收錄 metadata', NULL, '官窯瓷器工藝之考古實證', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (923, '明長城邊牆遺存與防禦體系', '明朝北方邊鎮', '明（1368–1644）', 22, 7, '山西省文物考古研究院', 'CN-ST-MING-CHANGCHENG-01', NULL, 'zh', '明代大規模修築長城邊牆，東起鴨綠江、西至嘉峪關，分九鎮防守，磚石包砌之山海關至居庸關段保存最完整，為世界文化遺產，現存敵臺、墩臺、關堡與牆體為明代北部防禦體系之宏偉實物', '明長城;邊牆;九邊;世界遺產;防禦體系', '明', '長城沿線', NULL, '九邊圖;山海關碑刻', '山西省文物考古研究院', NULL, '2026-07-31', 'ARR', '文保單位影像依相關規定使用', '已收錄 metadata', NULL, '世界最大規模軍事防禦工程', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (924, '明十三陵與神道碑刻', '明朝皇家陵寢', '明（1409–1644）', 22, 8, '北京市文物研究所', 'CN-ST-MING-SHISANLING-01', NULL, 'zh', '明十三陵為十三位皇帝陵寢群，永樂帝長陵神道石像生與功德碑為最，各陵神功聖德碑記帝王生平，1956年發掘定陵地宮，陵區碑刻與建築為明代皇家葬制與碑碣實物之集中保存', '明十三陵;長陵;神道;功德碑;帝陵', '明', '北京昌平', NULL, '明定陵出土文物;明會典', '北京市文物研究所', NULL, '2026-07-31', 'ARR', '文保單位影像依相關規定使用', '已收錄 metadata', NULL, '明代帝陵碑刻之集中地', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (925, '一條鞭法與明代賦役制度改革', '張居正（推行）', '明嘉靖末至萬曆九年（1560s–1581）', 22, 10, '中央研究院', 'CN-ST-MING-YITIAOBIAN-01', 'https://hanchi.ihp.sinica.edu.tw/', 'zh', '一條鞭法將賦與役合併為銀兩徵收，嘉靖間始行於南方，萬曆九年（1581）張居正推廣全國，改實物與力役為折銀，中國賦役制度由實物地租邁向貨幣化之轉折，史料見《萬曆會計錄》與各省賦役全書', '一條鞭法;張居正;賦役;折銀;財政改革', '明', '全中國', NULL, '萬曆會計錄;黃冊與魚鱗圖冊', '中央研究院', NULL, '2026-07-31', 'UNCLEAR', '漢籍全文資料庫需申請帳號密碼', '已收錄 metadata', NULL, '中國賦役貨幣化之轉折', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (926, '《天工開物》', '宋應星', '明崇禎十年（1637）', 22, 10, '中央研究院', 'CN-ST-MING-TIANGONG-01', 'https://hanchi.ihp.sinica.edu.tw/', 'zh', '宋應星《天工開物》十八卷記衣食住行各業生產技術，涵蓋農業、紡織、冶鑄、陶瓷、舟車、火器等，附大量插圖，為中國科技史上系統總結農工生產技術之經典，明末手工業與技術水平之百科實錄', '天工開物;宋應星;手工業;科技史;插圖', '明', '全中國', NULL, '農政全書;景德鎮御窯廠', '中央研究院', NULL, '2026-07-31', 'UNCLEAR', '漢籍全文資料庫需申請帳號密碼', '已收錄 metadata', NULL, '明代生產技術之百科全書', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (927, '《農政全書》', '徐光啟', '明崇禎十二年（1639）', 22, 10, '中央研究院', 'CN-ST-MING-NONGZHENG-01', 'https://hanchi.ihp.sinica.edu.tw/', 'zh', '徐光啟著《農政全書》六十卷，分農本、田制、農事、水利、樹藝、蠶桑、荒政諸門，融彙古農書並引泰西水利之法，其中〈甘藷疏〉倡種薯救荒，為明代農學集大成之作', '農政全書;徐光啟;農業;水利;荒政', '明', '全中國', NULL, '天工開物;明末小冰期氣候史料', '中央研究院', NULL, '2026-07-31', 'UNCLEAR', '漢籍全文資料庫需申請帳號密碼', '已收錄 metadata', NULL, '明代農學之集大成', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (928, '徽商與明代商業史料（《士商類要》等）', '徽州商人／黃汴（輯）', '明（16–17世紀）', 22, 10, '中央研究院', 'CN-ST-MING-HUISHANG-01', 'https://hanchi.ihp.sinica.edu.tw/', 'zh', '明代徽商足跡遍天下，操縱鹽業、典當與茶木之利，黃汴《士商類要》等商書載商路、牙稅與營商之道，《歙縣志》與徽州契約文書存其經營實錄，為明代商業資本與商幫制度之珍貴史料', '徽商;商幫;商書;契約文書;商業資本', '明', '徽州;長江流域', NULL, '南都繁會圖;黃冊與魚鱗圖冊', '中央研究院', NULL, '2026-07-31', 'UNCLEAR', '漢籍全文資料庫需申請帳號密碼', '已收錄 metadata', NULL, '明清商幫之首的經營實錄', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (929, '《本草綱目》', '李時珍', '明萬曆二十四年（1596）', 22, 11, '中央研究院', 'CN-ST-MING-BENCAO-01', 'https://hanchi.ihp.sinica.edu.tw/', 'zh', '李時珍歷二十七年編《本草綱目》五十二卷，載藥一千八百九十二種、方一萬一千餘首，分十六部六十二類，改藥物分類並繪藥圖，為中國藥物學與博物學之集大成巨著，影響及於東亞與歐洲', '本草綱目;李時珍;藥學;博物學;醫藥', '明', '全中國', NULL, '瘟疫論;天工開物', '中央研究院', NULL, '2026-07-31', 'UNCLEAR', '漢籍全文資料庫需申請帳號密碼', '已收錄 metadata', NULL, '中國藥物學之集大成', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (930, '《瘟疫論》', '吳有性（吳又可）', '明崇禎十五年（1642）', 22, 11, '中央研究院', 'CN-ST-MING-WENYILUN-01', 'https://hanchi.ihp.sinica.edu.tw/', 'zh', '崇禎年間瘟疫大流行，吳有性撰《瘟疫論》首倡「戾氣」致病說，突破六淫致疫傳統，主張疠氣從口鼻而入、創達原飲等方，開溫病學派先河，為中國傳染病學之里程碑', '瘟疫論;吳有性;戾氣;溫病;傳染病', '明', '全中國', NULL, '本草綱目;明末小冰期氣候史料', '中央研究院', NULL, '2026-07-31', 'UNCLEAR', '漢籍全文資料庫需申請帳號密碼', '已收錄 metadata', NULL, '中國傳染病學之里程碑', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (931, '明代科舉制度史料（鄉會試與狀元卷）', '明朝禮部／國子監', '明（1370–1644）', 22, 11, '中國第一歷史檔案館', 'CN-ST-MING-KEJU-01', NULL, 'zh', '明代科舉三年一試，鄉試會試殿試三級相承，洪武三年（1370）詔開科取士，八股取士制度確立，《明會典》載科場規制，現存萬曆狀元趙秉忠殿試卷等真跡為科舉制度之直接實物', '科舉;八股文;狀元卷;殿試;教育制度', '明', '全中國', NULL, '明會典;國朝獻徵錄', '中國第一歷史檔案館', NULL, '2026-07-31', 'ARR', '館藏卷宗需申請調閱', '已收錄 metadata', NULL, '明代取士制度之實物實錄', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (932, '《徐霞客遊記》', '徐弘祖（徐霞客）', '明（1613–1639）', 22, 12, '中央研究院', 'CN-ST-MING-XUXIAKE-01', 'https://hanchi.ihp.sinica.edu.tw/', 'zh', '徐霞客畢生遊歷三十餘年，足跡遍及大半中國，其《徐霞客遊記》記山川形勢、岩溶地貌與人文風俗，對石灰岩喀斯特地貌之觀察領先世界二百年，為明代地理學與自然考察之第一手記錄', '徐霞客遊記;地理考察;喀斯特;岩溶;自然地理', '明', '全中國', NULL, '廣輿圖;天工開物', '中央研究院', NULL, '2026-07-31', 'UNCLEAR', '漢籍全文資料庫需申請帳號密碼', '已收錄 metadata', NULL, '明代地理考察之第一手記錄', 'CN') ON CONFLICT (id) DO NOTHING;

SELECT setval('sources_id_seq', 932) WHERE NOT EXISTS (SELECT 1 FROM sources WHERE id = 932);
SELECT setval('sources_id_seq', (SELECT COALESCE(MAX(id), 0) FROM sources));

-- === 3. 史料←→資料類型 ===
INSERT INTO source_materials (source_id, material_type_id) VALUES
  (901, 1),
  (902, 1),
  (903, 1),
  (904, 1),
  (905, 1),
  (905, 3),
  (906, 1),
  (907, 1),
  (908, 1),
  (909, 3),
  (909, 1),
  (910, 3),
  (911, 3),
  (912, 1),
  (913, 1),
  (914, 1),
  (914, 3),
  (915, 1),
  (916, 1),
  (917, 2),
  (918, 1),
  (918, 2),
  (919, 1),
  (920, 2),
  (920, 1),
  (921, 2),
  (921, 1),
  (922, 2),
  (922, 1),
  (923, 2),
  (923, 1),
  (924, 2),
  (924, 1),
  (925, 1),
  (926, 1),
  (926, 2),
  (927, 1),
  (928, 1),
  (929, 1),
  (930, 1),
  (931, 1),
  (931, 2),
  (932, 1)
ON CONFLICT DO NOTHING;

-- === 4. 史料←→來源機構 ===
INSERT INTO source_institutions (source_id, institution_id, role) VALUES
  (901, 7, 'source'),
  (901, 7, 'publisher'),
  (902, 7, 'source'),
  (902, 7, 'publisher'),
  (903, 7, 'source'),
  (903, 7, 'publisher'),
  (904, 7, 'source'),
  (904, 7, 'publisher'),
  (905, 7, 'source'),
  (905, 7, 'publisher'),
  (906, 7, 'source'),
  (906, 7, 'publisher'),
  (907, 7, 'source'),
  (907, 7, 'publisher'),
  (908, 7, 'source'),
  (908, 7, 'publisher'),
  (909, 7, 'source'),
  (909, 7, 'publisher'),
  (910, 7, 'source'),
  (910, 7, 'publisher'),
  (911, 137, 'source'),
  (911, 137, 'publisher'),
  (912, 137, 'source'),
  (912, 137, 'publisher'),
  (913, 138, 'source'),
  (913, 138, 'publisher'),
  (914, 7, 'source'),
  (914, 7, 'publisher'),
  (915, 7, 'source'),
  (915, 7, 'publisher'),
  (916, 7, 'source'),
  (916, 7, 'publisher'),
  (917, 136, 'source'),
  (917, 136, 'publisher'),
  (918, 24, 'source'),
  (918, 24, 'publisher'),
  (919, 7, 'source'),
  (919, 7, 'publisher'),
  (920, 136, 'source'),
  (920, 136, 'publisher'),
  (921, 196, 'source'),
  (921, 196, 'publisher'),
  (922, 164, 'source'),
  (922, 164, 'publisher'),
  (923, 187, 'source'),
  (923, 187, 'publisher'),
  (924, 188, 'source'),
  (924, 188, 'publisher'),
  (925, 7, 'source'),
  (925, 7, 'publisher'),
ON CONFLICT DO NOTHING;
INSERT INTO source_institutions (source_id, institution_id, role) VALUES
  (926, 7, 'source'),
  (926, 7, 'publisher'),
  (927, 7, 'source'),
  (927, 7, 'publisher'),
  (928, 7, 'source'),
  (928, 7, 'publisher'),
  (929, 7, 'source'),
  (929, 7, 'publisher'),
  (930, 7, 'source'),
  (930, 7, 'publisher'),
  (931, 24, 'source'),
  (931, 24, 'publisher'),
  (932, 7, 'source'),
  (932, 7, 'publisher')
ON CONFLICT DO NOTHING;

-- === 完成 ===
