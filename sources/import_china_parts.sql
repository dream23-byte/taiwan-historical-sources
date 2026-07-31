-- ============================================================
-- 東亞歷史權威史料庫 — 中國史料匯入 SQL
-- 由 Import-ChinaToSupabase.ps1 v1 自動產生
-- ============================================================
-- === 1. 來源機構（僅新增者） ===
INSERT INTO institutions (id, name_zh) VALUES (127, 'University of Pittsburgh') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) VALUES (128, '二里頭夏都遺址博物館') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) VALUES (129, '三星堆博物館') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) VALUES (130, '上海古籍出版社') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) VALUES (131, '上海博物館') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) VALUES (132, '中國文字博物館') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) VALUES (133, '中國社會科學院') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) VALUES (134, '中國社會科學院考古研究所') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) VALUES (135, '中國社會科學院圖書館') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) VALUES (136, '中國國家博物館') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) VALUES (137, '中國國家圖書館') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) VALUES (138, '中華書局') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) VALUES (139, '匹茲堡大學') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) VALUES (140, '文物出版社') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) VALUES (141, '北京大學') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) VALUES (142, '周原博物館') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) VALUES (143, '河北省文物考古研究院') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) VALUES (144, '香港中文大學') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) VALUES (145, '殷墟博物館') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) VALUES (146, '清華大學') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) VALUES (147, '敦煌研究院') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) VALUES (148, '湖北省博物館') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) VALUES (149, '遼寧省文物考古研究院') ON CONFLICT (name_zh) DO NOTHING;

