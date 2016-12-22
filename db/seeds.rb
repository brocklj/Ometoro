Course.create!([
  {Name: "Rovnice", page_id: 1, body: "Uvažujme dvě funkce f ( x ) , g ( x ) {\\displaystyle f(x),g(x)} f(x),g(x), které jsou definovány na nějaké množině D {\\displaystyle D} D, pak nalezení všech x ∈ D {\\displaystyle x\\in D} x\\in D, která splňují rovnost\r\n\r\nzdroj: Wikipedia.org"},
  {Name: "Úvod do Matematiky", page_id: 1, body: "Mezi jinými vědami se matematika vyznačuje nejvyšší mírou abstrakce a přesnosti. Díky těmto vlastnostem je často označována za královnu věd[1]. Tzv. matematický důkaz je nejspolehlivější známý způsob, jak ověřovat pravdivost tvrzení. V matematice jsou za spolehlivá považována pouze ta tvrzení (nazývané věty), ke kterým je znám matematický důkaz. Nové pojmy jsou vytvářeny jednoznačnými definicemi z pojmů již zavedených.\r\n\r\nPro současnou matematiku je typická vysoká přesnost, zajišťovaná úplnou formalizací. Je-li stanoveno několik základních tvrzení (tzv. axiomy), je z nich možné s použitím odvozovacích pravidel založených na logice odvodit další pravdivá tvrzení pomocí formálních důkazů. Výklad matematických poznatků tak spočívá v definování nových pojmů, formulování platných vět o nich (případně takových vět, které je dávají do souvislosti s pojmy staršími) a dokazování pravdivosti těchto vět. Matematické práce mají proto často strukturu „definice – věta – důkaz“ s minimem doplňujícího textu či zcela bez něj. Stejně jako v jiných vědních disciplínách se také může objevit formulace neověřené hypotézy - předpokladu (jako výzva k jejímu dokázání či vyvrácení) nebo položení dosud nezodpovězené otázky.\r\n\r\nNěkteré z matematikou vytvářených abstraktních pojmů slouží k vysvětlení či snadnějšímu uchopení pojmů dalších, jiné slouží v jiných vědních oborech jako nástroj k popisu určitých jevů nebo jako idealizovaný model reálných objektů či systémů, další pak umožňují precizaci a rozvoj konceptů a myšlenek některých disciplín filozofie. Zákonitosti objevené mezi těmito pojmy lze při vhodné aplikaci zpětně přeformulovat jako pravidla a vlastnosti skutečného světa nebo jako obecně platné teze. To však již není úkolem matematiky, nýbrž příslušné jiné disciplíny.\r\n\r\nzdroj:wikipedia.org"}
])
Page.create!([
  {title: "Matematika", text: "Matematika (z řeckého μαθηματικός (mathematikós) = milující poznání; μάθημα (máthema) = věda, vědění, poznání) je věda zabývající se z formálního hlediska kvantitou, strukturou, prostorem a změnou. Matematika je též popisována jako disciplína, jež se zabývá vytvářením abstraktních entit a vyhledáváním zákonitých vztahů mezi nimi.\r\n\r\nZdroj: wikipedia.org", visible: 1},
  {title: "Programovaní", text: "Default text = insert a content.", visible: 0}
])
Tag.create!([
  {name: "Prirodni věda", text: nil},
  {name: "Filozofie", text: nil},
  {name: "Logika", text: nil},
  {name: "Věda", text: nil},
  {name: "Basic Stuff", text: nil}
])
TagAssigment.create!([
  {tag_id: 1, course_id: 2},
  {tag_id: 2, course_id: 2},
  {tag_id: 5, course_id: 2},
  {tag_id: 3, course_id: 1},
  {tag_id: 4, course_id: 1}
])
