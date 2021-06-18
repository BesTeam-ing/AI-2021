:- discontiguous physicalObject/1.
:- discontiguous annotation/2.
:- discontiguous hasPart/2.
:- discontiguous hasText/2.
:- discontiguous token/1.
:- discontiguous meronomicFluent/1.
:- discontiguous hasWhole/2.
:- discontiguous portionMass/1.
:- discontiguous swhat/2.
:- discontiguous ptwhat/2.
:- discontiguous pwhat/2.
:- discontiguous hasComponent/2.
:- discontiguous hasValue/2.
:- discontiguous hasName/2.
:- discontiguous hasComponent2/2.
:- discontiguous hasComponent1/2.
:- discontiguous over/1.
:- discontiguous spatialFluent/1.
:- discontiguous overlying/1.
:- discontiguous componentObject/1.
:- discontiguous property/1.
:- discontiguous propertyFluent/1.
:- discontiguous cwho/2.
:- discontiguous cwhat/2.
:- discontiguous capability/1.
:- discontiguous fwhat/2.
:- discontiguous artifact/1.
:- discontiguous functionality/1.
:- discontiguous artifact/1.
:- discontiguous hasText/1.
:- discontiguous cover/1.
:- discontiguous covered/1.
:- discontiguous physicalAgent/1.
:- discontiguous action/1.
:- discontiguous materialObject/1.
:- discontiguous hasUri/2.
:- discontiguous uri/1.
:- discontiguous who/2.
:- discontiguous hasTemporalEntity2/2.
:- discontiguous hasTemporalEntity1/2.
:- discontiguous when/2.
:- discontiguous during/1.
:- discontiguous what/2.
:- discontiguous event/1.
:- discontiguous year/2.
:- discontiguous dataCalendar/1.
:- discontiguous location/1.
:- discontiguous start/1.
:- discontiguous where/2.
:- discontiguous contains/1.
:- discontiguous person/1.
:- discontiguous socialAgent/1.
:- discontiguous before/1.
:- discontiguous cwhen/2.
:- discontiguous hasEffect/2.
:- discontiguous hasCause/2.
:- discontiguous causalrelation/1.
:- discontiguous cwhy/2.
:- discontiguous causeEvent/1.
:- discontiguous after/1.
:- discontiguous causalrelation/1.
:- discontiguous causalrelation/1.
:- discontiguous overlap/1.
:- discontiguous cwhy/2.
:- discontiguous causeEvent/1.
:- discontiguous after/1.
:- discontiguous hasObject/2.
:- discontiguous proximity/1.
:- discontiguous dateCalendar/1.
:- discontiguous interval/1.
:- discontiguous begin/2.
:- discontiguous end/2.
:- discontiguous hasSubject/2.
:- discontiguous right/1.
:- discontiguous month/2.
:- discontiguous role/1.
:- discontiguous roleFluent/1.
:- discontiguous rwhat/2.
:- discontiguous day/2.
:- discontiguous finist/1.
:- discontiguous left/1.