SELECT setval('institutions_id_seq', 149);
-- === 2. 主要史料 ===
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) VALUES (517, '中國考古網', '中國社會科學院考古研究所', '2002', NULL, 7, '中國社會科學院考古研究所', 'CN-ARCHWEB-01', 'http://kaogu.cssn.cn/', 'zh', '中國社會科學院考古研究所官方學科門戶網站，創辦於2002年，含考古新聞、學術動態、研究成果、田野報導等完整資訊，為中國考古學最權威之綜合性資訊平臺', '考古;門戶網站;中國考古學', '舊石器時代–明清', '全中國', NULL, NULL, '中國社會科學院考古研究所', NULL, '2026-07-30', 'UNCLEAR', '網站公開瀏覽；部分學術論文需授權', '已收錄 metadata', NULL, '中國考古學最重要之學科門戶網站', 'CN');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) VALUES (518, '故宮博物院數位文物庫', '國立故宮博物院', '2021', NULL, 7, '國立故宮博物院', 'CN-NPM-DIGITAL-01', 'https://digitalarchive.npm.gov.tw/', 'zh', '故宮博物院典藏資料檢索系統，收錄器物、書畫、織品等70萬件文物詮釋資料，涵蓋新石器時代至今，提供41萬幅開放圖檔（CC0/CC BY）', '故宮;文物;數位典藏;博物館', '新石器時代–明清', '中國（含臺北故宮）', NULL, '故宮典藏資料檢索', '國立故宮博物院', NULL, '2026-07-30', 'CC0;CC-BY', '低階圖檔CC0、中階圖檔CC BY，無須申請不限用途', '已收錄 metadata', NULL, '藏品時間跨度8000年，為全球最重要之中國藝術文物數位典藏', 'CN');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) VALUES (519, '中國國家博物館數字展厅', '中國國家博物館', '2020', NULL, 7, '中國國家博物館', 'CN-NMC-VR-01', 'https://www.chnmuseum.cn/portals/0/web/vr/', 'zh', '中國國家博物館線上虛擬展厅，77個專題展廳VR全景，含「古代中國」「玉出紅山」「證古澤今—甲骨文」等史前至秦漢專題展', '博物館;VR;數位展廳;考古', '舊石器時代–明清', '全中國', NULL, '中國國家博物館', '中國國家博物館', NULL, '2026-07-30', 'UNCLEAR', '網站公開瀏覽', '已收錄 metadata', NULL, '中國國家博物館藏品143萬件，為全球最大之綜合性博物館', 'CN');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) VALUES (520, '數字敦煌資源庫', '敦煌研究院', '2016', NULL, 7, '敦煌研究院', 'CN-DHA-DIGITAL-01', 'https://www.e-dunhuang.com/', 'zh;en', '敦煌研究院「數字敦煌」資源庫，全球免費共享莫高窟30個精品洞窟高清數位圖像及全景漫遊，含壁畫數位化與3D彩塑重建', '敦煌;石窟;壁畫;數位化', '北魏–元', '甘肅敦煌', NULL, '數字藏經洞', '敦煌研究院', NULL, '2026-07-30', 'UNCLEAR', '資源庫全球免費共享', '已收錄 metadata', NULL, '聯合國世界文化遺產，不可移動文物數位化典範', 'CN');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) VALUES (521, '數字藏經洞數據庫', '敦煌研究院', '2025', NULL, 7, '敦煌研究院', 'CN-DHA-CAVE17-01', 'https://cave17.e-dunhuang.com/', 'zh;en', '敦煌研究院「數字藏經洞」數據庫，集約國內外機構所藏敦煌莫高窟藏經洞出土約9,900卷經卷等文化財之數位資源', '敦煌;藏經洞;寫本;佛教', '唐–元', '甘肅敦煌', NULL, '數字敦煌資源庫', '敦煌研究院', NULL, '2026-07-30', 'UNCLEAR', '數據庫公開瀏覽', '已收錄 metadata', NULL, '2025年5月正式公開', 'CN');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) VALUES (522, '中國考古數據庫（CADB）', 'Pittsburgh大學', '2021', NULL, 7, '匹茲堡大學', 'CN-CADB-01', 'http://www.cadb.pitt.edu/', 'en', 'China Archaeological Database（CADB），收錄69,369處考古遺址資訊，含新石器時代16,286處、青銅時代12,263處，涵蓋8000 BCE–220 CE', '考古;遺址;數據庫;GIS', '新石器時代–漢', '全中國', NULL, 'Comparative Archaeology Database', 'University of Pittsburgh', NULL, '2026-07-30', 'CC-BY', '開放獲取學術數據', '已收錄 metadata', NULL, '國際合作開放考古數據庫', 'CN');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) VALUES (523, '文物考古知識服務平臺', '文物出版社', '2025', NULL, 7, '文物出版社', 'CN-WENWU-KP-01', 'https://w.libvpn.cass.cn/', 'zh', '文物出版社出版之專業知識服務平臺，含數位圖書館（4,000+冊考古發掘報告）、電子期刊庫（《文物》等）、學術圖片庫（20萬張圖片）、圖表資料庫', '考古;文物;發掘報告;博物館', '舊石器時代–明清', '全中國', NULL, '中國社會科學院圖書館', '文物出版社', '中國社會科學院圖書館', '2026-07-30', 'ARR', '需社科院授權或購買使用', '已收錄 metadata', NULL, '收錄1950年至今之核心考古資源', 'CN');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) VALUES (524, '漢達文庫', '香港中文大學中國文化研究所', '2000', 8, 7, '香港中文大學', 'CN-HANDA-01', 'https://www.chant.org/', 'zh', '漢達文庫包含甲骨文、竹簡帛書、金文、先秦兩漢、魏晉南北朝等七個出土文獻資料庫，以《殷周金文集成釋文》為據收錄銅器數據與拓本', '甲骨文;金文;簡帛;出土文獻', '商–南北朝', '全中國', NULL, NULL, '香港中文大學', NULL, '2026-07-30', 'ARR', '需授權使用', '已收錄 metadata', NULL, '先秦秦漢出土文獻研究必備資料庫', 'CN');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) VALUES (525, '中華經典古籍庫', '中華書局', '2015', NULL, 7, '中華書局', 'CN-GUJI-ZHSJ-01', 'https://publish.ancientbooks.cn/', 'zh', '中華書局出版之整理本古籍資料庫，含二十四史、通鑑、新編諸子集成、清人十三經注疏等，為考古研究必備之傳世文獻基礎', '古籍;經史子集;傳世文獻', '先秦–明清', '全中國', NULL, NULL, '中華書局', NULL, '2026-07-30', 'ARR', '需授權使用', '已收錄 metadata', NULL, '連接傳世文獻與出土材料之關鍵資料庫', 'CN');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) VALUES (526, '北京大學考古文博學院電子資源', '北京大學考古文博學院', '2024', NULL, 7, '北京大學', 'CN-PKU-ARCH-01', 'https://archaeology.pku.edu.cn/', 'zh', '北京大學考古文博學院官方網站，提供考古學常用中外文電子資源概覽，含90個資料庫介紹，涵蓋考古發掘報告、研究論集、科技考古等', '考古;電子資源;學術資料庫', '舊石器時代–明清', '全中國', NULL, NULL, '北京大學', NULL, '2026-07-30', 'UNCLEAR', '部分資源需北大校園網授權', '已收錄 metadata', NULL, '中國頂尖考古學系之學術資源整合', 'CN');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) VALUES (527, '中國國家博物館藏品總目', '中國國家博物館', '2021', NULL, 7, '中國國家博物館', 'CN-NMC-COL-01', 'https://www.chnmuseum.cn/', 'zh', '中國國家博物館藏品檢索系統，143萬件藏品涵蓋古代文物、近現當代文物，含甲骨、青銅器、瓷器、玉器、錢幣、碑帖拓本等', '博物館;藏品;文物', '舊石器時代–現代', '全中國', NULL, '中國國家博物館數字展厅', '中國國家博物館', NULL, '2026-07-30', 'UNCLEAR', '網站公開瀏覽', '已收錄 metadata', NULL, '代表國家收藏中華文化代表性物證之最高殿堂', 'CN');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) VALUES (528, '故宮博物院藏品總目', '國立故宮博物院', '2010', NULL, 7, '國立故宮博物院', 'CN-NPM-COL-01', 'https://www.npm.gov.tw/', 'zh', '故宮博物院官方網站典藏精選，含器物、書畫、古籍、檔案文獻、輿圖等分類檢索，玉器、銅器、陶瓷器等涵蓋新石器時代至明清', '故宮;文物;藝術品;博物館', '新石器時代–明清', '中國（含臺北故宮）', NULL, '故宮博物院數位文物庫', '國立故宮博物院', NULL, '2026-07-30', 'CC0;CC-BY', '參見故宮數位文物庫授權規範', '已收錄 metadata', NULL, '全球最重要之中國藝術博物館之一', 'CN');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) VALUES (529, '中國社會科學院考古研究所數據庫', '中國社會科學院考古研究所', '2020', NULL, 7, '中國社會科學院考古研究所', 'CN-CASS-ARCH-01', 'http://kaogu.cssn.cn/', 'zh;en', '社科院考古所數據庫整合平臺，提供考古研究成果、田野發掘數據、學術出版物、專題研究等資訊，為中國考古學研究核心機構', '考古;社科院;學術研究', '舊石器時代–明清', '全中國', NULL, '中國考古網', '中國社會科學院', NULL, '2026-07-30', 'UNCLEAR', '網站公開瀏覽', '已收錄 metadata', NULL, '中國考古學最高學術研究機構', 'CN');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) VALUES (530, '國家哲學社會科學文獻中心', '中國社會科學院', '2021', NULL, 1, '中國社會科學院', 'CN-NCSSD-01', 'https://www.ncpssd.org/', 'zh', '國家哲學社會科學文獻中心，收錄2,000萬+篇哲學社會科學文獻，含期刊、古籍、外文學術資源，考古與歷史學研究重要全文資料庫', '學術文獻;期刊;全文資料庫', '舊石器時代–現代', '全中國', NULL, NULL, '中國社會科學院', NULL, '2026-07-30', 'UNCLEAR', '免費註冊使用，部分文獻有限制', '已收錄 metadata', NULL, '中國最大之開放獲取哲學社會科學文獻平臺', 'CN');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) VALUES (531, '殷墟博物館數字展廳', '殷墟博物館', '2023', 8, 7, '殷墟博物館', 'CN-YINXU-01', 'https://www.anyangyinxu.cn/', 'zh', '殷墟博物館數位展廳，展示商代晚期都城遺址考古成果，含甲骨文、青銅器、玉器、車馬坑等出土文物數位展示', '殷墟;甲骨文;商代;考古', '商', '河南安陽', NULL, NULL, '殷墟博物館', NULL, '2026-07-30', 'UNCLEAR', '網站公開瀏覽', '已收錄 metadata', NULL, '世界文化遺產，中國考古學重要里程碑', 'CN');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) VALUES (532, '良渚博物院數字展廳', '良渚博物院', '2021', NULL, 7, '良渚博物院', 'CN-LIANGZHU-01', 'https://www.lzmuseum.cn/', 'zh', '良渚博物院數位展廳，展示良渚文化（距今5300-4300年）考古成果，含玉器、陶器、水利系統、古城遺址等數位資源', '良渚;新石器時代;玉器;考古', '新石器時代', '浙江杭州', NULL, NULL, '良渚博物院', NULL, '2026-07-30', 'UNCLEAR', '網站公開瀏覽', '已收錄 metadata', '良渚博物院', '世界文化遺產，中華五千年文明實證', 'CN');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) VALUES (533, '紅山文化數字博物館', '遼寧省文物考古研究院', '2022', NULL, 7, '遼寧省文物考古研究院', 'CN-HONGSHAN-01', 'https://www.lnkgw.com/', 'zh', '紅山文化數位博物館，展示遼西地區紅山文化（距今6500-5000年）考古成果，含牛河梁遺址、玉豬龍等重要文物數位資源', '紅山文化;新石器時代;玉器;考古', '新石器時代', '遼寧內蒙古', NULL, '玉出紅山—紅山文化考古成就展（中國國家博物館）', '遼寧省文物考古研究院', NULL, '2026-07-30', 'UNCLEAR', '網站公開瀏覽', '已收錄 metadata', NULL, '中華文明起源研究關鍵文化', 'CN');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) VALUES (534, '三星堆博物館數字展廳', '三星堆博物館', '2022', NULL, 7, '三星堆博物館', 'CN-SANXINGDUI-01', 'https://www.sxd.cn/', 'zh', '三星堆博物館數位展廳，展示三星堆文化（距今4800-2600年）考古發掘成果，含青銅神樹、黃金面具、象牙等出土文物數位資源', '三星堆;古蜀;青銅器;考古', '新石器時代–商周', '四川廣漢', NULL, NULL, '三星堆博物館', NULL, '2026-07-30', 'UNCLEAR', '網站公開瀏覽', '已收錄 metadata', NULL, '古蜀文明最重要之考古發現', 'CN');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) VALUES (535, '全球漢籍影像開放集成系統', '北京大學', '2023', NULL, 7, '北京大學', 'CN-GUJI-OPEN-01', 'https://guji.wenxianxue.cn/', 'zh', '全球漢籍影像開放集成系統，含考古、簡帛、石刻、西南文物、佛教造像、碑帖、善本古籍等12類數位藏品，支援跨庫查詢', '古籍;漢籍;數位化;開放獲取', '先秦–明清', '全球', NULL, NULL, '北京大學', NULL, '2026-07-30', 'UNCLEAR', '網站公開瀏覽', '已收錄 metadata', NULL, '全球漢籍影像開放整合之重要平臺', 'CN');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) VALUES (536, '中國國家圖書館古籍數位資源', '中國國家圖書館', '2010', NULL, 1, '中國國家圖書館', 'CN-NLC-GUJI-01', 'https://www.nlc.cn/', 'zh', '中國國家圖書館古籍數位資源，含古籍特藏、甲骨文拓片、敦煌遺書、碑帖拓本、年畫、輿圖等數位館藏，是中國最大之古籍數位典藏', '古籍;國家圖書館;數位典藏', '先秦–明清', '全中國', NULL, NULL, '中國國家圖書館', NULL, '2026-07-30', 'UNCLEAR', '部分資源需註冊登入', '已收錄 metadata', NULL, '全球最大之中文古籍收藏機構', 'CN');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) VALUES (537, '尚古匯典·典籍整理文獻數據庫', '上海古籍出版社', '2022', NULL, 1, '上海古籍出版社', 'CN-SHANGUDIAN-01', 'https://www.shanggu.com/', 'zh', '上海古籍出版社整理本古籍資料庫，匯聚歷代金石著錄、書目題跋、經注疏禮制考證，涵蓋金石考古、古文字訓詁等研究關聯主題', '古籍;金石;考古;文獻', '先秦–明清', '全中國', NULL, NULL, '上海古籍出版社', NULL, '2026-07-30', 'ARR', '需授權使用', '已收錄 metadata', NULL, '出土文獻與傳世文獻互證重要資源', 'CN');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) VALUES (538, '殷周金文暨青銅器資料庫', '中央研究院歷史語言研究所', '2009', 8, 7, '中研院史語所金文工作室', 'CN-BRONZE-AS-01', 'http://bronze.asdc.sinica.edu.tw/', 'zh', '中研院史語所建置之殷周金文暨青銅器資料庫，收錄《殷周金文集成》、《新收殷周青銅器銘文暨器影彙編》共約14,000件青銅器資料，含拓本、器影、器物背景訊息', '金文;青銅器;殷周;考古', '商–戰國', '全中國', NULL, '殷周青銅器地理資訊系統;先秦銅器紋飾資料庫', '中央研究院', NULL, '2026-07-30', 'ARR', '需申請帳號密碼', '已收錄 metadata', '中研院史語所金文工作室', '殷周金文研究最核心之數位資料庫', 'CN');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) VALUES (539, '先秦甲骨金文簡牘詞彙資料庫', '中央研究院歷史語言研究所', '2010', 8, 7, '中研院史語所', 'CN-LEXICON-AS-01', 'https://inscription.asdc.sinica.edu.tw/', 'zh', '中研院史語所建置之先秦詞彙資料庫，收錄甲骨、金文及簡牘中出現的各種詞彙，打破材質與時代限制，以詞彙本身為焦點提供查詢，可觀察詞彙流變', '甲骨文;金文;簡牘;詞彙;先秦', '商–戰國', '全中國', NULL, '殷周金文暨青銅器資料庫', '中央研究院', NULL, '2026-07-30', 'UNCLEAR', '網站公開瀏覽', '已收錄 metadata', '中研院史語所', '先秦古文字詞彙研究之重要工具', 'CN');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) VALUES (540, '殷周青銅器地理資訊系統', '中央研究院歷史語言研究所', '2015', 8, 2, '中研院史語所', 'CN-BRONZEGIS-AS-01', 'https://bronzevessel.ascdc.sinica.edu.tw/', 'zh', '根據譚其驤《中國歷史地圖集》及考古發掘報告，套疊Google地形圖，還原殷商、西周、春秋、戰國時期河川、國名、地名、城邑位置', '青銅器;GIS;歷史地圖;殷周', '商–戰國', '全中國', NULL, '殷周金文暨青銅器資料庫', '中央研究院', NULL, '2026-07-30', 'UNCLEAR', '網站公開瀏覽', '已收錄 metadata', '中研院史語所', '審視時空與青銅器物交互關係之GIS平臺', 'CN');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) VALUES (541, '先秦銅器紋飾資料庫', '中央研究院歷史語言研究所', '2016', 8, 7, '中研院史語所', 'CN-DECOR-AS-01', 'http://ndweb.iis.sinica.edu.tw/decoration/', 'zh', '與臺大藝術史研究所、倫敦大學亞非學院合作，進行銅器紋飾分類，與「殷周金文暨青銅器資料庫」交互使用，全面了解青銅器', '青銅器;紋飾;考古;藝術', '商–戰國', '全中國', NULL, '殷周金文暨青銅器資料庫', '中央研究院', NULL, '2026-07-30', 'UNCLEAR', '網站公開瀏覽，部分功能限於「紋飾分類樹狀圖」及「紋飾名稱權威檔」', '已收錄 metadata', '中研院史語所', '青銅器紋飾研究專題資料庫', 'CN');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) VALUES (542, '甲骨文AI協同平臺', '中國社會科學院', '2024', 8, 7, '中國社會科學院', 'CN-ORACLE-AI-01', 'https://www.kaogu.net.cn/', 'zh', '運用AI技術輔助甲骨文考釋與綴合之協同平臺，整合甲骨拓本、摹本、數位影像，提供學者線上協作研究環境', '甲骨文;AI;數位人文;商代', '商', '河南安陽為主', NULL, '中國考古網', '中國社會科學院', NULL, '2026-07-30', 'UNCLEAR', '需申請使用', '已收錄 metadata', NULL, 'AI技術應用於甲骨學研究之前沿平臺', 'CN');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) VALUES (543, '清華大學藏戰國竹簡（清華簡）', '清華大學出土文獻研究與保護中心', '2008', 10, 7, '清華大學', 'CN-TSINGHUA-BAMBOO-01', 'https://www.tsinghua.edu.cn/', 'zh', '清華大學藏戰國竹簡約2,500支，為戰國中期偏晚重要文物，含《尚書》佚篇、周武王樂詩、史書等，迄今出版14輯，是近數十年最大宗出土文獻', '戰國竹簡;出土文獻;尚書;先秦', '戰國', '湖北（楚地）', NULL, NULL, '清華大學', NULL, '2026-07-30', 'ARR', '整理報告由中西書局出版', '已收錄 metadata', NULL, '改寫先秦學術史之重大發現', 'CN');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) VALUES (544, '郭店楚簡資料庫', '香港中文大學歷史系', '2001', 10, 7, '香港中文大學', 'CN-GUODIAN-CUHK-01', 'https://www.history.cuhk.edu.hk/tc/elkt/guodian/', 'zh', '湖北荊門郭店一號墓出土730枚戰國竹簡，12,072字，含《老子》甲乙丙及《緇衣》等最早手抄本。資料庫提供全文檢索、簡號及篇目查詢', '楚簡;老子;儒家;出土文獻', '戰國', '湖北荊門', NULL, NULL, '香港中文大學', '張光裕', '2026-07-30', 'UNCLEAR', '網站免費提供全文檢索', '已收錄 metadata', NULL, '1993年出土，學術價值極高', 'CN');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) VALUES (545, '上海博物館藏戰國楚竹書', '上海博物館', '2000', 10, 7, '上海博物館', 'CN-SHANGHAI-BAMBOO-01', 'https://www.shanghaimuseum.net/', 'zh', '上海博物館藏戰國楚竹書，1994年收購自香港，含約1,200支竹簡，內容涵蓋儒家、道家、兵家等先秦佚籍，為郭店簡後又一重大發現', '楚簡;先秦;儒家;出土文獻', '戰國', '湖北（楚地）', NULL, NULL, '上海博物館', NULL, '2026-07-30', 'ARR', '整理報告由上海古籍出版社出版', '已收錄 metadata', NULL, '共出版9輯，與郭店簡互補', 'CN');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) VALUES (546, '寶雞青銅器博物院藏品系統', '寶雞青銅器博物院', '2020', 9, 7, '寶雞青銅器博物院', 'CN-BAOJI-BRONZE-01', 'https://www.bjqtm.com/', 'zh', '中國最大青銅器專題博物館，藏品1,000+件青銅器，含牆盤、何尊等禁止出境展覽文物，基本陳列「青銅鑄文明」勾勒周秦文明脈絡', '青銅器;西周;周秦;博物館', '西周–秦', '陝西寶雞', NULL, NULL, '寶雞青銅器博物院', NULL, '2026-07-30', 'UNCLEAR', '網站公開瀏覽；部分文物圖像需到館查閱', '已收錄 metadata', '寶雞青銅器博物院', '周文化核心展示視窗', 'CN');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) VALUES (547, '二里頭夏都遺址博物館', '二里頭夏都遺址博物館', '2019', 7, 7, '二里頭夏都遺址博物館', 'CN-ERLITOU-01', 'https://www.erlitou.com/', 'zh', '二里頭遺址（夏代中晚期）考古成果專題博物館，含宮殿遺址、青銅冶鑄遺存、綠松石龍形器等重要文物數位展示', '夏代;二里頭;考古;青銅器', '夏', '河南洛陽偃師', NULL, NULL, '二里頭夏都遺址博物館', NULL, '2026-07-30', 'UNCLEAR', '網站公開瀏覽', '已收錄 metadata', NULL, '夏代考古最重要之遺址博物館', 'CN');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) VALUES (548, '湖北省博物館曾侯乙墓數字展廳', '湖北省博物館', '2021', 10, 7, '湖北省博物館', 'CN-ZENG-HOU-YI-01', 'https://www.hubeimuseum.net/', 'zh', '湖北省博物館曾侯乙墓數字展廳，展示戰國早期曾侯乙墓出土文物，含曾侯乙編鐘、青銅尊盤、漆木器等15,000+件文物之數位資源', '曾侯乙;戰國;編鐘;青銅器', '戰國', '湖北隨州', NULL, NULL, '湖北省博物館', NULL, '2026-07-30', 'UNCLEAR', '網站公開瀏覽', '已收錄 metadata', NULL, '世界文化遺產，戰國考古重大發現', 'CN');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) VALUES (549, '周原遺址數字博物館', '周原博物館', '2022', 9, 7, '周原博物館', 'CN-ZHOUYUAN-01', 'https://www.zhouyuan.org/', 'zh', '周原遺址（周人發祥地）數字博物館，含西周宮殿（鳳雛遺址）、青銅器窖藏、甲骨文等重要考古成果數位展示', '西周;周原;考古;青銅器', '西周', '陝西岐山扶風', NULL, NULL, '周原博物館', NULL, '2026-07-30', 'UNCLEAR', '網站公開瀏覽', '已收錄 metadata', NULL, '西周考古最重要之遺址之一', 'CN');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) VALUES (550, '中國社會科學院甲骨學殷商史研究中心', '中國社會科學院歷史研究所', '2010', 8, 7, '中國社會科學院', 'CN-ORACLE-CASS-01', 'http://www.history.cssn.cn/', 'zh', '社科院歷史所甲骨學殷商史研究中心官方網站，提供甲骨學研究資訊、學術成果、資料庫連結，為甲骨學權威研究機構', '甲骨學;殷商史;社科院;商代', '商', '全中國', NULL, '甲骨文AI協同平臺', '中國社會科學院', NULL, '2026-07-30', 'UNCLEAR', '網站公開瀏覽', '已收錄 metadata', NULL, '甲骨學研究最高學術機構', 'CN');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) VALUES (551, '楚簡字形庫·古音小鏡', '古音小鏡', '2020', 10, 7, '古音小鏡', 'CN-CHUJIAN-GLYIN-01', 'http://kaom.net/jianc_note.php', 'zh', '楚簡字形線上查詢資料庫，整合安大簡、清華簡、上博簡、郭店簡等主要楚簡字形，支援字形檢索與比較，方便研究者對照', '楚簡;字形;古文字;出土文獻', '戰國', '湖北（楚地）', NULL, NULL, '古音小鏡', NULL, '2026-07-30', 'UNCLEAR', '網站公開瀏覽', '已收錄 metadata', '古音小鏡', '楚簡字形查詢之便利工具', 'CN');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) VALUES (552, '中山國王陵文物數字展廳', '河北省文物考古研究院', '2020', 10, 7, '河北省文物考古研究院', 'CN-ZHONGSHAN-01', 'https://www.hebkaogu.com/', 'zh', '戰國中山國王陵出土文物數字展廳，含錯金銀青銅器、中山王鼎、中山王方壺等重要文物數位資源', '戰國;中山國;青銅器;考古', '戰國', '河北平山', NULL, NULL, '河北省文物考古研究院', NULL, '2026-07-30', 'UNCLEAR', '網站公開瀏覽', '已收錄 metadata', NULL, '戰國時期白狄族建立之中山國考古', 'CN');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) VALUES (553, '中國文字博物館數字展廳', '中國文字博物館', '2020', 8, 7, '中國文字博物館', 'CN-CHINESE-CHAR-01', 'https://www.wenzimuseum.com/', 'zh', '中國文字博物館數字展廳，以漢字發展史為主線，涵蓋甲骨文、金文、簡帛文字、篆書等各時期文字演變之數位展示', '文字;甲骨文;金文;漢字', '商–現代', '河南安陽', NULL, '殷墟博物館', '中國文字博物館', NULL, '2026-07-30', 'UNCLEAR', '網站公開瀏覽', '已收錄 metadata', NULL, '全球唯一以文字為主題之國家級博物館', 'CN');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) VALUES (554, '婦好墓數字展廳', '殷墟博物館', '2023', 8, 7, '殷墟博物館', 'CN-FUHAO-01', 'https://www.anyangyinxu.cn/', 'zh', '殷墟婦好墓（商王武丁配偶）出土文物數字展廳，含青銅器、玉器、骨器、貝幣等1,900+件隨葬品數位展示', '婦好;商代;殷墟;考古', '商', '河南安陽', NULL, '殷墟博物館數字展廳', '殷墟博物館', NULL, '2026-07-30', 'UNCLEAR', '網站公開瀏覽', '已收錄 metadata', NULL, '商代考古最重要之完整高等級墓葬', 'CN');

