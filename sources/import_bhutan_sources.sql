-- ============================================================
-- 東亞歷史權威史料庫 — 不丹史料匯入 SQL（增量模式）
-- 由 Import-BhutanToSupabase.ps1 v1 自動產生
-- ============================================================

-- === 0. 不丹時期（僅首次執行） ===
INSERT INTO periods (id, code, name_zh, start_year, end_year, sort_order, region) OVERRIDING SYSTEM VALUE VALUES
  (124, 'bt-early-buddhist', '不丹：佛教傳入與前統一時期（約7世紀–1616）', 600, 1616, 97, 'SA'),
  (125, 'bt-shabdrung', '不丹：沙布瓊統一與座宗時代（1616–1907）', 1616, 1907, 98, 'SA'),
  (126, 'bt-wangchuck', '不丹：旺楚克王朝與憲政民主（1907–迄今）', 1907, 2026, 99, 'SA')
ON CONFLICT (id) DO NOTHING;

SELECT setval('periods_id_seq', 126);

-- === 1. 來源機構（僅新增者） ===
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (437, 'Loden基金會') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (438, '大英圖書館瀕危檔案計畫') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (439, '不丹內政文化部') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (440, '不丹文化部') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (441, '不丹王國政府') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (442, '不丹皇家大學') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (443, '不丹國家統計局') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (444, '不丹國家圖書館暨國家檔案館') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (445, '庫恩塞報社') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (446, '維也納大學西藏手稿計畫') ON CONFLICT (name_zh) DO NOTHING;

SELECT setval('institutions_id_seq', 446);