% IL PALAZZO

	token(tok21).
	hasText(tok21, "Reggia").
	physicalObject(po21).
	annotation(po21,tok21).

	token(tok22).
	hasText(tok22, "1845").
	dataCalendar(t21).
	year(t21, 1845).
	annotation(t21, tok22).

	token(tok23).
	hasText(tok23,"fu terminata").
	hasText(tok23,"terminò").
	action(act21).
	hasObject(act21, po21).
	annotation(act21,tok23).

	token(tok303).
	hasText(tok303, "Caserta").
	location(loc201).
	annotation(loc201, tok303).

	event(e21).
	what(e21,act21).
	who(e21, po21).
	who(e21, pa201).
	where(e21, loc201).
	during(trel21).
	when(e21, trel21).
	hasTemporalEntity1(trel21, e21).
	hasTemporalEntity2(trel21, t21).

	token(tok201).
	hasText(tok201, "Vanvitelli").
	physicalAgent(pa201).
	annotation(pa201,tok201).


	token(tok24).
	hasText(tok24, "complesso").
	physicalObject(po22).
	annotation(po22,tok24).


	token(tok25).
	hasText(tok25, "grandioso").
	propertyFluent(fprop21).
	pwhat(fprop21, prop21).
	property(prop21).
	hasName(prop21, "grandioso").
	hasComponent(prop21, po22).
	annotation(prop21,tok25).


	token(tok26).
	hasText(tok26, "1200 stanze").
	physicalObject(po23).
	annotation(po23,tok26).


	token(tok27).
	hasText(tok27, "1742 finestre").
	physicalObject(po24).
	annotation(po24,tok27).


	token(tok28).
	hasText(tok28, "di").
	meronomicFluent(merf21).
	ptwhat(merf21, relPtCo21).
	componentObject(relPtCo21).
	hasPart(relPtCo21, [po23, po24]).
	hasWhole(relPtCo21, po21).
	annotation(relPtCo21,tok28).


	token(tok29).
	hasText(tok29, "lato").
	physicalObject(po25).
	annotation(po25,tok29).


	token(tok210).
	hasText(tok210, "meridionale").
	propertyFluent(fprop22).
	pwhat(fprop22, prop22).
	property(prop22).
	hasName(prop22, "meridionale").
	hasComponent(prop22, po25).
	annotation(prop22,tok210).


	token(tok211).
	hasText(tok211, "palazzo").
	physicalObject(po26).
	annotation(po26,tok211).


	token(tok212).
	hasText(tok212, "del").
	meronomicFluent(merf22).
	ptwhat(merf22, relPtCo22).
	componentObject(relPtCo22).
	hasPart(relPtCo22, po25).
	hasWhole(relPtCo22, po26).
	annotation(relPtCo22,tok212).


	token(tok213).
	hasText(tok213, "lungo").
	propertyFluent(fprop23).
	pwhat(fprop23, prop23).
	property(prop23).
	hasName(prop23, "lungo").
	hasComponent(prop23, po26).
	hasValue(prop23, "249 metri").
	annotation(prop23,tok213).


	token(tok214).
	hasText(tok214, "alto").
	propertyFluent(fprop24).
	pwhat(fprop24, prop24).
	property(prop24).
	hasName(prop24, "alto").
	hasComponent(prop24, po26).
	hasValue(prop24, "37,83 metri").
	annotation(prop24,tok214).

	token(tok215).
	hasText(tok215, "dodici colonne").
	physicalObject(po27).
	annotation(po27,tok215).


	token(tok216).
	hasText(tok216, "decorato").
	meronomicFluent(merf23).
	ptwhat(merf23, relPtCo23).
	componentObject(relPtCo23).
	hasPart(relPtCo23, po25).
	hasWhole(relPtCo23, po26).
	annotation(relPtCo23,tok216).


	token(tok217).
	hasText(tok217, "facciata").
	physicalObject(po28).
	annotation(po28,tok217).


	token(tok218).
	hasText(tok218, "principale").
	propertyFluent(fprop25).
	pwhat(fprop25, prop25).
	property(prop25).
	hasName(prop25, "principale").
	hasComponent(prop25, po28).
	annotation(prop25,tok218).


	token(tok219).
	hasText(tok219, "avancorpo").
	physicalObject(po29).
	annotation(po29,tok219).


	token(tok220).
	hasText(tok220, "centrale").
	propertyFluent(fprop26).
	pwhat(fprop26, prop26).
	property(prop26).
	hasName(prop26, "centrale").
	hasComponent(prop26, po29).
	annotation(prop26,tok220).


	token(tok221).
	hasText(tok221, "presenta").
	meronomicFluent(merf24).
	ptwhat(merf24, relPtCo24).
	componentObject(relPtCo24).
	hasPart(relPtCo24, po29).
	hasWhole(relPtCo24, po28).
	annotation(relPtCo24,tok221).


	token(tok222).
	hasText(tok222, "frontone").
	physicalObject(po210).
	annotation(po210,tok222).


	token(tok223).
	hasText(tok223, "sormontato da").
	spatialFluent(spF21).
	swhat(spF21, spRel21).
	over(spRel21).
	hasComponent1(spRel21, po210).
	hasComponent2(spRel21, po29).
	annotation(spRel21, tok223).


	token(tok224).
	hasText(tok224, "prospetto").
	physicalObject(po211).
	annotation(po211,tok224).


	token(tok225).
	hasText(tok225, "due avancorpi").
	physicalObject(po212).
	annotation(po212,tok225).

	token(tok226).
	hasText(tok226, "ai lati").
	spatialFluent(spF22).
	swhat(spF22, spRel22).
	proximity(spRel22).
	hasComponent1(spRel22, po211).
	hasComponent2(spRel22, po212).
	annotation(spRel22, tok226).


	token(tok227).
	hasText(tok227, "facciata").
	physicalObject(po213).
	annotation(po213,tok227).


	token(tok228).
	hasText(tok228, "giardino").
	physicalObject(po214).
	annotation(po214,tok228).


	token(tok229).
	hasText(tok229, "sul").
	spatialFluent(spF23).
	swhat(spF23, spRel23).
	over(spRel23).
	hasComponent1(spRel23, po214).
	hasComponent2(spRel23, po213).
	annotation(spRel23, tok229).


	token(tok230).
	hasText(tok230, "finestre").
	physicalObject(po215).
	annotation(po215,tok230).


	token(tok231).
	hasText(tok231, "lesene").
	physicalObject(po216).
	annotation(po216,tok231).


	token(tok232).
	hasText(tok232, "scalanate").
	propertyFluent(fprop27).
	pwhat(fprop27, prop27).
	property(prop27).
	hasName(prop27, "scalanate").
	hasComponent(prop27, po216).
	annotation(prop27,tok232).




	token(tok233).
	hasText(tok233, "inquadrate da").
	spatialFluent(spF24).
	swhat(spF24, spRel24).
	contains(spRel24).
	hasComponent1(spRel24, po216).
	hasComponent2(spRel24, po215).
	annotation(spRel24, tok233).


	token(tok234).
	hasText(tok234, "presenta").
	meronomicFluent(merf25).
	ptwhat(merf25, relPtCo25).
	componentObject(relPtCo25).
	hasPart(relPtCo25, po215).
	hasWhole(relPtCo25, po213).
	annotation(relPtCo25,tok234).


	token(tok235).
	hasText(tok235, "palazzo").
	physicalObject(po217).
	annotation(po217,tok235).


	token(tok236).
	hasText(tok236, "area").
	physicalObject(po218).
	annotation(po218,tok236).


	token(tok236).
	hasText(tok236, "grande").
	propertyFluent(fprop28).
	pwhat(fprop28, prop28).
	property(prop28).
	hasName(prop28, "grande").
	hasComponent(prop28, po218).
	hasValue(prop28, "47.000 m").
	annotation(prop28,tok236).


	token(tok237).
	hasText(tok237, "ricopre").
	spatialFluent(spF25).
	swhat(spF25, spRel25).
	covered(spRel25).
	hasComponent1(spRel25, po217).
	hasComponent2(spRel25, po218).
	annotation(spRel25, tok237).




	token(tok238).
	hasText(tok238, "1026 fumaroli").
	physicalObject(po219).
	annotation(po219,tok238).


	token(tok239).
	hasText(tok239, "32 scale").
	physicalObject(po220).
	annotation(po220,tok239).


	token(tok240).
	hasText(tok240, "dispone di").
	meronomicFluent(merf26).
	ptwhat(merf26, relPtCo26).
	componentObject(relPtCo26).
	hasPart(relPtCo26, [po219, po220]).
	hasWhole(relPtCo26, po217).
	annotation(relPtCo26,tok240).


	token(tok240).
	hasText(tok240, "palazzo").
	physicalObject(po221).
	annotation(po221,tok240).


	token(tok241).
	hasText(tok241, "due corpi di fabbricato").
	physicalObject(po222).
	annotation(po222,tok241).


	token(tok242).
	hasText(tok242, "ha").
	meronomicFluent(merf27).
	ptwhat(merf27, relPtCo27).
	componentObject(relPtCo27).
	hasPart(relPtCo27, po222).
	hasWhole(relPtCo27, po221).
	annotation(relPtCo27,tok242).


	token(tok243).
	hasText(tok243, "s’intersecano a croce").
	propertyFluent(fprop29).
	pwhat(fprop29, prop29).
	property(prop29).
	hasName(prop29, "s’intersecano a croce").
	hasComponent(prop29, po222).
	annotation(prop29,tok243).




	token(tok244).
	hasText(tok244, "formano").
	action(act31).
	annotation(act31, tok244).


	functionality(fun21).
	artifact(po222).
	fwhat(fun21, canx21).
	capability(canx21).
	cwhat(canx21, act21).
	cwho(canx21, po222).


	token(tok245).
	hasText(tok245, "quatto cortili").
	physicalObject(po223).
	annotation(po223,tok245).


	token(tok246).
	hasText(tok246, "interni").
	propertyFluent(fprop210).
	pwhat(fprop210, prop210).
	property(prop210).
	hasName(prop210, "interni").
	hasComponent(prop210, po223).
	annotation(prop210,tok246).


	token(tok247).
	hasText(tok247, "molto vasti").
	propertyFluent(fprop211).
	pwhat(fprop211, prop211).
	property(prop211).
	hasName(prop211, "molto vasti").
	hasComponent(prop211, po223).
	hasValue(prop211, "3800 m2").
	annotation(prop211,tok247).


	token(tok248).
	hasText(tok248, "oltre").
	spatialFluent(spF26).
	swhat(spF26, spRel26).
	proximity(spRel26).
	hasComponent1(spRel26, po224).
	hasComponent2(spRel26, po221).
	annotation(spRel26, tok248).








	token(tok249).
	hasText(tok249, "la soglia dell’entrata principale").
	physicalObject(po224).
	annotation(po223,tok249).


	token(tok250).
	hasText(tok250, "vestibolo").
	physicalObject(po225).
	annotation(po223,tok250).


	token(tok251).
	hasText(tok251, "ottagonale").
	propertyFluent(fprop212).
	pwhat(fprop212, prop212).
	property(prop212).
	hasName(prop212, "ottagonale").
	hasComponent(prop212, po225).
	annotation(prop212,tok251).


	token(tok252).
	hasText(tok252, "diametro di").
	propertyFluent(fprop213).
	pwhat(fprop212, prop213).
	property(prop213).
	hasName(prop213, "diametro di").
	hasComponent(prop213, po225).
	hasValue(prop213, "15,22 metri").
	annotation(prop213,tok252).


	token(tok253).
	hasText(tok253, "venti colonne").
	physicalObject(po226).
	annotation(po226,tok253).


	token(tok254).
	hasText(tok254, "doriche").
	propertyFluent(fprop214).
	pwhat(fprop214, prop214).
	property(prop214).
	hasName(prop214, "doriche").
	hasComponent(prop214, po226).
	annotation(prop214,tok254).

	token(tok255).
	hasText(tok255, "adorno di").
	meronomicFluent(merf28).
	ptwhat(merf28, relPtCo28).
	componentObject(relPtCo28).
	hasPart(relPtCo28, po226).
	hasWhole(relPtCo28, po225).
	annotation(relPtCo28,tok255).


	token(tok256).
	hasText(tok256, "passaggi").
	physicalObject(po227).
	annotation(po227,tok256).


	token(tok257).
	hasText(tok257, "si inseriscono").
	action(act22).
	annotation(act22, tok257).


	token(tok258).
	hasText(tok258, "portano ai").
	action(act23).
	annotation(act23, tok258).


	functionality(fun23).
	artifact(po226).
	fwhat(fun23, canx23).
	capability(canx23).
	cwhat(canx23, act23).
	cwho(canx23, po226).


	token(tok259).
	hasText(tok259, "cortili").
	physicalObject(po228).
	annotation(po228,tok259).


	token(tok260).
	hasText(tok260, "interni").
	propertyFluent(fprop215).
	pwhat(fprop215, prop215).
	property(prop215).
	hasName(prop215, "interni").
	hasComponent(prop215, po228).
	annotation(prop215,tok260).


	token(tok261).
	hasText(tok261, "triplice porticato").
	physicalObject(po229).
	annotation(po229,tok261).


	token(tok361).
	hasText(tok361, "frontalmente").
	spatialFluent(spF27).
	swhat(spF27, spRel27).
	proximity(spRel27).
	hasComponent1(spRel27, po228).
	hasComponent2(spRel27, po229).
	annotation(spRel27, tok361).


	token(tok262).
	hasText(tok262, "centro topografico della reggia").
	physicalObject(po230).
	annotation(po230,tok262).


	token(tok263).
	hasText(tok263, "immette al").
	action(act24).
	annotation(act24, tok263).


	functionality(fun24).
	artifact(po229).
	fwhat(fun24, canx24).
	capability(canx24).
	cwhat(canx24, act24).
	cwho(canx24, po229).


	token(tok263).
	hasText(tok263, "terzo vestibolo").
	physicalObject(po231).
	annotation(po231,tok263).


	token(tok263).
	hasText(tok263, "da adito al").
	action(act25).
	annotation(act25, tok263).


	functionality(fun25).
	artifact(po231).
	fwhat(fun25, canx25).
	capability(canx25).
	cwhat(canx25, act25).
	cwho(canx25, po231).


	token(tok264).
	hasText(tok264, "parco").
	physicalObject(po232).
	annotation(po232,tok264).


	token(tok265).
	hasText(tok265, "lato del vestibolo").
	physicalObject(po233).
	annotation(po233,tok265).


	token(tok266).
	hasText(tok266, "ottagonale").
	propertyFluent(fprop216).
	pwhat(fprop216, prop216).
	property(prop216).
	hasName(prop216, "interni").
	hasComponent(prop216, po233).
	annotation(prop216,tok266).


	token(tok267).
	hasText(tok267, "scalone reale").
	physicalObject(po234).
	annotation(po234,tok267).


	token(tok268).
	hasText(tok268, "magnifico").
	propertyFluent(fprop217).
	pwhat(fprop217, prop217).
	property(prop217).
	hasName(prop217, "magnifico").
	hasComponent(prop217, po234).
	annotation(prop217,tok268).


	token(tok269).
	hasText(tok269, "su un").
	spatialFluent(spF28).
	swhat(spF28, spRel28).
	over(spRel28).
	hasComponent1(spRel28, po233).
	hasComponent2(spRel28, po234).
	annotation(spRel28, tok269).


	token(tok270).
	hasText(tok270, "doppia rampa").
	physicalObject(po235).
	annotation(po235,tok270).




	token(tok271).
	hasText(tok271, "a").
	meronomicFluent(merf29).
	ptwhat(merf29, relPtMc21).
	componentObject(relPtMc21).
	hasPart(relPtMc21, po235).
	hasWhole(relPtMc21, po234).
	annotation(relPtMc21,tok271).


	token(tok272).
	hasText(tok272, "largo").
	propertyFluent(fprop218).
	pwhat(fprop218, prop218).
	property(prop218).
	hasName(prop218, "largo").
	hasComponent(prop218, po234).
	hasValue(prop218,"18.50 metri").
	annotation(prop218,tok272).


	token(tok273).
	hasText(tok273, "alto").
	propertyFluent(fprop219).
	pwhat(fprop219, prop219).
	property(prop219).
	hasName(prop219, "alto").
	hasComponent(prop219, po234).
	hasValue(prop219,"14.50 metri").
	annotation(prop219,tok273).


	token(tok274).
	hasText(tok274, "17 gradini").
	physicalObject(po236).
	annotation(po236,tok274).


	token(tok275).
	hasText(tok275, "dotato di").
	meronomicFluent(merf210).
	ptwhat(merf210, relPtMc22).
	componentObject(relPtMc22).
	hasPart(relPtMc22, po236).
	hasWhole(relPtMc22, po235).
	annotation(relPtMc22,tok275).


	token(tok276).
	hasText(tok276, "primo pianerottolo della scalinata").
	physicalObject(po237).
	annotation(po237,tok276).


	token(tok277).
	hasText(tok277, "due leoni").
	physicalObject(po238).
	annotation(po238,tok277).


	token(tok278).
	hasText(tok278, "sul").
	spatialFluent(spF29).
	swhat(spF29, spRel29).
	over(spRel29).
	hasComponent1(spRel29, po237).
	hasComponent2(spRel29, po238).
	annotation(spRel29, tok278).


	token(tok279).
	hasText(tok279, "marmo di Pietro Solari e Paolo Persico").
	physicalObject(po239).
	annotation(po239,tok279).


	token(tok280).
	hasText(tok280, "in").
	meronomicFluent(merf211).
	ptwhat(merf211, relPtMo21).
	componentObject(relPtMo21).
	hasPart(relPtMo21, po239).
	hasWhole(relPtMo21, po238).
	annotation(relPtMo21,tok280).


	token(tok281).
	hasText(tok281, "soffitto").
	physicalObject(po240).
	annotation(po240,tok281).


	token(tok282).
	hasText(tok282, "doppia volta ellittica").
	physicalObject(po241).
	annotation(po241,tok282).


	token(tok283).
	hasText(tok283, "caratterizzato da").
	meronomicFluent(merf212).
	ptwhat(merf212, relPtCo211).
	componentObject(relPtCo211).
	hasPart(relPtCo211, po240).
	hasWhole(relPtCo211, po239).
	annotation(relPtCo211,tok283).




	token(tok284).
	hasText(tok284, "Girolamo Starace-Franchis").
	physicalAgent(pa21).
	annotation(pa21,tok284).


	token(tok285).
	hasText(tok285, "fu affrescato").
	hasText(tok285, "affrescò").
	action(act26).
	hasObject(act26, po240).
	annotation(act26, tok285).


	event(e22).
	what(e22,act26).
	who(e22, po240).
	who(e22, pa21).


	token(tok286).
	hasText(tok286, "parete centrale").
	physicalObject(po243).
	annotation(po243,tok286).


	token(tok287).
	hasText(tok287, "statua di Carlo di Borbone").
	physicalObject(po244).
	annotation(po244,tok287).


	token(tok288).
	hasText(tok288, "Sulla").
	spatialFluent(spF210).
	swhat(spF210, spRel210).
	over(spRel210).
	hasComponent1(spRel210, po243).
	hasComponent2(spRel210, po244).
	annotation(spRel210, tok288).


	token(tok289).
	hasText(tok289, "La Verità").
	physicalObject(po245).
	annotation(po245,tok289).


	token(tok290).
	hasText(tok290, "Il Merito").
	physicalObject(po246).
	annotation(po246, tok290).

	token(tok291).
	hasText(tok291, "affiancata da").
	spatialFluent(spF211).
	swhat(spF211, spRel211).
	proximity(spRel211).
	hasComponent1(spRel211, po244).
	hasComponent2(spRel211, [po245, po246]).
	annotation(spRel211, tok291).


	token(tok292).
	hasText(tok292, "Andrea Violani").
	physicalAgent(pa22).
	annotation(pa22,tok292).


	token(tok293).
	hasText(tok293, "Gaetano Salomone").
	physicalAgent(pa23).
	annotation(pa23,tok293).


	token(tok294).
	hasText(tok294, "fu realizzate").
	hasText(tok294, "realizzò").
	action(act27).
	hasObject(act27, po245).
	annotation(act27, tok294).


	event(e203).
	what(e203,act27).
	who(e203, po245).
	who(e203, pa22).

	event(e213).
	what(e213,act27).
	who(e213, po246).
	who(e213, pa23).

	token(tok295).
	hasText(tok295, "Scalinata").
	physicalObject(po247).
	annotation(po247, tok295).


	token(tok296).
	hasText(tok296, "Ercole latino").
	physicalObject(po248).
	annotation(po248, tok296).


	token(tok297).
	hasText(tok297, "celebre statua classica").
	propertyFluent(fprop220).
	pwhat(fprop220, prop220).
	property(prop220).
	hasName(prop220, "celebre statua classica").
	hasComponent(prop220, po248).
	annotation(prop220,tok297).




	token(tok298).
	hasText(tok298, "di fronte").
	spatialFluent(spF212).
	swhat(spF212, spRel212).
	proximity(spRel212).
	hasComponent1(spRel212, po247).
	hasComponent2(spRel212, po248).
	annotation(spRel212, tok298).


	token(tok299).
	hasText(tok299, "1807").
	dateCalendar(t22).
	year(t22,1807).
	annotation(t22, tok299).


	token(tok2100).
	hasText(tok2100, "fu collocato").
	action(act28).
	hasObject(act28, po248).
	annotation(act28, tok2100).


	event(e23).
	what(e23,act28).
	who(e23, po248).
	when(e23, trel22).
	during(trel22).
	hasTemporalEntity1(trel22, e23).
	hasTemporalEntity2(trel22, t22).


	token(tok2101).
	hasText(tok2101, "agosto 1545").
	dateCalendar(t23).
	year(t23,1545).
	month(t23, 8).
	annotation(t23, tok2101).


	token(tok2102).
	hasText(tok2102, "Terme di Caracalla").
	physicalObject(po401).
	annotation(po401, tok2102).

	token(tok428).
	hasText(tok428, "nelle").
	spatialFluent(spF428).
	swhat(spF428, spRel428).
	contains(spRel428).
	hasComponent1(spRel428, po401).
	hasComponent2(spRel428, po248).
	hasComponent2(spRel428, po249).

	annotation(spRel428, tok428).

	token(tok2103).
	hasText(tok2103, "Ercole Farnese").
	physicalObject(po249).
	annotation(po249, tok2103).

	token(tok2104).
	hasText(tok2104, "rinvenuta").
	action(act29).
	hasObject(act28, po248).
	hasObject(act28, po249).
	annotation(act29, tok2104).

	event(e24).
	what(e24,act29).
	who(e24, po248).
	who(e24, po249).
	where(e24, loc21).
	when(e24, trel23).
	during(trel23).
	hasTemporalEntity1(trel23, e24).
	hasTemporalEntity2(trel23, t23).

	token(tok3105).
	hasText(tok3105, "Museo Archeologico di Napoli").
	physicalObject(po400).
	annotation(po400, tok3105).

	token(tok429).
	hasText(tok429, "al").
	spatialFluent(spF400).
	swhat(spF400, spRel400).
	contains(spRel400).
	hasComponent1(spRel400, po400).
	hasComponent2(spRel400, po249).
	annotation(spRel400, tok429).

	token(tok314).
	hasText(tok314, "conservato").
	action(act210).
	hasObject(act210, po249).
	annotation(act210, tok314).

	event(e25).
	what(e25,act210).
	who(e25, po249).
	where(e25, loc22).


	token(tok2105).
	hasText(tok2105, "Statua").
	physicalObject(po250).
	annotation(po250, tok2105).


	token(tok2106).
	hasText(tok2106, "Angelo Brunelli").
	physicalAgent(pa24).
	annotation(pa24, tok2106).


	token(tok2107).
	hasText(tok2107, "fu restaurata").
	hasText(tok2107, "restaurò").
	action(act211).
	hasObject(act211, po248).
	hasSubject(act211, pa24).
	annotation(act211, tok2107).


	event(e26).
	what(e26,act211).
	who(e26, po248).
	who(e26, pa24).


	token(tok2108).
	hasText(tok2108, "piedistallo").
	physicalObject(po251).
	annotation(po251, tok2108).


	token(tok2109).
	hasText(tok2109, "posta sul").
	spatialFluent(spF213).
	swhat(spF213, spRel213).
	over(spRel213).
	hasComponent1(spRel213, po251).
	hasComponent2(spRel213, po250).
	annotation(spRel213, tok2109).


	token(tok2110).
	hasText(tok2110, "doppia rampa").
	physicalObject(po252).
	annotation(po252, tok2110).


	token(tok2111).
	hasText(tok2111, "vestibolo").
	physicalObject(po253).
	annotation(po253, tok2111).


	token(tok2112).
	hasText(tok2112, "si conclude in").
	meronomicFluent(merf213).
	ptwhat(merf213, relPtCo213).
	componentObject(relPtCo213).
	hasPart(relPtCo213, po253).
	hasWhole(relPtCo213, po252).
	annotation(relPtCo213,tok2112).


	token(tok2113).
	hasText(tok2113, "intera costruzione").
	physicalObject(po254).
	annotation(po254, tok2113).


	token(tok2114).
	hasText(tok2114, "posto al centro del").
	spatialFluent(spF214).
	swhat(spF214, spRel214).
	over(spRel214).
	hasComponent1(spRel214, po254).
	hasComponent2(spRel214, po253).
	annotation(spRel214, tok2114).




	token(tok2115).
	hasText(tok2115, "accesso alla grande cappella Palatina").
	physicalObject(po255).
	annotation(po255, tok2115).


	token(tok2116).
	hasText(tok2116, "di fronte").
	spatialFluent(spF215).
	swhat(spF215, spRel215).
	proximity(spRel215).
	hasComponent1(spRel215, po254).
	hasComponent2(spRel215, po255).
	annotation(spRel215, tok2116).


	token(tok2117).
	hasText(tok2117, "elegante teoria di colonne").
	physicalObject(po256).
	annotation(po256, tok2117).


	token(tok2118).
	hasText(tok2118, "binate").
	propertyFluent(fprop221).
	pwhat(fprop221, prop221).
	property(prop221).
	hasName(prop221, "binate").
	hasComponent(prop221, po256).
	annotation(prop221,tok2118).


	token(tok2119).
	hasText(tok2119, "definito da").
	meronomicFluent(merf214).
	ptwhat(merf214, relPtCo214).
	componentObject(relPtCo214).
	hasPart(relPtCo214, po256).
	hasWhole(relPtCo214, po255).
	annotation(relPtCo214,tok2119).


	token(tok2120).
	hasText(tok2120, "volta a botte").
	physicalObject(po257).
	annotation(po257, tok2120).


	token(tok2121).
	hasText(tok2121, "sostengono").
	action(act2012).
	annotation(act2012, tok2121).




	functionality(fun26).
	artifact(po222).
	fwhat(fun26, canx26).
	capability(canx26).
	cwhat(canx26, act212).
	cwho(canx26, po256).


	token(tok2122).
	hasText(tok2122, "è stato danneggiato").
	action(act212).
	annotation(act212, tok2122).

	token(tok2123).
	hasText(tok2123, "durante la Seconda Guerra Mondiale").
	dateCalendar(t24).
	year(t24,1939).
	annotation(t24, tok2123).

	%token(tok2124).
	%hasText(tok2124, "1945").
	%dateCalendar(t25).
	%year(t25,1945).
	%annotation(t25, tok2124).

	event(e27).
	what(e27,act212).
	who(e27, po255).
	%interval(int21).
	%begin(int21, t24).
	%end(int21, t25).
	when(e27, trel24).
	during(trel24).
	hasTemporalEntity1(trel24, e27).
	hasTemporalEntity2(trel24, t24).

	token(tok2125).
	hasText(tok2125, "organi").
	physicalObject(po258).
	annotation(po258, tok2125).

	token(tok2126).
	hasText(tok2126, "arredi sacri").
	physicalObject(po259).
	annotation(po259, tok2126).




	token(tok2127).
	hasText(tok2127, "perdita").
	action(act213).
	annotation(act213, tok2127).

	event(e28).
	what(e28,act213).
	who(e28, [po258, po259]).
	interval(int22).
	begin(int22, t24).
	end(int22, t25).
	when(e28, trel25).
	during(trel25).
	hasTemporalEntity1(trel25, e28).
	hasTemporalEntity2(trel25, int22).

	causeEvent(ec21).
	cwhy(ec21, crel21).
	causalrelation(crel1).
	hasCause(crel21, e27).
	hasEffect(crel21, e28).
	cwho(ec21, [po258, po259]).
	cwhen(ec21, [rel1000, rel1001]).
	start(rel1000).
	hasTemporalEntity1(rel1000, ec21).
	hasTemporalEntity2(rel1000, e27).
	finish(rel1001).
	hasTemporalEntity1(rel1001, ec21).
	hasTemporalEntity2(rel1001, e28).

	token(tok2128).
	hasText(tok2128, "cappella").
	physicalObject(po260).
	annotation(po260, tok2128).

	token(tok2129).
	hasText(tok2129, "palazzo").
	physicalObject(po261).
	annotation(po261, tok2129).

	token(tok2130).
	hasText(tok2130, "Teatro di Corte").
	physicalObject(po262).
	annotation(po262, tok2130).

	token(tok2131).
	hasText(tok2131, "sul retro").
	spatialFluent(spF216).
	swhat(spF216, spRel216).
	proximity(spRel216).
	hasComponent1(spRel216, po260).
	hasComponent2(spRel216, po262).
	annotation(spRel216, tok2131).

	token(tok2132).
	hasText(tok2132, "all’interno").
	spatialFluent(spF217).
	swhat(spF217, spRel217).
	contains(spRel217).
	hasComponent1(spRel217, po261).
	hasComponent2(spRel217, po262).
	annotation(spRel217, tok2132).

	token(tok2133).
	hasText(tok2133, "capienza").
	propertyFluent(fprop222).
	pwhat(fprop222, prop222).
	property(prop222).
	hasName(prop222, "capienza").
	hasComponent(prop222, po262).
	hasValue(prop222, "450").
	annotation(prop222,tok2133).

	token(tok2134).
	hasText(tok2134, "Ferdinando I delle Due Sicilie").
	physicalAgent(pa25).
	annotation(pa25, tok2134).

	token(tok2135).
	hasText(tok2135, "1769").
	dateCalendar(t26).
	year(t26, 1769).
	annotation(t26, tok2135).

	token(tok2136).
	hasText(tok2136, "fu inaugurato").
	hasText(tok2136, "inaugurò").
	action(act214).
	hasObject(act214, po262).
	hasSubject(act214, pa25).
	annotation(act214, tok2136).

	event(e29).
	what(e29,act214).
	who(e29, pa25).
	who(e29, po262).
	during(trel25).
	when(e29, trel25).
	hasTemporalEntity1(trel25, e29).
	hasTemporalEntity2(trel25, t26).

	token(tok2137).
	hasText(tok2137, "vestibolo").
	physicalObject(po263).
	annotation(po263, tok2137).

	token(tok2138).
	hasText(tok2138, "appartamenti").
	physicalObject(po264).
	annotation(po264, tok2138).

	token(tok2139).
	hasText(tok2139, "a sinistra").
	spatialFluent(spF218).
	swhat(spF218, spRel218).
	left(spRel218).
	hasComponent1(spRel218, po263).
	hasComponent2(spRel218, po264).
	annotation(spRel218, tok2139).



	token(tok2140).
	hasText(tok2140, "sala degli Alabardieri").
	physicalObject(po265).
	annotation(po265, tok2140).


	token(tok2142).
	hasText(tok2142, "dipinti di Domenico Mondo").
	physicalObject(po266).
	annotation(po266, tok2142).

	token(tok3142).
	hasText(tok3142, "Domenico Mondo").
	physicalAgent(pa366).
	annotation(pa366, tok3142).

	token(tok2143).
	hasText(tok2143, "con").
	meronomicFluent(merf215).
	ptwhat(merf215, relPtCo215).
	componentObject(relPtCo215).
	hasPart(relPtCo215, po266).
	hasWhole(relPtCo215, po265).
	annotation(relPtCo215,tok2143).

	token(tok2144).
	hasText(tok2144, "sala delle guardie del corpo").
	physicalObject(po267).
	annotation(po267, tok2144).


	token(tok2146).
	hasText(tok2146, "stile impero").
	propertyFluent(fprop225).
	pwhat(fprop225, prop225).
	property(prop225).
	hasName(prop225, "stile impero").
	hasComponent(prop225, po267).
	annotation(prop225,tok2146).

	token(tok3146).
	hasText(tok3146, "si trova dopo").
	spatialFluent(spF219).
	swhat(spF219, spRel219).
	proximity(spRel219).
	hasComponent1(spRel219, po265).
	hasComponent2(spRel219, po267).
	annotation(spRel219, tok3146).

	token(tok2147).
	hasText(tok2147, "Gaetano Salomone").
	physicalAgent(pa26).
	annotation(pa26, tok2147).

	token(tok2148).
	hasText(tok2148, "Paolo Persico").
	physicalAgent(pa27).
	annotation(pa27, tok2148).

	token(tok2149).
	hasText(tok2149, "Tommaso Bucciano").
	physicalAgent(pa28).
	annotation(pa28, tok2149).

	token(tok2150).
	hasText(tok2150, "arredata").
	action(act215).
	hasObject(act215, po267).
	hasSubject(act215, [pa26, pa27, pa28]).
	annotation(act215, tok2150).

	event(e30).
	what(e30,act216).
	who(e30, [pa26, pa27, pa28]).

	token(tok2151).
	hasText(tok2151, "sala del Baciamano").
	physicalObject(po268).
	annotation(po268, tok2151).

	token(tok2153).
	hasText(tok2153, "Mariano Rossi").
	physicalAgent(pa29).
	annotation(pa29, tok2153).

	token(tok2154).
	hasText(tok2154, "affrescò").
	hasText(tok2154, "fu affrescata").
	action(act216).
	hasObject(act216, po268).
	hasSubject(act216, pa29).
	annotation(act216, tok2154).



	event(e31).
	what(e31,act216).
	who(e31, po268).
	who(e31, pa29).


	token(tok3154).
	hasText(tok3154, "affrescò").
	hasText(tok3154, "fu affrescata").
	action(act316).
	hasObject(act316, po265).
	hasSubject(act316, pa366).
	annotation(act316, tok3154).

	event(e32).
	what(e32,act316).
	who(e32, po265).
	who(e32, pa366).

	token(tok2155).
	hasText(tok2155, "matrimonio tra Alessandro e Rossane").
	physicalObject(po269).
	annotation(po269, tok2155).

	token(tok2156).
	hasText(tok2156, "rappresentò").
	action(act217).
	hasObject(act217, po269).
	hasSubject(act217, pa29).
	annotation(act217, tok2156).

	event(e33).
	what(e33,act217).
	who(e33, pa29).

	token(tok2157).
	hasText(tok2157, "facciata principale").
	physicalObject(po270).
	annotation(po270, tok2157).

	token(tok2158).
	hasText(tok2158, "al centro").
	spatialFluent(spF220).
	swhat(spF220, spRel220).
	contains(spRel220).
	hasComponent1(spRel220, po270).
	hasComponent2(spRel220, po268).
	annotation(spRel220, tok2158).

	token(tok2159).
	hasText(tok2159, "funge da").
	action(act218).
	annotation(act218, tok2159).

	functionality(fun27).
	artifact(po268).
	fwhat(fun27, canx27).
	capability(canx27).
	cwhat(canx27, act218).
	cwho(canx27, po268).


	token(tok2160).
	hasText(tok2160, "disimpegno").
	physicalObject(po271).
	annotation(po271, tok2160).

	token(tok2161).
	hasText(tok2161, "Appartamento Vecchio").
	physicalObject(po272).
	annotation(po272, tok2161).

	token(tok2162).
	hasText(tok2162, "Appartamento Nuovo").
	physicalObject(po273).
	annotation(po273, tok2162).