SELECT setval('sources_id_seq', 554);
-- === 3. 史料←→資料類型 ===
INSERT INTO source_materials (source_id, material_type_id) VALUES
  (517, 1),
  (517, 2),
  (518, 1),
  (518, 2),
  (519, 2),
  (519, 4),
  (520, 2),
  (520, 4),
  (521, 1),
  (521, 2),
  (522, 1),
  (522, 2),
  (523, 1),
  (523, 2),
  (524, 1),
  (525, 1),
  (526, 1),
  (527, 1),
  (527, 2),
  (528, 1),
  (528, 2),
  (529, 1),
  (529, 2),
  (530, 1),
  (531, 2),
  (531, 4),
  (532, 2),
  (532, 4),
  (533, 2),
  (533, 4),
  (534, 2),
  (534, 4),
  (535, 1),
  (535, 2),
  (536, 1),
  (536, 2),
  (537, 1),
  (538, 1),
  (538, 2),
  (539, 1),
  (540, 3),
  (541, 2),
  (542, 1),
  (542, 2),
  (543, 1),
  (543, 2),
  (544, 1),
  (545, 1),
  (545, 2),
  (546, 1),
  (546, 2),
  (547, 1),
  (547, 2),
  (547, 4),
  (548, 2),
  (548, 4),
  (549, 1),
  (549, 2),
  (550, 1),
  (551, 1),
  (552, 2),
  (552, 4),
  (553, 1),
  (553, 2),
  (554, 2),
  (554, 4);