-- === 2. 主要史料 ===
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1434, '不丹國家圖書館暨國家檔案館（National Library and Archives of Bhutan）', '不丹國家圖書館暨國家檔案館', '1967–迄今', 124, 7, '不丹國家圖書館暨國家檔案館', 'BT-ST-01', 'http://www.library.gov.bt/', 'dz;bo;en', '不丹國家圖書館暨國家檔案館1967年於皇后阿詩・蓬佐・楚丹贊助下成立，藏最豐富之宗卡語與藏文古籍・佛教手稿・刻版印刷本・歷史文書，涵蓋佛教傳入以來數世紀文獻；館藏蓮花生時代以降至近代之宗教寫本為研究不丹前統一時期之基礎', '不丹;國家圖書館;宗卡文;藏文手稿;佛教寫本;刻版', '古代王朝～沙布瓊統一（約7世紀–19世紀）', '不丹（廷布）', NULL, '不丹國家檔案館（National Archives）', NULL, '不丹國家圖書館暨國家檔案館（官方典藏）', '2026-08-27', 'ARR', '官方圖書檔案館典藏，線上檢索', '已收錄 metadata', NULL, '1967年成立，1999年法定送存', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1435, '不丹國家檔案館（National Archives of Bhutan）國家記憶銀行', '不丹國家檔案館', '2000–迄今', 125, 1, '不丹國家圖書館暨國家檔案館', 'BT-ST-02', 'http://www.library.gov.bt/archive/index.html', 'dz;en', '不丹國家檔案館為國家記憶銀行，丹麥協助興建現代化檔案大樓（2004年完工），保存舊紀錄・古書信・外交文書・政府紀錄與約7,000張歷史照片，並提供珍稀文獻微縮膠卷與數位化服務，為不丹國家層級之官方檔案主庫', '不丹;國家檔案館;政府紀錄;外交文書;照片;微縮膠卷', '沙布瓊統一～不丹王國（17世紀–21世紀）', '不丹（廷布）', NULL, '不丹國家圖書館暨國家檔案館（National Library and Archives of Bhutan）', NULL, '不丹國家圖書館暨國家檔案館（官方典藏）', '2026-08-27', 'ARR', '官方檔案館典藏，線上檢索', '已收錄 metadata', NULL, '2004年新館完成', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1436, '不丹國家統計局（National Statistics Bureau, NSB）普查檔案', '不丹國家統計局', '1969–迄今', 126, 6, '不丹國家統計局', 'BT-ST-03', 'https://www.nsb.gov.bt/', 'dz;en', '不丹國家統計局1950年代起組建、1969年正式化，主管官方統計，出版人口與住宅普查（2005・2017年等）、家戶調查・國民幸福指數（GNH）與全國帳目，官網開放統計年鑑與普查結果，為研究不丹現代社會之官方資料庫', '不丹;國家統計局;人口普查;統計;國民幸福指數', '不丹王國（1969–迄今）', '不丹全境', NULL, '不丹王國政府', NULL, '不丹國家統計局（官方統計入口）', '2026-08-27', 'ARR', '官方統計，免費下載', '已收錄 metadata', NULL, '含2005/2017人口普查', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1437, '大英圖書館瀕危檔案計畫（EAP）不丹寺院手稿數位典藏', '大英圖書館瀕危檔案計畫', '2007–2012', 125, 7, '大英圖書館瀕危檔案計畫', 'BT-ST-04', 'https://eap.bl.uk/project/EAP039', 'bo;dz;en', '大英圖書館瀕危檔案計畫（EAP）歷EAP039・EAP105・EAP310・EAP570等案，協同Loden基金會數位化不丹崗堤寺・烏根卻林・德朗策・塔達克等地76座寺院與私家檔案內100–600年手稿，全案逾百萬數位影像開放檢索，為不丹古籍研究之重要境外數位庫', '不丹;手稿;瀕危檔案計畫;寺院文獻;數位化;大英圖書館', '沙布瓊統一（16世紀–19世紀）', '不丹全境（寺院・私家藏）', NULL, 'Loden基金會', NULL, '大英圖書館瀕危檔案計畫（數位典藏）', '2026-08-27', 'ARR', '開放數位典藏，免費檢索', '已收錄 metadata', NULL, 'EAP039起系列計畫', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1438, 'Loden 基金會不丹手稿與文化文獻計畫', 'Loden 基金會', '2004–迄今', 125, 7, 'Loden基金會', 'BT-ST-05', 'https://www.loden.org/', 'bo;dz;en', '不丹本土文化保存機構Loden基金會自2004年起執行不丹稀有手稿與遠地檔案之保存與數位化，已涵蓋76座檔案庫，並錄製口述與非物質文化（2013年阿卡迪亞基金會與維吉尼亞大學合作），為不丹文化史之在地研究網絡', '不丹;手稿;文化文獻;非物質文化;數位化;人文資產', '沙布瓊統一～不丹王國（15世紀–21世紀）', '不丹全境', NULL, '維吉尼亞大學;阿卡迪亞基金會', NULL, 'Loden基金會（數位典藏）', '2026-08-27', 'ARR', '非營利文化機構，數位成果開放', '已收錄 metadata', NULL, '可續沿大英圖書館EAP', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1439, '英國國家檔案館不丹外交與殖民檔案（杜爾戰爭・辛楚拉條約）', '英國國家檔案館', '1640–1947', 125, 1, '英國國家檔案館', 'BT-ST-06', 'https://www.nationalarchives.gov.uk/', 'en', '英國國家檔案館存印度事務部（IOR）及外交部所藏不丹相關文書，涵蓋19世紀英國東印度公司探索與使團（1864年艾希禮・伊登使團）、杜爾戰爭（1864–65）與1865年辛楚拉條約，紀錄不丹對英印關係與邊界形成之第一手官方檔案', '不丹;英國國家檔案館;杜爾戰爭;辛楚拉條約;英不關係', '沙布瓊統一（19世紀）', '不丹與英屬印度邊界', NULL, '印度事務部（IOR）', NULL, '英國國家檔案館（官方典藏）', '2026-08-27', 'ARR', '官方檔案館典藏，線上檢索', '已收錄 metadata', NULL, '含英國駐不丹使團紀錄', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1440, '不丹文化部文化資產暨古蹟調查檔案', '不丹內政文化部（Ministry of Home and Cultural Affairs）', '1950–迄今', 125, 1, '不丹文化部', 'BT-ST-07', 'https://www.gov.bt/', 'dz;en', '不丹政府主管文化與古蹟之部門（文化局/文化處）掌國家文化資產・座宗保存・博物館與世界遺產預備名單執行，官網刊布文化政策與古蹟調查資料，並經國家門戶開放相關檔案，為不丹遺產管理之官方主管', '不丹;文化資產;古蹟;座宗;文化部;遺產管理', '沙布瓊統一～不丹王國（17世紀–21世紀）', '不丹全境', NULL, '不丹王國政府', NULL, '不丹內政文化部（官方主管）', '2026-08-27', 'ARR', '官方文化主管機關，線上瀏覽', '已收錄 metadata', NULL, '含文化資產調查', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1441, '不丹座宗群世界遺產預備名單（帕羅・普那卡・特龍薩等）', 'UNESCO世界遺產中心／不丹王國政府', '2012提名', 125, 7, 'UNESCO世界遺產中心', 'BT-ST-08', 'https://whc.unesco.org/en/tentativelists/5695/', 'en', '不丹帕羅宗・普那卡宗・延布札西卻宗・特龍薩宗・達加納宗等座宗作為「宗教與世俗權力中心」於2012年登列UNESCO世界遺產預備名單，座宗建築（17世紀沙布瓊納旺・南嘉興建）體現不丹宗教政治合一之國家結構，頁面提供遺產描述與調查資料', '不丹;座宗;世界遺產預備名單;建築遺產;沙布瓊', '沙布瓊統一（17世紀）', '不丹（帕羅・普那卡・特龍薩）', NULL, '不丹文化部;UNESCO世界遺產中心', NULL, 'UNESCO世界遺產中心（預備名單）', '2026-08-27', 'ARR', '官方遺產檔案，線上瀏覽', '已收錄 metadata', NULL, '2012提名暫列名單', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1442, '庫恩塞報（Kuensel）國家報紙檔案', '庫恩塞報社', '1967–迄今', 126, 3, '庫恩塞報社', 'BT-ST-09', 'https://kuenselonline.com/', 'dz;en', '《庫恩塞》1967年創刊，為不丹官方國家報紙，報導王國政治・經濟・社會與國際關係，見證旺楚克王朝至憲政民主轉型，官方網站提供當代與歷史報導，為研究現代不丹國家與社會之連續性報刊史料', '庫恩塞;不丹;報紙;新聞史;國家轉型', '不丹王國（1967–迄今）', '不丹（廷布）', NULL, '不丹皇家政府資訊部', NULL, '庫恩塞報社（官方網站）', '2026-08-27', 'ARR', '官方報社，線上檢索', '已收錄 metadata', NULL, '不丹國家報紙', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1443, 'Digital Himalaya 不丹期刊數位庫（Journal of Bhutan Studies）', '劍橋大學等', '1999–迄今', 126, 3, 'Digital Himalaya', 'BT-ST-10', 'https://www.digitalhimalaya.com/', 'en;dz', '劍橋大學等合作營運之數位喜馬拉雅計畫收錄《Journal of Bhutan Studies》等不丹研究期刊與民族誌影音，學界長期刊載不丹歷史・社會・文化研究，開放予研究者檢索，為不丹當代學術文獻之境外數位庫', '不丹;期刊;不丹研究;數位典藏;民族誌', '不丹王國（1999–迄今）', '不丹・喜馬拉雅區域', NULL, '劍橋大學圖書館', NULL, 'Digital Himalaya（數位典藏）', '2026-08-27', 'ARR', '學術數位典藏，免費開放', '已收錄 metadata', NULL, '含不丹研究期刊', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1444, '不丹皇家大學（Royal University of Bhutan）學術文獻', '不丹皇家大學', '2003–迄今', 126, 7, '不丹皇家大學', 'BT-ST-11', 'https://www.rub.edu.bt/', 'en;dz', '不丹皇家大學2003年成立，整合全國九所學院，作為國家高等教育與研究機構，其圖書館與研究出口為不丹現代學術文獻之主要典藏，刊載不丹社會科學・教育與發展研究，為不丹國家學術書庫', '不丹;皇家大學;高等教育;學術文獻;研究', '不丹王國（2003–迄今）', '不丹（各宗）', NULL, '不丹內政文化部;不丹王國政府', NULL, '不丹皇家大學（官方入口）', '2026-08-27', 'ARR', '大學學術典藏，線上檢索', '已收錄 metadata', NULL, '2003年成立整合九院', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1445, '維也納大學西藏手稿計畫（TMPV）不丹康久爾手稿數位化', '維也納大學西藏手稿計畫', '2019–迄今', 125, 7, '維也納大學西藏手稿計畫', 'BT-ST-12', 'https://tmpv.univie.ac.at/', 'bo;en', '維也納大學藏傳佛教文獻學（TMPV）於2019年數位化不丹東部塔希揚澤座宗所藏110卷康久爾（甘珠爾）寫本，歸類Them spangs ma系，並納入rKTs資料庫開放檢索，為不丹宗教經典之境外學術數位典藏', '不丹;康久爾;甘珠爾;寫本;維也納大學;佛教經典', '沙布瓊統一（17世紀–19世紀）', '不丹（塔希揚澤）', NULL, 'Loden基金會;不丹宗教僧團事務委員會', NULL, '維也納大學西藏手稿計畫（數位庫）', '2026-08-27', 'ARR', '學術數位資料庫，免費檢索', '已收錄 metadata', NULL, 'rKTs資料庫siglum Ty', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1446, '不丹口述歷史與非物質文化記錄（Loden暨夥伴計畫）', 'Loden 基金會／維吉尼亞大學', '2013–迄今', 126, 9, 'Loden基金會', 'BT-ST-13', 'https://www.loden.org/', 'dz;en', '2013年起阿卡迪亞基金會資助、維吉尼亞大學與Loden基金會合作之國家級口述與非物質文化計畫，系統記錄不丹各宗社區之語言・習俗・節慶與生活記憶，訪談與影音陸續公開，為不丹社會文化史之當代口述庫', '不丹;口述歷史;非物質文化;節慶;社會記憶', '不丹王國（20世紀–21世紀）', '不丹全境', NULL, '維吉尼亞大學;阿卡迪亞基金會', NULL, 'Loden基金會（數位庫）', '2026-08-27', 'ARR', '訪談影音，陸續開放', '已收錄 metadata', NULL, '含民俗與口傳傳統', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1447, '白氏使團不丹早期照片（John Claude White, 1904–07）', '約翰・克勞德・懷特', '1904–1907', 125, 5, '大英圖書館', 'BT-ST-14', 'https://eap.bl.uk/', 'en', '英國駐錫金政治官約翰・克勞德・懷特於1904–07年間拍攝之不丹首批系統性照片，記錄王國開埠之初之座宗・寺院・宮廷與人民生活，原件藏大英圖書館，為不丹近代影像史料之最早系統性收藏', '不丹;照片;懷特;大英圖書館;歷史影像', '沙布瓊統一（1904–1907）', '不丹全境', NULL, '大英圖書館', NULL, '大英圖書館（影像典藏）', '2026-08-27', 'ARR', '典藏原件，數位檢索開放', '已收錄 metadata', NULL, '不丹首批系統照片', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1448, '不丹王國2008年憲法與立法檔案', '不丹王國政府', '2008–迄今', 126, 1, '不丹王國政府', 'BT-ST-15', 'https://www.constitution.bt/', 'dz;en', '不丹王國2008年頒布憲法，確立君主立憲與兩院制議會，官網收錄憲法全文・法律與國民議會資料，紀錄1972年世界首倡國民幸福指數（GNH）國家之制度設計，為研究不丹憲政轉型之官方法律檔案', '不丹;憲法;2008;立法;議會;國民幸福指數', '不丹王國（2008–迄今）', '不丹（廷布）', NULL, '不丹皇家政府', NULL, '不丹王國政府（憲法官方網站）', '2026-08-27', 'ARR', '官方法律文件，免費公開', '已收錄 metadata', NULL, '2008年君主立憲', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1449, '大英圖書館東方與印度事務藏（IOR）不丹相關文書', '大英圖書館', '1757–1947', 125, 1, '大英圖書館', 'BT-ST-16', 'https://www.bl.uk/', 'en', '大英圖書館東方與印度事務藏品（IOR）存東印度公司與英屬印度時期涉及不丹之邊界勘測・貿易・外交通訊與杜爾戰爭紀錄，孟加拉與不丹毗連地關係檔案尤為豐富，為不丹近代對外關係之境外第一手官方文書', '不丹;大英圖書館;印度事務部;東印度公司;外交通訊', '沙布瓊統一～不丹王國（18世紀–20世紀）', '不丹與英屬印度邊界', NULL, '英國國家檔案館（殖民檔）', NULL, '大英圖書館（東方與印度事務藏）', '2026-08-27', 'ARR', '官方典藏，數位檢索開放', '已收錄 metadata', NULL, '含孟加拉邊境檔案', 'SA') ON CONFLICT (id) DO NOTHING;