% APPARTAMENTO NUOVO
	token(tok2163).
	hasText(tok2163, "a destra").
	spatialFluent(spF221).
	swhat(spF221, spRel221).
	right(spRel221).
	hasComponent1(spRel221, po268).
	hasComponent2(spRel221, po272).
	annotation(spRel221, tok2163).

	token(tok3163).
	hasText(tok3163, "a sinistra").
	spatialFluent(spF321).
	swhat(spF321, spRel321).
	left(spRel321).
	hasComponent1(spRel321, po272).
	hasComponent2(spRel321, po268).
	annotation(spRel321, tok3163).

% APPARTAMENTO VECCHIO
	token(tok2164).
	hasText(tok2164, "a sinistra").
	spatialFluent(spF222).
	swhat(spF222, spRel222).
	left(spRel222).
	hasComponent1(spRel222, po268).
	hasComponent2(spRel222, po273).
	annotation(spRel222, tok2164).

	token(tok3164).
	hasText(tok3164, "a destra").
	spatialFluent(spF322).
	swhat(spF322, spRel322).
	right(spRel322).
	hasComponent1(spRel322, po273).
	hasComponent2(spRel322, po268).
	annotation(spRel322, tok3164).

% ORIGINI REGGIA

token(tok11).
hasText(tok11, "Carlo di Borbone").
physicalAgent(pa11).
annotation(pa11, tok11).