ON CONFLICT DO NOTHING;
-- === 4. 史料←→來源機構 ===
INSERT INTO source_institutions (source_id, institution_id, role) VALUES
  (517, 134, 'source'),
  (517, 134, 'publisher'),
  (518, 47, 'source'),
  (518, 47, 'publisher'),
  (519, 136, 'source'),
  (519, 136, 'publisher'),
  (520, 147, 'source'),
  (520, 147, 'publisher'),
  (521, 147, 'source'),
  (521, 147, 'publisher'),
  (522, 139, 'source'),
  (522, 127, 'publisher'),
  (523, 140, 'source'),
  (523, 140, 'publisher'),
  (523, 135, 'contributor'),
  (524, 144, 'source'),
  (524, 144, 'publisher'),
  (525, 138, 'source'),
  (525, 138, 'publisher'),
  (526, 141, 'source'),
  (526, 141, 'publisher'),
  (527, 136, 'source'),
  (527, 136, 'publisher'),
  (528, 47, 'source'),
  (528, 47, 'publisher'),
  (529, 134, 'source'),
  (529, 133, 'publisher'),
  (530, 133, 'source'),
  (530, 133, 'publisher'),
  (531, 145, 'source'),
  (531, 145, 'publisher'),
  (533, 149, 'source'),
  (533, 149, 'publisher'),
  (534, 129, 'source'),
  (534, 129, 'publisher'),
  (535, 141, 'source'),
  (535, 141, 'publisher'),
  (536, 137, 'source'),
  (536, 137, 'publisher'),
  (537, 130, 'source'),
  (537, 130, 'publisher'),
  (538, 7, 'publisher'),
  (539, 7, 'publisher'),
  (540, 7, 'publisher'),
  (541, 7, 'publisher'),
  (542, 133, 'source'),
  (542, 133, 'publisher'),
  (543, 146, 'source'),
  (543, 146, 'publisher'),
  (544, 144, 'source'),
ON CONFLICT DO NOTHING;
INSERT INTO source_institutions (source_id, institution_id, role) VALUES
  (544, 144, 'publisher'),
  (545, 131, 'source'),
  (545, 131, 'publisher'),
  (547, 128, 'source'),
  (547, 128, 'publisher'),
  (548, 148, 'source'),
  (548, 148, 'publisher'),
  (549, 142, 'source'),
  (549, 142, 'publisher'),
  (550, 133, 'source'),
  (550, 133, 'publisher'),
  (552, 143, 'source'),
  (552, 143, 'publisher'),
  (553, 132, 'source'),
  (553, 132, 'publisher'),
  (554, 145, 'source'),
  (554, 145, 'publisher');
ON CONFLICT DO NOTHING;

-- === 完成 ===
