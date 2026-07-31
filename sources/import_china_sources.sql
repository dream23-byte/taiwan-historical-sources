-- ============================================================
-- 東亞歷史權威史料庫 — 中國史料匯入 SQL（增量模式）
-- 由 Import-ChinaToSupabase.ps1 v2 自動產生
-- ============================================================

-- === 1. 來源機構（僅新增者） ===

SELECT setval('institutions_id_seq', 195);

-- === 2. 主要史料 ===
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (883, '汪大淵《島夷誌略》（元代海外貿易總志）', '汪大淵', '元至正九年（1349）', 21, 7, '中央研究院', 'CN-ST-YUAN-DAOYI-01', 'https://hanchi.ihp.sinica.edu.tw/', 'zh', '元末汪大淵兩次附舶遠航，周遊南洋、印度洋百餘國港口，《島夷誌略》成於至正九年（1349），逐國記其道里、物產、貨價、風俗與互市情形，為元代海外貿易與亞洲地理交通最重要之第一手漢文總志', '島夷誌略;汪大淵;海外貿易;南洋;印度洋', '元', '東南亞;印度洋沿岸', NULL, '馬可波羅遊記;周達觀真臘風土記;元市舶司制度', '中央研究院', NULL, '2026-07-31', 'UNCLEAR', '漢籍全文資料庫需申請帳號密碼', '已收錄 metadata', NULL, '元代海外貿易文獻之冠', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (884, '周達觀《真臘風土記》（吳哥王朝）', '周達觀', '元元貞二年（1296）', 21, 7, '中央研究院', 'CN-ST-YUAN-ZHENLA-01', 'https://hanchi.ihp.sinica.edu.tw/', 'zh', '元貞元年（1295）元廷遣使招諭真臘（今柬埔寨），周達觀隨行，居吳哥一年，歸撰《真臘風土記》記其城郭、宮室、風俗、物產、貿易凡四十則，為現存唯一記吳哥王朝盛況之當代漢文文獻，亦是元代外交與東南亞交通之實錄', '真臘風土記;周達觀;吳哥;柬埔寨;元朝外交', '元', '柬埔寨（吳哥）', NULL, '島夷誌略;元與安南、佔城、緬甸關係史料', '中央研究院', NULL, '2026-07-31', 'UNCLEAR', '漢籍全文資料庫需申請帳號密碼', '已收錄 metadata', NULL, '記吳哥王朝之唯一當代漢籍', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (885, '鄂多立克《東遊錄》（義大利教士東方行記）', '鄂多立克（Odoric of Pordenone）', '元（1318–1330）', 21, 7, '中華書局', 'CN-ST-YUAN-ODORIC-01', NULL, 'zh', '義大利方濟各會修士鄂多立克約1318年東行，經印度、南洋至廣州，歷泉州、福州、杭州，北抵大都，留居三載後西歸，口述成《東遊錄》，記元朝都會繁盛與風俗，與馬可波羅並為歐洲人親歷元朝之最重要行記，何高濟中譯本收於《中外關係史名著譯叢》', '鄂多立克;東遊錄;方濟各會;泉州;大都', '元', '廣州;泉州;杭州;大都', '何高濟（中譯）', '馬可波羅遊記;也里可溫（景教／天主教）', '中華書局', NULL, '2026-07-31', 'ARR', '《中外關係史名著譯叢》出版品', '已收錄 metadata', NULL, '繼馬可波羅後最重要歐洲人東方行記', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (886, '《大德南海志》殘卷（元初廣州海外貿易）', '陳大震', '元大德八年（1304）', 21, 2, '中華書局', 'CN-ST-YUAN-NANHAI-01', NULL, 'zh', '元大德八年陳大震纂《南海志》（廣州府志），今僅存卷六至卷七殘卷，詳列番國名稱（西至今波斯、阿拉伯、非洲諸地）、市舶物貨與廣州港市舶抽分，為元代廣州海外貿易與諸蕃國地名最集中之早期記載', '大德南海志;南海志;廣州;市舶;番國', '元', '廣州', NULL, '元市舶司制度;島夷誌略', '中華書局', NULL, '2026-07-31', 'ARR', '《宋元方志叢刊》點校本已出版', '已收錄 metadata', NULL, '元代廣州海外交通之珍貴殘卷', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (887, '元代市舶司制度與海外貿易則例', '脫脫／王元恭', '元（1277–1349）', 21, 1, '中央研究院', 'CN-ST-YUAN-SHIJISI-01', 'https://hanchi.ihp.sinica.edu.tw/', 'zh', '元承宋制置市舶司於泉州、慶元（寧波）、廣州、杭州、澉浦諸港，後定制三司，《元史·食貨志·市舶》載抽分則例與舶商綱首制度，《至正四明續志》載慶元市舶物貨細目，為元代海外貿易管理體制之官方系統記載', '市舶司;抽分;慶元;泉州;海外貿易制度', '元', '泉州;慶元;廣州;杭州', NULL, '元史;汪大淵島夷誌略;新安沉船', '中央研究院', NULL, '2026-07-31', 'UNCLEAR', '漢籍全文資料庫需申請帳號密碼', '已收錄 metadata', NULL, '元代海上貿易管理制度之核心', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (888, '元與安南、佔城、緬甸（蒲甘）關係史料', '脫脫／黎崱', '元（1257–1300）', 21, 1, '中央研究院', 'CN-ST-YUAN-ANNAM-01', 'https://hanchi.ihp.sinica.edu.tw/', 'zh', '元世祖朝三度征安南（陳朝）、遣兵佔城、征緬甸蒲甘王朝，後罷兵復通朝貢；《元史·安南傳》《占城傳》《緬傳》及越南《大越史記全書》載其事，為元代中國與中南半島諸國戰爭、朝貢與貿易往來之系統文獻', '元越關係;佔城;蒲甘;緬甸;朝貢', '元', '越南;柬埔寨;緬甸', NULL, '元朝與高麗、日本關係史料;真臘風土記', '中央研究院', NULL, '2026-07-31', 'UNCLEAR', '漢籍全文資料庫需申請帳號密碼', '已收錄 metadata', NULL, '元代經略中南半島之關鍵史料', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (889, '蒲壽庚與泉州蕃商集團', '泉州海外交通史博物館', '宋末元初（1276–）', 21, 7, '泉州海外交通史博物館', 'CN-ST-YUAN-PUSHOUGENG-01', NULL, 'zh', '宋末元初泉州阿拉伯裔蒲壽庚世掌市舶三十載，降元後家族壟斷泉州海外貿易，元代泉州聚落蕃商（阿拉伯、波斯、印度、占城人）蕃坊蕃學林立，蒲氏家譜、碑刻與《島夷誌略》《癸辛雜識》等載其事迹，為元代蕃商經營中國貿易之縮影', '蒲壽庚;泉州;蕃商;市舶司;海上絲路', '元', '福建泉州', NULL, '泉州海外交通史跡（伊斯蘭石刻）;島夷誌略', '泉州海外交通史博物館', NULL, '2026-07-31', 'ARR', '館藏數位影像依館方規定', '已收錄 metadata', NULL, '元代泉州蕃商集團之核心人物', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (890, '也里可溫（景教／天主教）在元朝史料', '中央研究院', '元（1289–1368）', 21, 7, '中央研究院', 'CN-ST-YUAN-ERKEWEN-01', 'https://hanchi.ihp.sinica.edu.tw/', 'zh', '「也里可溫」為元代對景教（基督教聶斯脫里派）與天主教之總稱，至元二十六年（1289）設崇福司掌其事；義大利方濟各會士孟高維諾奉教皇命抵大都，1307年建汗八里總主教區並譯《新約》為蒙古文；房山十字寺與泉州景教石刻為存世遺物，為元朝與歐洲宗教文化往來之見證', '也里可溫;景教;天主教;孟高維諾;崇福司', '元', '大都;泉州', NULL, '鄂多立克東遊錄;泉州穆斯林石刻', '中央研究院', NULL, '2026-07-31', 'UNCLEAR', '漢籍全文資料庫需申請帳號密碼', '已收錄 metadata', NULL, '元代與歐洲宗教交流之見證', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (891, '《錄鬼簿》（鍾嗣成，元雜劇作家目錄）', '鍾嗣成', '元至順元年（1330）', 21, 7, '中央研究院', 'CN-ST-YUAN-LUGUIBU-01', 'https://hanchi.ihp.sinica.edu.tw/', 'zh', '元鍾嗣成撰《錄鬼簿》二卷，著錄元代雜劇、散曲作家一百五十二人、劇目四百五十餘種，各繫小傳與《凌波仙》弔詞，為元雜劇最系統之作家作品目錄，亦是中國戲曲史之開山著作，續編《錄鬼簿續編》並存', '錄鬼簿;鍾嗣成;元雜劇;曲目;作家傳記', '元', '全中國', NULL, '元雜劇（關漢卿、王實甫等）;元曲選', '中央研究院', NULL, '2026-07-31', 'UNCLEAR', '漢籍全文資料庫需申請帳號密碼', '已收錄 metadata', NULL, '元雜劇作家作品之百科', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (892, '《元曲選》（臧懋循）與《元刊雜劇三十種》', '臧懋循', '明（1615）', 21, 7, '中央研究院', 'CN-ST-YUAN-YUANQUXUAN-01', 'https://hanchi.ihp.sinica.edu.tw/', 'zh', '明臧懋循編《元曲選》（《元人百種曲》）收元雜劇百種，為通行最廣之元雜劇選本；《元刊雜劇三十種》為今存最早元雜劇刊本，收關漢卿《單刀會》、馬致遠《陳摶高臥》等三十種，兩者合觀可校元雜劇文本之全貌，為元曲文獻之雙璧', '元曲選;臧懋循;元刊雜劇三十種;雜劇選本;元人百種曲', '元', '全中國', NULL, '錄鬼簿;元雜劇（關漢卿、王實甫等）', '中央研究院', NULL, '2026-07-31', 'UNCLEAR', '漢籍全文資料庫需申請帳號密碼', '已收錄 metadata', NULL, '元雜劇文本之兩大淵藪', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (893, '《全元散曲》（隋樹森輯校）', '隋樹森（輯）', '元（13–14世紀）', 21, 7, '中華書局', 'CN-ST-YUAN-SANQU-01', NULL, 'zh', '隋樹森輯校《全元散曲》匯收元代散曲作家二百一十三人、小令三千八百餘首、套數四百餘套，關漢卿、馬致遠、張可久、喬吉等作品網羅殆盡，附作者小傳與本事，為元散曲（雜曲、小令、套數）之總集，元曲研究之基本文獻', '全元散曲;隋樹森;散曲;小令;套數', '元', '全中國', NULL, '太平樂府;中原音韻', '中華書局', NULL, '2026-07-31', 'ARR', '中華書局出版品', '已收錄 metadata', NULL, '元散曲之全編總集', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (894, '《朝野新聲太平樂府》（楊朝英編散曲選）', '楊朝英', '元（14世紀）', 21, 7, '中央研究院', 'CN-ST-YUAN-TAIPINGYUE-01', 'https://hanchi.ihp.sinica.edu.tw/', 'zh', '元楊朝英編《朝野新聲太平樂府》九卷，收關漢卿、馬致遠、張可久等八十餘家小令套數，與所編《陽春白雪》並稱元散曲兩大選本，《太平樂府》尤以小令為富，保存大量元人曲詞與當日唱曲文本', '太平樂府;楊朝英;散曲;小令;選本', '元', '全中國', NULL, '全元散曲;陽春白雪;中原音韻', '中央研究院', NULL, '2026-07-31', 'UNCLEAR', '漢籍全文資料庫需申請帳號密碼', '已收錄 metadata', NULL, '元散曲兩大選本之一', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (895, '《中原音韻》（周德清，北曲聲韻）', '周德清', '元泰定元年（1324）', 21, 7, '中央研究院', 'CN-ST-YUAN-ZHONGYUANYINYUN-01', 'https://hanchi.ihp.sinica.edu.tw/', 'zh', '元周德清撰《中原音韻》二卷，依北曲用韻分十九韻部，並論「正語作詞起例」「作詞十法」與務頭、宮調，為北曲唱作之聲韻規範，亦是中國音韻史上第一部北音韻書，元代語音之直接記錄，影響明清曲韻至深', '中原音韻;周德清;北曲;音韻;十九韻部', '元', '全中國', NULL, '太平樂府;全元散曲;天寶遺事諸宮調', '中央研究院', NULL, '2026-07-31', 'UNCLEAR', '漢籍全文資料庫需申請帳號密碼', '已收錄 metadata', NULL, '北曲用韻之準繩', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (896, '關漢卿《竇娥冤》、王實甫《西廂記》等元雜劇代表作', '關漢卿／王實甫', '元（13世紀）', 21, 7, '中央研究院', 'CN-ST-YUAN-DOUEYUAN-01', 'https://hanchi.ihp.sinica.edu.tw/', 'zh', '關漢卿作雜劇六十餘種，《竇娥冤》《單刀會》《救風塵》為傑作；王實甫《西廂記》五本二十一折為北曲雜劇之冠；與白樸《梧桐雨》、馬致遠《漢宮秋》、鄭光祖《倩女幽魂》並稱元曲四大家，其劇本唱詞兼文學與雜曲藝術之極致，元代戲曲文學之代表', '竇娥冤;西廂記;關漢卿;王實甫;元曲四大家', '元', '全中國', NULL, '元雜劇（關漢卿、王實甫等）;錄鬼簿;元曲選', '中央研究院', NULL, '2026-07-31', 'UNCLEAR', '漢籍全文資料庫需申請帳號密碼', '已收錄 metadata', NULL, '元雜劇文學之顛峰代表作', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (897, '《青樓集》（夏庭芝，雜劇藝人史料）', '夏庭芝', '元至正十五年（1355）', 21, 7, '中央研究院', 'CN-ST-YUAN-QINGLOUJI-01', 'https://hanchi.ihp.sinica.edu.tw/', 'zh', '元夏庭芝撰《青樓集》一卷，記大都、金陵、維揚、武昌等地雜劇女藝人一百一十餘人事迹，兼及男演員、曲家與當時演劇、唱曲情形，為元代戲曲演藝界唯一之專門記載，中國演劇史之珍貴史料', '青樓集;夏庭芝;雜劇藝人;演劇;倡優', '元', '大都;金陵;維揚;武昌', NULL, '錄鬼簿;洪洞水神廟元雜劇壁畫', '中央研究院', NULL, '2026-07-31', 'UNCLEAR', '漢籍全文資料庫需申請帳號密碼', '已收錄 metadata', NULL, '元代演劇界之唯一專記', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (898, '《元文類》（蘇天爵）與《元詩選》（顧嗣立）', '蘇天爵／顧嗣立', '元（1335）／清（18世紀）', 21, 7, '中央研究院', 'CN-ST-YUAN-YUANWENLEI-01', 'https://hanchi.ihp.sinica.edu.tw/', 'zh', '元蘇天爵編《元文類》七十卷，錄元初至延祐間詩文八百餘篇；清顧嗣立編《元詩選》，收元人詩集二千六百餘家，兩書為元代詩文之總彙，保存虞集、揭傒斯、薩都剌、楊維楨、倪瓚等元人文學與題詠，元詩元文研究之基本文獻', '元文類;元詩選;蘇天爵;顧嗣立;元代詩文', '元', '全中國', NULL, '遺山先生文集;中州集', '中央研究院', NULL, '2026-07-31', 'UNCLEAR', '漢籍全文資料庫需申請帳號密碼', '已收錄 metadata', NULL, '元代詩文之總彙', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (899, '高明《琵琶記》（南戲之祖）', '高明', '元末（14世紀）', 21, 7, '中央研究院', 'CN-ST-YUAN-PIPAJI-01', 'https://hanchi.ihp.sinica.edu.tw/', 'zh', '元末高明撰《琵琶記》四十二齣，以南曲演蔡伯喈、趙五娘故事，文詞精工、關目完整，號稱「南戲之祖」，標誌南戲（戲文）由民間向文人化成熟之轉折，為元明南曲系統最高成就，明清諸腔劇種多取資於此', '琵琶記;高明;南戲;戲文;南曲', '元', '全中國', NULL, '元雜劇（關漢卿、王實甫等）;元曲選', '中央研究院', NULL, '2026-07-31', 'UNCLEAR', '漢籍全文資料庫需申請帳號密碼', '已收錄 metadata', NULL, '南戲成熟之里程碑', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (900, '《天寶遺事諸宮調》（王伯成，說唱曲藝）', '王伯成', '元（13世紀）', 21, 7, '中央研究院', 'CN-ST-YUAN-ZHUGONGDIAO-01', 'https://hanchi.ihp.sinica.edu.tw/', 'zh', '元王伯成作《天寶遺事諸宮調》，以諸宮調（說唱體）演唐明皇、楊貴妃故事，今存殘曲六十餘套，為元代諸宮調唯一傳世之作，上承金《董西廂》，下啟北曲雜劇，為金元說唱與北曲聲腔淵源之關鍵文獻', '天寶遺事諸宮調;王伯成;諸宮調;說唱;北曲', '元', '全中國', NULL, '中原音韻;琵琶記;元雜劇', '中央研究院', NULL, '2026-07-31', 'UNCLEAR', '漢籍全文資料庫需申請帳號密碼', '已收錄 metadata', NULL, '元諸宮調之唯一傳世之作', 'CN') ON CONFLICT (id) DO NOTHING;

SELECT setval('sources_id_seq', 900) WHERE NOT EXISTS (SELECT 1 FROM sources WHERE id = 900);
SELECT setval('sources_id_seq', (SELECT COALESCE(MAX(id), 0) FROM sources));

-- === 3. 史料←→資料類型 ===
INSERT INTO source_materials (source_id, material_type_id) VALUES
  (883, 1),
  (884, 1),
  (885, 1),
  (886, 1),
  (887, 1),
  (888, 1),
  (889, 1),
  (889, 2),
  (890, 1),
  (891, 1),
  (892, 1),
  (893, 1),
  (894, 1),
  (895, 1),
  (896, 1),
  (897, 1),
  (898, 1),
  (899, 1),
  (900, 1)
ON CONFLICT DO NOTHING;

-- === 4. 史料←→來源機構 ===
INSERT INTO source_institutions (source_id, institution_id, role) VALUES
  (883, 7, 'source'),
  (883, 7, 'publisher'),
  (884, 7, 'source'),
  (884, 7, 'publisher'),
  (885, 138, 'source'),
  (885, 138, 'publisher'),
  (886, 138, 'source'),
  (886, 138, 'publisher'),
  (887, 7, 'source'),
  (887, 7, 'publisher'),
  (888, 7, 'source'),
  (888, 7, 'publisher'),
  (889, 191, 'source'),
  (889, 191, 'publisher'),
  (890, 7, 'source'),
  (890, 7, 'publisher'),
  (891, 7, 'source'),
  (891, 7, 'publisher'),
  (892, 7, 'source'),
  (892, 7, 'publisher'),
  (893, 138, 'source'),
  (893, 138, 'publisher'),
  (894, 7, 'source'),
  (894, 7, 'publisher'),
  (895, 7, 'source'),
  (895, 7, 'publisher'),
  (896, 7, 'source'),
  (896, 7, 'publisher'),
  (897, 7, 'source'),
  (897, 7, 'publisher'),
  (898, 7, 'source'),
  (898, 7, 'publisher'),
  (899, 7, 'source'),
  (899, 7, 'publisher'),
  (900, 7, 'source'),
  (900, 7, 'publisher')
ON CONFLICT DO NOTHING;

-- === 完成 ===