token(tok12).
hasText(tok12, "Napoli").
location(loc11).
annotation(loc11, tok12).

token(tok13).
roleFluent(rolF11).
rwhat(rolF11, relrole11).
role(relrole11).
hasName(relrole11, "Re").
hasComponent1(relrole11, pa11).
hasComponent2(relrole11, loc11).
annotation(rolF11, tok13).

token(tok14).
hasText(tok14, "Reggia di Caserta").
physicalObject(po11).
annotation(po11, tok14).

token(tok15).
hasText(tok15,"decise di costruire").
action(act11).
hasObject(act11, po11).
hasSubject(act11, pa11).
annotation(act11, tok15).

event(e11).
what(e11,act11).
who(e11, po11).
who(e11, pa11).

token(tok16).
hasText(tok16,"desideroso di donare a Napoli strutture tali da poter svolgere un ruolo di città-capitale a livello europeo").
mentalFluent(menF11).
mwhat(menF11, mact11).
desire(mact11).
hasAgent(mact11, pa11).
hasEvent(mact11, e11).
annotation(tok16, mact11).

causeEvent(ec11).
cwhy(ec11, crel11).
causalrelation(crel11).
hasCause(crel11, menF11).
hasEffect(crel11, e11).
cwho(ec11, pa11).

token(tok17).
hasText(tok17, "località prescelta").
physicalObject(po12).
annotation(po12, tok17).