SELECT setval('sources_id_seq', 1449) WHERE NOT EXISTS (SELECT 1 FROM sources WHERE id = 1449);
SELECT setval('sources_id_seq', (SELECT COALESCE(MAX(id), 0) FROM sources));

-- === 3. 史料←→資料類型 ===
INSERT INTO source_materials (source_id, material_type_id) VALUES
  (1434, 1),
  (1434, 2),
  (1435, 1),
  (1435, 2),
  (1436, 1),
  (1436, 2),
  (1437, 2),
  (1437, 1),
  (1438, 1),
  (1438, 2),
  (1439, 1),
  (1439, 2),
  (1440, 1),
  (1440, 2),
  (1441, 1),
  (1441, 2),
  (1442, 1),
  (1442, 2),
  (1443, 1),
  (1443, 2),
  (1443, 4),
  (1444, 1),
  (1444, 2),
  (1445, 2),
  (1445, 1),
  (1446, 4),
  (1446, 1),
  (1447, 2),
  (1448, 1),
  (1448, 4),
  (1449, 1),
  (1449, 2)
ON CONFLICT DO NOTHING;

-- === 4. 史料←→來源機構 ===
INSERT INTO source_institutions (source_id, institution_id, role) VALUES
  (1434, 444, 'source'),
  (1434, 444, 'contributor'),
  (1435, 444, 'source'),
  (1435, 444, 'contributor'),
  (1436, 443, 'source'),
  (1436, 443, 'contributor'),
  (1437, 438, 'source'),
  (1437, 438, 'contributor'),
  (1438, 437, 'source'),
  (1438, 437, 'contributor'),
  (1439, 94, 'source'),
  (1439, 94, 'contributor'),
  (1440, 440, 'source'),
  (1440, 439, 'contributor'),
  (1441, 360, 'source'),
  (1441, 360, 'contributor'),
  (1442, 445, 'source'),
  (1442, 445, 'contributor'),
  (1443, 424, 'source'),
  (1443, 424, 'contributor'),
  (1444, 442, 'source'),
  (1444, 442, 'contributor'),
  (1445, 446, 'source'),
  (1445, 446, 'contributor'),
  (1446, 437, 'source'),
  (1446, 437, 'contributor'),
  (1447, 6, 'source'),
  (1447, 6, 'contributor'),
  (1448, 441, 'source'),
  (1448, 441, 'contributor'),
  (1449, 6, 'source'),
  (1449, 6, 'contributor')
ON CONFLICT DO NOTHING;

-- === 完成 ===