token(tok18).
hasText(tok12, "Casertavecchia").
location(loc11).
annotation(loc11, tok12).

token(tok19).
hasText(tok19,"fu").
action(act12).
hasObject(act12, po17).
annotation(tok19, act12).

event(e12).
what(e12,act12).
who(e12, po17).

token(tok110).
hasText(tok110, "capitale").
physicalObject(po13).
annotation(po13, tok110).

token(tok111).
hasText(tok111, "a nord").
spatialFluent(spF11).
swhat(spF11, spRel11).
north(spRel11).
hasComponent1(spRel11, po13).
hasComponent2(spRel11, po12).
annotation(spRel11, tok111).

token(tok112).
hasText(tok112, "Nicola Salvi").
physicalAgent(pa12).
annotation(pa12, tok112).



token(tok113).
hasText(tok113,"rifiuto").
action(act13).
annotation(tok113, act13).

event(e13).
what(e13,act13).
who(e13, pa12).

token(tok114).
hasText(tok114, "sovrano").
physicalAgent(pa13).
annotation(pa13, tok114).

token(tok115).
hasText(tok115, "Luigi Vanvitelli").
physicalAgent(pa14).
annotation(pa14, tok115).

token(tok116).
roleFluent(rolF12).
rwhat(rolF12, relrole12).
role(relrole12).
hasName(relrole12, "architetto").
hasComponent1(relrole12, pa14).
hasComponent2(relrole12, po11).
annotation(rolF12, tok116).

token(tok117).
hasText(tok117,"si rivolse").
action(act14).
hasSubject(act14, pa13).
annotation(tok117, act14).

event(e14).
what(e14,act14).
who(e14, pa13).

causeEvent(ec12).
cwhy(ec12, crel12).
causalrelation(crel12).
hasCause(crel12, e13).
hasEffect(crel12, e14).
cwho(ec12, pa12).
cwhen(ec12, [rel1101, rel1102]).
start(rel1101).
hasTemporalEntity1(rel1101, ec12).
hasTemporalEntity2(rel1101, e13).
finist(rel1102).
hasTemporalEntity1(rel1102, ec12).
hasTemporalEntity2(rel1102, e14).

token(tok118).
hasText(tok118, "Carlo di Borbone").
physicalAgent(pa15).
annotation(pa15, tok118).

token(tok119).
hasText(tok119, "l’area").
physicalObject(po14).
annotation(po14, tok119).

token(tok120).
hasText(tok120, "necessaria").
propertyFluent(fprop11).
pwhat(fprop11, prop11).
property(prop11).
hasName(prop11, "necessaria").
hasComponent(prop11, po14).
annotation(prop11,tok120).

token(tok121).
hasText(tok121, "costo").
propertyFluent(fprop12).
pwhat(fprop12, prop12).
property(prop12).
hasName(prop12, "489343").
hasComponent(prop12, po14).
annotation(prop12,tok121).

token(tok122).
hasText(tok122,"acquistò").
action(act15).
hasObject(act15, po14).
hasSubject(act15, pa15).
annotation(tok122, act15).

event(e15).
what(e15,act15).
who(e15, pa15).
who(e15, po14).

token(tok123).
hasText(tok123, "palazzo cinquecentesco degli Acquaviva").
physicalObject(po15).
annotation(po15, tok123).



token(tok124).
hasText(tok124, "dove sorgeva").
spatialFluent(spF12).
swhat(spF12, spRel12).
contains(spRel12).
hasComponent1(spRel12, po14).
hasComponent2(spRel12, po15).
annotation(spRel12, tok124).

token(tok125).
hasText(tok125, "Vanvitelli").
physicalAgent(pa16).
annotation(pa16, tok125).

token(tok126).
hasText(tok126, "Caserta").
location(loc12).
annotation(loc11, tok126).

token(tok1026).
hasText(tok1026, "1751").
dateCalendar(t11).
year(t11, 1751).
annotation(t11, tok1026).

token(tok127).
hasText(tok127,"giunse").
action(act16).
hasSubject(act16, pa16).
annotation(act16, tok127).

event(e16).
what(e16,act16).
who(e16, pa16).
where(e16, loc12).
when(e16, trel11).
during(trel11).
hasTemporalEntity1(trel11, e16).
hasTemporalEntity2(trel11, t11).

token(tok128).
hasText(tok128, "palazzo").
physicalObject(po16).
annotation(po16, tok128).



token(tok129).
hasText(tok129,"diede inizio alla progettazione").
action(act17).
hasSubject(act17, pa16).
hasObject(act17, po16).
annotation(act17, tok129).

event(e17).
what(e17,act17).
who(e17, pa16).
when(e17, trel12).
during(trel12).
hasTemporalEntity1(trel12, e17).
hasTemporalEntity2(trel12, t12).

token(tok130).
hasText(tok130, "22 novembre 1751").
dateCalendar(t12).
year(t12, 1751).
month(t12, 11).
day(t12, 22).
annotation(t12, tok130).

token(tok131).
hasText(tok131, "Vanvitelli").
physicalAgent(pa17).
annotation(pa17, tok131).

token(tok132).
hasText(tok132, "re di Napoli").
physicalAgent(pa18).
annotation(pa18, tok132).

token(tok133).
hasText(tok133, "progetto definitivo").
physicalObject(po17).
annotation(po17, tok133).

token(tok134).
hasText(tok134,"sottopose").
action(act18).
hasSubject(act18, pa17).
hasObject(act18, po17).
annotation(act18, tok134).



event(e18).
what(e18,act18).
who(e18, pa17).
who(e18, po17).
when(e18, trel13).
during(trel13).
hasTemporalEntity1(trel13, e18).
hasTemporalEntity2(trel13, t12).

token(tok135).
hasText(tok135, "20 gennaio 1752").
dateCalendar(t13).
year(t13, 1752).
month(t13, 1).
day(t13, 20).
annotation(t13, tok135).

token(tok136).
hasText(tok136,"ebbe inizio la costruzione").
action(act19).
hasObject(act19, po16).
annotation(act19, tok136).

event(e19).
what(e19,act19).
who(e19, po16).
when(e19, trel14).
during(trel14).
hasTemporalEntity1(trel14, e19).
hasTemporalEntity2(trel14, t13).

token(tok137).
hasText(tok137, "prima pietra").
physicalObject(po18).
annotation(po18, tok137).

token(tok138).
hasText(tok138,"fu posta").
action(act110).
hasObject(act110, po18).
annotation(act110, tok138).







event(e110).
what(e110,act110).
who(e110, po18).
when(e110, trel15).
during(trel15).
hasTemporalEntity1(trel15, e110).
hasTemporalEntity2(trel15, t13).

token(tok139).
hasText(tok139, "l’opera").
physicalObject(po19).
annotation(po19, tok139).

token(tok140).
hasText(tok140, "faraonica").
propertyFluent(fprop13).
pwhat(fprop13, prop13).
property(prop13).
hasName(prop13, "faraonica").
hasComponent(prop13, po19).
annotation(prop13, tok140).

token(tok141).
hasText(tok141, "Vanvitelli").
physicalAgent(pa19).
annotation(pa19, tok141).

token(tok142).
hasText(tok142,"si circondò").
action(act111).
hasSubject(act111, pa19).
annotation(act111, tok142).

token(tok143).
hasText(tok143, "Marcello Fronton").
physicalAgent(pa110).
annotation(pa110, tok143).

token(tok144).
hasText(tok144, "Francesco Collecini").
physicalAgent(pa111).
annotation(pa111, tok144).

token(tok145).
hasText(tok145, "Martin Biancour").
physicalAgent(pa112).
annotation(pa112, tok141).

event(e111).
what(e111,act111).
who(act111, pa110).
who(act111, pa111).
who(act111, pa112).

token(tok146).
hasText(tok146, "1753").
dateCalendar(t14).
year(t14, 1753).
annotation(t14, tok146).

token(tok147).
hasText(tok147, "parco").
physicalObject(po110).
annotation(po110, tok147).

token(tok148).
hasText(tok148,"venne cominciata la costruzione").
action(act112).
hasObject(act112, pa110).
annotation(act112, tok148).

event(e112).
what(e112,act112).
who(e112, po110).
when(e112, trel16).
during(trel16).
hasTemporalEntity1(trel16, e112).
hasTemporalEntity2(trel16, t14).

token(tok149).
hasText(tok149, "lavori").
physicalObject(po111).
annotation(po111, tok149).

token(tok150).
hasText(tok150, "1752").
dateCalendar(t15).
year(t15, 1752).
annotation(t15, tok150).

token(tok151).
hasText(tok151, "1845").
dateCalendar(t16).
year(t16, 1845).
annotation(t16, tok151).

token(tok152).
hasText(tok152,"continuarono").
action(act113).
hasObject(act113, po111).
annotation(act113, tok152).

event(e113).
what(e113, act113).
who(e113, po111).
interval(int11).
begin(int11, t15).
end(int11, t16).
when(e113, trel17).
during(trel17).
hasTemporalEntity1(trel17, e113).
hasTemporalEntity2(trel17, int11).

token(tok153).
hasText(tok153, "1759").
dateCalendar(t17).
year(t17, 1759).
annotation(t17, tok153).

token(tok154).
hasText(tok154, "Carlo di Borbone di Napoli").
physicalAgent(pa113).
annotation(pa113, tok154).

token(tok155).
hasText(tok155,"salì al trono di Spagna").
action(act114).
hasSubject(act114, pa113).
annotation(act114, tok155).

event(e114).
what(e114, act114).
who(e114, pa113).
when(e114, trel18).
during(trel18).
hasTemporalEntity1(trel18, e114).
hasTemporalEntity2(trel18, t17).

token(tok156).
hasText(tok156,"aveva lasciato Napoli per Madrid").
action(act115).
hasSubject(act115, pa113).
annotation(act115, tok156).

event(e115).
what(e115, act115).
who(e115, pa113).
when(e115, trel19).
during(trel19).
hasTemporalEntity1(trel19, e115).
hasTemporalEntity2(trel19, t17).

token(tok157).
hasText(tok157, "Gioacchino Murat").
physicalAgent(pa114).
annotation(pa114, tok157).

token(tok158).
hasText(tok158, "Ferdinando IV").
physicalAgent(pa115).
annotation(pa115, tok158).

token(tok159).
hasText(tok159, "Francesco I").
physicalAgent(pa116).
annotation(pa116, tok159).

token(tok160).
hasText(tok160, "Ferdinando II").
physicalAgent(pa117).
annotation(pa117, tok160).

token(tok161).
hasText(tok161, "Francesco II").
physicalAgent(pa118).
annotation(pa118, tok161).

token(tok162).
hasText(tok162," succedettero").
action(act116).
hasSubject(act116, pa114).
hasSubject(act116, pa115).
hasSubject(act116, pa116).
hasSubject(act116, pa117).
hasSubject(act116, pa118).
annotation(act116, tok162).

event(e116).
what(e116, act116).
who(e116, pa114).
who(e116, pa115).
who(e116, pa116).
who(e116, pa117).
who(e116, pa118).

token(tok163).
hasText(tok163, "Reggia").
physicalObject(po112).
annotation(po112, tok163).

token(tok164).
hasText(tok164,"contribuì all’abbellimento").
action(act117).
hasSubject(act117, pa114).
hasObject(act117, po112).
annotation(act117, tok164).

event(e117).
what(e117, act117).
who(e117, po112).
who(e117, pa114).

token(tok165).
hasText(tok165,"non contribuirono alla costruzione").
action(act118).
hasSubject(act118, pa115).
hasSubject(act118, pa116).
hasSubject(act118, pa117).
hasSubject(act118, pa118).
hasObject(act118, po112).
annotation(act118, tok165).

event(e118).
what(e118, act118).
who(e118, po112).
who(e118, pa115).
who(e118, pa116).
who(e118, pa117).
who(e118, pa118).


token(tok166).
hasText(tok166, "1 marzo 1773").
dateCalendar(t18).
year(t18, 1773).
month(t18, 03).
day(t18, 1).
annotation(t18, tok166).

token(tok167).
hasText(tok167, "Vanvitelli").
physicalAgent(pa119).
annotation(pa119, tok167).

token(tok168).
hasText(tok168, "morì").
action(act119).
hasSubject(act119, pa119).
annotation(act119, tok168).

event(e119).
what(e119, act119).
who(e119, pa119).
when(e119, trel110).
during(trel110).
hasTemporalEntity1(trel110, e119).
hasTemporalEntity2(trel110, t18).

token(tok169).
hasText(tok169, "figlio Carlo Vanvitelli").
physicalAgent(pa120).
annotation(pa120, tok169).

token(tok170).
hasText(tok170, "successe").
action(act120).
hasSubject(act120, pa120).
annotation(act120, tok170).

event(e120).
what(e120, act120).
who(e120, pa120).
who(e120, pa119).
when(e120, trel111).
after(trel111).
hasTemporalEntity1(trel111, e120).
hasTemporalEntity2(trel111, t18).



token(tok171).
hasText(tok171, "Reggia").
physicalObject(po113).
annotation(po113, tok171).

token(tok172).
hasText(tok172, "partecipò alla costruzione").
action(act121).
hasSubject(act121, pa120).
hasObject(act121, po113).
annotation(act121, tok172).

event(e121).
what(e121, act121).
who(e121, pa120).
who(e121, po113).
when(e121, trel112).
after(trel112).
hasTemporalEntity1(trel111, e121).
hasTemporalEntity2(trel111, t18).

causeEvent(ec13).
cwhy(ec13, crel13).
causalrelation(crel13).
hasCause(crel12, e119).
hasEffect(crel12, e120).
cwho(ec13, pa119).
cwho(ec13, pa120).
cwhen(ec13, [rel1103, rel1104]).
start(rel1103).
hasTemporalEntity1(rel1103, ec13).
hasTemporalEntity2(rel1103, e119).
finist(rel1104).
hasTemporalEntity1(rel1104, ec13).
hasTemporalEntity2(rel1104, e120).

causeEvent(ec14).
cwhy(ec14, crel14).
causalrelation(crel14).
hasCause(crel14, e120).
hasEffect(crel14, e121).
cwho(ec14, pa120).
cwhen(ec14, [rel1105, rel1106]).
start(rel1105).
hasTemporalEntity1(rel1105, ec14).
hasTemporalEntity2(rel1105, e120).
finist(rel1106).
hasTemporalEntity1(rel1106, ec14).
hasTemporalEntity2(rel1106, e121).