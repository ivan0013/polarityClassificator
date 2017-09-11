#!/usr/bin/perl -X

##flag -a=analisador -c=corrector
$flag = shift(@ARGV);

## -a por defeito
if (!defined $flag) {
    $flag = "-a";
}
  
#fronteira de frase:
$Border="SENT";

#identificar nomes de dependencias lexicais (idiomaticas)
$DepLex = "^<\$|^>\$|lex\$" ;


#string com todos os atributos:
$b = "[^ _<>]*" ;

$a = "\\_<${b}>" ; ##todos os atributos
$l =  "\\_<${b}" ; ##atributos parte esquerda
$r =  "${b}>" ;  ##atributos parte direita


###########################GENERATED CODE BY COMPI#############################################

######################################## POS TAGS ########################################
$ADJ = "ADJ_[0-9]+";
$NOUN = "NOUN_[0-9]+";
$PRP = "PRP_[0-9]+";
$ADV = "ADV_[0-9]+";
$CARD = "CARD_[0-9]+";
$CONJ = "CONJ_[0-9]+";
$DT = "DT_[0-9]+";
$PRO = "PRO_[0-9]+";
$VERB = "VERB_[0-9]+";
$I = "I_[0-9]+";
$DATE = "DATE_[0-9]+";
$POS = "POS_[0-9]+";
$PCLE = "PCLE_[0-9]+";
$EX = "EX_[0-9]+";
$Fc = "Fc_[0-9]+";
$Fg = "Fg_[0-9]+";
$Fz = "Fz_[0-9]+";
$Fe = "Fe_[0-9]+";
$Fd = "Fd_[0-9]+";
$Fx = "Fx_[0-9]+";
$Fpa = "Fpa_[0-9]+";
$Fpt = "Fpt_[0-9]+";
$Fca = "Fca_[0-9]+";
$Fct = "Fct_[0-9]+";
$SENT = "SENT_[0-9]+";
$NP = "NOUN_[0-9]+$a|CARD_[0-9]+$a|PRP_[0-9]+${l}nomin:yes${r}|VERB_[0-9]+${l}nomin:yes${r}";
$NOMINAL = "NOUN_[0-9]+$a|PRP_[0-9]+${l}nomin:yes${r}|VERB_[0-9]+${l}nomin:yes${r}";
$NOUNS = "NOUN_[0-9]+$a|CARD_[0-9]+$a|DATE_[0-9]+";
$X = "[A-Z]+_[0-9]+";
$NOTVERB = "[^V][^E]+_[0-9]+";
$PUNCT = "F[a-z]+_[0-9]+";



#################################### LEXICAL CLASSES #####################################
$NEG  = "(?:abajamiento\|abajo\|abandonado\|abandonamiento\|abandonar\|abandono\|abarrotado\|abatidamente\|abatido\|abatimiento\|abatir\|abatirse\|abismado\|abismar\|abobado\|abochornar\|abominable\|abominablemente\|abominacion\|abominación\|abominar\|aborrecer\|aborrecible\|aborreciblemente\|aborrecimiento\|abortar\|aborto\|abrasador\|abrumar\|absolutismo\|absurdo\|aburrido\|aburrimiento\|aburrir\|abusar\|abuso\|abuson\|abusón\|abyecto\|acalorado\|accidentar\|accidente\|achacoso\|achantar\|achaque\|achares\|achicar\|achispado\|acholar\|aciago\|acibarar\|acido\|ácido\|acobardar\|acojonar\|acometedor\|acometer\|acometida\|acometiente\|acometimiento\|acometividad\|acomplejado\|acongojado\|acongojar\|acoquinamiento\|acoquinar\|acosador\|acosar\|acoso\|acre\|acribillar\|acrimonia\|acritud\|acuciante\|acuitadamente\|acuitar\|acusacion\|acusación\|acusar\|adamado\|adefesio\|adhesivo\|adiccion\|adicción\|adicto\|admonición\|admonitorio\|adolecer\|adulterar\|adusto\|adversario\|adversidad\|adversion\|adversión\|adverso\|advertencia\|afan\|afeamiento\|afear\|afeccion\|afección\|afectado\|afectar\|afeminado\|aferrar\|aferrase\|afliccion\|aflicción\|afligidamente\|afligido\|afligir\|afrenta\|afrentar\|afrentoso\|afrontar\|agarrada\|agarrar\|agarron\|agarrón\|agitacion\|agitación\|agitado\|agitar\|agobiado\|agobiante\|agobiantemente\|agobiar\|agobio\|agotamiento\|agravamiento\|agravante\|agravar\|agraviar\|agravio\|agredir\|agresión\|agresividad\|agresivo\|agresor\|agriado\|agrio\|aguafiestas\|aguantar\|aguero\|agüero\|aherrojar\|ahitar\|ahito\|ahíto\|ahogar\|ahogo\|ahuecamiento\|ahuecar\|ahuyentar\|airadamente\|airado\|airamiento\|airar\|ajumado\|alarma\|alarmado\|alarmante\|alarmar\|albedrío\|alborotar\|alboroto\|alcaldada\|alcanzado\|alcoholico\|alcornoque\|alelado\|alelamiento\|alergia\|alérgico\|alertar\|alevosia\|alevosía\|alfilerazo\|alicaido\|alicaído\|alienado\|alifafe\|aliquebrado\|alocado\|altaneria\|altanería\|altanero\|altercación\|altivez\|altiveza\|altivo\|alucinacion\|alucinación\|alucinamiento\|alucinante\|alucinar\|amadamado\|amargado\|amargar\|amargo\|amargor\|amargura\|amariconado\|amaritud\|amedentrar\|amedrentador\|amedrentamiento\|amedrentar\|amenaza\|amenazador\|amenazar\|amilanar\|amohinar\|amolar\|amonestacion\|amonestación\|amonestar\|amoscamiento\|amoscar\|amotinar\|ampolla\|amujerado\|amurriar\|angustia\|angustiadamente\|angustiado\|angustiar\|angustias\|angustiosamente\|angustioso\|anheloso\|añicos\|animadversion\|animadversión\|animal\|animosidad\|aniquilacion\|aniquilación\|aniquilamiento\|aniquilar\|anonadamiento\|anonadar\|añoranza\|ansia\|ansias\|ansiedad\|antagonico\|antagónico\|antagonismo\|antagonista\|antediluviano\|anticuado\|antiguo\|antipatía\|antipatico\|antipático\|antitetico\|antojadizo\|antojo\|anublar\|anular\|apabullar\|aparicion\|aparición\|apenado\|apenar\|apesadumbrado\|apesadumbrar\|apesarar\|apestar\|apestoso\|apetecible\|apiadarse\|aplanamiento\|aplanar\|aplastar\|apocado\|apocalipsis\|apocalíptico\|apocamiento\|apocar\|apoderarse\|apoquinar\|aprension\|aprensión\|aprensivo\|apretura\|aprieto\|aprovechado\|apurado\|apurar\|apuro\|aquejado\|aquejar\|araña\|aranazo\|arañuela\|arbitrariedad\|arido\|árido\|arisco\|arpia\|arrancada\|arrancar\|arrasar\|arrastradamente\|arrastrar\|arrebatamiento\|arrebato\|arredrar\|arremetedor\|arremetida\|arremetimiento\|arrepentimiento\|arrepentir\|arriesgado\|arriesgar\|arrodillarse\|arrogancia\|arrogante\|arrojar\|arruinar\|artero\|artificial\|asalto\|asar\|asco\|asechanza\|asecho\|asediar\|asesinar\|asesinato\|asesino\|asimetria\|asolar\|aspereza\|asqueadamente\|asqueado\|asquear\|asquerosamente\|asquerosidad\|asqueroso\|astenia\|astringir\|astroso\|astuto\|asurar\|asustadizo\|asustar\|atacar\|atafagar\|ataque\|atarantado\|atemorizado\|atemorizante\|atemorizar\|aterrado\|aterrador\|aterradoramente\|aterrar\|aterrorizador\|aterrorizar\|atizar\|atolladero\|atolondrar\|atontamiento\|atontar\|atormentadamente\|atormentar\|atosigar\|atrabiliario\|atracador\|atrapar\|atrasar\|atrevido\|atrevimiento\|atribulacion\|atribulación\|atribular\|atrición\|atrocidad\|atronar\|atropellar\|atropello\|atroz\|atufar\|atufo\|aturdido\|aturdimiento\|aturdir\|aturrullar\|aturullar\|audacia\|austeridad\|austero\|autoritarismo\|avergonzado\|avergonzar\|aversion\|aversión\|avieso\|avilantez\|aviso\|azarar\|azaroso\|azoramiento\|azorar\|azuzar\|babieca\|bacalada\|bacanal\|bajar\|bajo\|bajon\|bajón\|baladron\|baldón\|bandullo\|baquetear\|barbaridad\|barbarie\|barbaro\|bárbaro\|Barrabás\|barrabasada\|barreduras\|barrila\|barullero\|barullo\|basca\|bascosidad\|bascoso\|basto\|basura\|basurero\|batallar\|batir\|bazofia\|bebido\|befa\|belcebú\|belial\|belico\|bélico\|belicosidad\|belicoso\|beligerante\|belitre\|bellaco\|beocio\|beodo\|berenjenal\|berrenchín\|berrinche\|bestia\|bilioso\|bilis\|birlar\|birria\|bizco\|bloquear\|bobada\|bobalicon\|bobalicón\|bobo\|bocas\|bocazas\|bochinche\|bocon\|bode\|bodoque\|bodrio\|borde\|borracho\|botarate\|braveza\|bravo\|bravucon\|bravucón\|bravura\|brega\|bribon\|bribón\|bromista\|bronca\|broncas\|bronquina\|brote\|bruja\|brujo\|brutal\|bruto\|buco\|bufar\|bullanguero\|bullicio\|bunuelo\|burla\|burlar\|burlesco\|burro\|buscarruidos\|cabeza\|cabezon\|cabezón\|cabezota\|cabizbajo\|cabizcaído\|cabreado\|cabrear\|cabreo\|cabron\|cabrón\|cabronada\|caca\|cacao\|cachano\|cacicada\|caco\|cadaver\|cadáver\|caer\|caerse\|cagada\|cagado\|cagao\|cagaos\|cagarria\|cagarría\|cagon\|cagón\|caida\|caída\|caído\|calaca\|calamidad\|calamitoso\|calamocano\|calavera\|callado\|callar\|calofrío\|calosfrío\|calvario\|calvatrueno\|camelar\|camello\|camelo\|camorra\|camorrero\|camorrista\|canalla\|cancamurria\|canguelo\|canibal\|caníbal\|cansado\|cansancio\|cansar\|cantada\|cante\|caos\|capricho\|caprichoso\|caprichudo\|capullo\|caradura\|carajo\|carcel\|cárcel\|cardenal\|carecer\|carga\|cargante\|cargar\|cargo\|cargoso\|carniceria\|carnicería\|carnicero\|caro\|carroña\|carterista\|cascarrabias\|castigo\|cataclismo\|catastrofe\|catastrofico\|catastrófico\|caucion\|caución\|caustico\|cáustico\|cavernas\|cavernicola\|cavernícola\|caviloso\|cebo\|ceder\|cegajo\|cegar\|cegato\|ceja\|celos\|celoso\|censura\|censurable\|censurar\|ceporro\|cerdo\|cernicalo\|cernícalo\|cerrado\|cerrar\|cetrino\|chabacaneria\|chabacanería\|chabacano\|chachi\|chalado\|chalar\|chapucero\|chapuza\|chapuzada\|chapuzas\|charro\|chasco\|chasquear\|chatarra\|chiflado\|chillar\|chillon\|chillón\|chinchar\|chinche\|chinchorrero\|chinchoso\|chirlo\|chismorreo\|chispo\|chivo\|chocar\|choque\|chorizar\|chorizo\|chorra\|chorrada\|chorras\|chufleta\|chulear\|chuleria\|chulería\|cicatriz\|ciego\|cinico\|cínico\|cinismo\|cipote\|cizaña\|cizañar\|clamor\|coaccion\|coacción\|coaccionar\|coágulo\|coartar\|cobarde\|cobardía\|cobardica\|cochinada\|cochino\|cocolía\|cócora\|codicia\|codiciable\|codiciar\|codicioso\|coercer\|cogitabundo\|cohibición\|cohibidamente\|cohibir\|cojon\|cojón\|cojonera\|cojoneras\|cojonero\|cojoneros\|colera\|cólera\|coléricamente\|colerico\|colérico\|comalia\|combate\|cometer\|compadecer\|compadecerse\|competencia\|competidor\|complejo\|complicacion\|complicación\|complicar\|comportar\|comprimir\|compunción\|compungidamente\|compungido\|compungir\|comun\|común\|coñazo\|concitar\|concupiscencia\|condena\|condenación\|condenar\|condolencia\|condoler\|condolerse\|conflicto\|confrontacion\|confundir\|confusion\|confusión\|confuso\|congelacion\|congelación\|congelar\|congoja\|congojar\|congojoso\|conllevar\|conminar\|conmiseracion\|conmocion\|conmoción\|conmocionar\|conmovedor\|conmovido\|coño\|consternacion\|consternación\|consternado\|consternar\|constreñir\|consumir\|consumista\|consumo\|contagiar\|contaminar\|contener\|contienda\|contradiccion\|contraer\|contraerse\|contrahacer\|contraponer\|contraproducente\|contrariar\|contrariedad\|contrario\|contratiempo\|contricción\|contrición\|contristado\|contristar\|contrito\|conturbar\|contusion\|convulsión\|copago\|copete\|corajudo\|corito\|corroer\|corromper\|corrupcion\|corrupción\|corrupto\|cortante\|cortar\|cortedad\|corto\|costar\|costurón\|cotilla\|cotillear\|cotilleo\|cotorra\|cotorreo\|cotorrera\|crac\|craso\|crespo\|criatura\|crimen\|criminal\|crisis\|crispar\|criticar\|crucificar\|cruel\|crueldad\|cruento\|cuajarón\|cuajo\|cuatrero\|cuenta\|cuento\|cuestion\|cuestión\|cuestionable\|cuidado\|cuita\|cuitado\|culpa\|culpabilidad\|culpable\|culpado\|culpar\|culposo\|cultureta\|curdela\|curioso\|cutre\|cutreria\|cutrería\|cutrerio\|cutrerío\|cutrez\|dañar\|danino\|dañino\|daño\|danoso\|dañoso\|debacle\|debil\|débil\|debilidad\|debilitar\|debilitarse\|debilmente\|debilmente\|decaer\|decaido\|decaído\|decaimiento\|decencia\|decente\|decentemente\|decepcion\|decepción\|decepcionante\|decepcionar\|defecto\|defectuoso\|deficiencia\|deficiente\|deficit\|déficit\|deformación\|deforme\|defraudador\|defraudar\|degeneracion\|degeneración\|degradar\|dejadez\|dejar\|dejarse\|dejazón\|delatar\|deletereo\|delicado\|delincuente\|deliquio\|delirio\|delito\|delusión\|demandar\|demasía\|demencia\|demente\|demoler\|demolicion\|demolición\|demonche\|demongo\|demonio\|demontre\|denegacion\|denegación\|denigrante\|denigrar\|denostar\|dentera\|denuesto\|denunciar\|deplorable\|deplorablemente\|deplorar\|depravado\|depravar\|depre\|depresion\|depresión\|depresivo\|deprimente\|deprimido\|deprimir\|derribado\|derribar\|derrocar\|derrochar\|derroche\|derrota\|desabrido\|desabrigo\|desafecto\|desafiar\|desafilado\|desafio\|desaforo\|desafortunado\|desafuero\|desagradable\|desagradablemente\|desagradar\|desagradecido\|desagrado\|desaguisado\|desahogado\|desairar\|desaire\|desalentadamente\|desalentado\|desalentador\|desalentar\|desalentarse\|desaliento\|desalmado\|desalmar\|desalojar\|desalojo\|desamparar\|desamparo\|desanimado\|desanimar\|desanimarse\|desánimo\|desapacible\|desaparecer\|desapiadado\|desaprensión\|desaprobación\|desaprobar\|desaquellar\|desarrapado\|desarreglo\|desasosegado\|desasosegar\|desasosiego\|desastrado\|desastre\|desastroso\|desatender\|desatento\|desavenencia\|desazon\|desazón\|desazonar\|desbarajuste\|desbocado\|descabalado\|descaecimiento\|descaminar\|descarado\|descaro\|descocado\|descoco\|descomedimiento\|descomponer\|descomposición\|descomposicón\|descompostura\|descompuesto\|descomunal\|desconcertar\|desconcierto\|desconfiado\|desconfianza\|desconfiar\|desconformidad\|desconocido\|desconsolado\|desconsolador\|desconsolar\|desconsuelo\|descontentar\|descontento\|descontrol\|descontrolar\|descorazonamiento\|descorazonar\|descortes\|descuajar\|descuello\|descuidar\|descuido\|desden\|desdén\|desdenar\|desdeñar\|desdicha\|desdichado\|deseable\|desechar\|desecho\|desencadenamiento\|desencantar\|desencanto\|desenfadado\|desengañar\|desengano\|desengaño\|desenvuelto\|desesperacion\|desesperación\|desesperadamente\|desesperado\|desesperante\|desesperanza\|desesperanzar\|desesperar\|desespero\|desestabilizacion\|desestabilización\|desestabilizar\|desestimacion\|desestimar\|desestimular\|desfachatado\|desfachatez\|desfallecer\|desfallecimiento\|desfasado\|desfavorable\|desgalillarse\|desgañitarse\|desgarbado\|desgargantarse\|desgarrador\|desgarro\|desgastar\|desgaznatarse\|desgracia\|desgraciado\|desgraciar\|deshabitado\|deshecho\|deshincharse\|deshonesto\|deshonor\|deshonra\|deshonrar\|desiderable\|desierto\|desigual\|desigualdad\|desilusion\|desilusión\|desilusionar\|desinflar\|desistir\|deslavado\|deslealtad\|deslenguado\|deslucir\|deslumbrante\|desmadejado\|desmalazado\|desmán\|desmanado\|desmayadamente\|desmayado\|desmayar\|desmayo\|desmazalado\|desmedrar\|desmentir\|desmesurado\|desmoralización\|desmoralizador\|desmoralizante\|desmoralizar\|desmotivar\|desnaturalizar\|desnudar\|desnudo\|desolacion\|desolación\|desolado\|desolar\|desorbitado\|desorden\|desorientado\|desorientar\|despavorido\|despavorir\|despecho\|despectivo\|despedida\|despedir\|despeluznante\|despeluznar\|despeño\|desperdicio\|despiadadamente\|despiadado\|despido\|despilfarro\|despistar\|desplacer\|despoblado\|despojar\|desposeer\|despotismo\|desprecavido\|despreciable\|despreciar\|desprecio\|desprestigiar\|desprevenido\|desprivar\|desprotección\|desprotegido\|desquiciante\|desquiciar\|desquite\|destartalado\|destemplado\|destemplanza\|destemplar\|destemple\|destrozar\|destrozo\|destrucción\|desunion\|desunión\|desvalido\|desvalijar\|desvalimiento\|desvanecimiento\|desvarío\|desventajoso\|desventura\|desventurado\|desvergonzado\|desverguenza\|desvergüenza\|desviacion\|desviación\|detener\|detestable\|detestablemente\|detestación\|detestar\|detonador\|detrimento\|deuda\|deudor\|devastador\|devastadoramente\|devastar\|diablillo\|diablo\|diabólico\|dianche\|diaño\|diantre\|diarrea\|dictador\|dictadura\|dictatorial\|dicterio\|dificil\|dificilmente\|dificultad\|dificultar\|dificultoso\|dimisión\|dimitir\|diola\|dios\|disconformidad\|discordancia\|discordante\|discordia\|discrepancia\|discrepar\|discusion\|discusión\|diseminado\|disensión\|disentimiento\|disgustado\|disgustar\|disgusto\|disparatado\|disparate\|displacer\|disputa\|distanciamiento\|distanciar\|distante\|distraído\|disturbios\|diverso\|división\|dolencia\|doler\|dolerse\|dolido\|doliente\|dolor\|dolorido\|doloroso\|doloso\|duda\|dudar\|dudoso\|duelo\|duro\|ebrio\|echador\|efimero\|efímero\|elacion\|embarazado\|embarazar\|embarazoso\|embargar\|embate\|embestida\|embestir\|embobamiento\|embobar\|embobecer\|embotado\|embotamiento\|embotar\|embravecer\|embravecido\|embriagado\|embrollo\|embrutecer\|embuste\|empachar\|empacho\|empalagamiento\|empalagar\|empalagoso\|empedernido\|empeñar\|empeñarse\|empeorar\|emperrarse\|empobrecido\|empobrecimiento\|emponzoñar\|emporcar\|enajenación\|enajenado\|enajenamiento\|enajenar\|encabritar\|encalabrinar\|encanijar\|encanijarse\|encarecer\|encasillar\|encasillarse\|encastillarse\|enchufado\|enchufismo\|encocorar\|encoger\|encogerse\|encogido\|encogimiento\|encolerizado\|encolerizar\|enconar\|encono\|encontronazo\|encorajinar\|encuitar\|endeblez\|endemoniado\|endemoniar\|endeudar\|endeudarse\|endiablado\|endiosamiento\|enemiga\|enemigo\|enemistad\|enemistoso\|enervar\|enfadado\|enfadar\|enfado\|enfadoso\|enfermedad\|enfermizo\|enfermo\|enfierecido\|enflaquecer\|enfrentar\|enfriar\|enfurecer\|enfurecido\|enfurecimiento\|enfurruñado\|enfurruñamiento\|enfurruñar\|engañar\|engaño\|engañoso\|engendro\|engorro\|engorroso\|engreído\|engreimiento\|enloquecedor\|enloquecer\|enloquecimiento\|enlutar\|enojadizo\|enojado\|enojamiento\|enojar\|enojo\|enojosamente\|enojoso\|enrabiar\|enrabietar\|enredo\|enronquecer\|ensañamiento\|ensañar\|ensombrecer\|ensuciar\|enternecedor\|entontecer\|entontecimiento\|entorpecer\|entorpecimiento\|entramparse\|entremetido\|entristecedor\|entristecer\|entristecimiento\|entrometido\|entuerto\|envalentonamiento\|envanecimiento\|envenenar\|enviciar\|envidia\|envidioso\|envilecer\|enzarzar\|equivocacion\|equivocación\|equivocar\|equivocarse\|ere\|errar\|erroneo\|erróneo\|error\|erupcion\|escalofriante\|escalofrio\|escalofrío\|escama\|escamado\|escamarse\|escamón\|escamotear\|escandalizar\|escandalo\|escándalo\|escandaloso\|escaquear\|escaqueo\|escaramuza\|escarmentar\|escasear\|escasez\|escaso\|escombrera\|escombro\|esconder\|escoria\|escoriar\|escrúpulo\|escrupuloso\|espantable\|espantadizo\|espantado\|espantajo\|espantar\|espanto\|espantoso\|espavorido\|espectro\|especulación\|especulador\|especular\|espeluznante\|espeluznar\|esperpento\|espina\|espinoso\|esplín\|espoliación\|espoliador\|espoliar\|espolio\|estafa\|estafador\|estafar\|estantigua\|esteril\|estéril\|estiércol\|estigma\|estirado\|estólido\|estomagar\|estorbar\|estorbo\|estrafalario\|estragar\|estrambotico\|estrechez\|estrellar\|estremecedor\|estremecer\|estremecimiento\|estrepada\|estricto\|estridente\|estropear\|estropicio\|estruendo\|estulto\|estupefacción\|estupefacto\|estupido\|estúpido\|estupor\|eta\|evacuación\|evasion\|evasión\|evasivo\|exabrupto\|exacerbación\|exacerbante\|exacerbar\|exageracion\|exageracion\|exagerado\|exagerar\|exasperacion\|exasperación\|exasperante\|exasperar\|excandecencia\|excederse\|excentricidad\|excentrico\|excéntrico\|exceso\|excremento\|execrable\|execrablemente\|execracion\|execración\|execrar\|exigir\|exiguidad\|exiguo\|exorbitante\|exorcismo\|éxtasis\|extenuación\|exterminacion\|exterminio\|extorsion\|extorsión\|extralimitación\|extralimitarse\|extrañamente\|extrañar\|extrañeza\|extraño\|extravagante\|extremo\|facha\|facistol\|factura\|fallo\|falsear\|falsificable\|falsificado\|falsificar\|falta\|faltar\|falto\|fanfarron\|fanfarron\|fantasioso\|fantasma\|fantasmagórico\|fantasmal\|fantasmón\|fantochada\|fantoche\|farolero\|fastidiado\|fastidiante\|fastidiar\|fastidio\|fastidioso\|fatal\|fatalidad\|fatídico\|fatiga\|fatigado\|fatigar\|fatigas\|fatigoso\|fatuo\|favoritismo\|fealdad\|feisimo\|feísimo\|felonía\|femil\|femíneo\|feminoide\|feo\|ferocidad\|feroz\|ferozmente\|fetidez\|fétido\|fiasco\|ficticio\|fiera\|fiereza\|fiero\|fijacion\|fila\|financiero\|fisgon\|fisgón\|flaquear\|flaqueza\|flatulencia\|flébil\|flojear\|flojedad\|flojera\|flojo\|fobia\|forzar\|fosco\|fracaso\|fraude\|fregar\|frenar\|frenético\|frescales\|fresco\|frescura\|frio\|frío\|friolento\|friolero\|fruncir\|frustación\|frustración\|frustrar\|fuera\|fugaz\|fulana\|fundamentalista\|fúnebre\|fúnebremente\|funeral\|funerario\|funéreo\|funesto\|furia\|furibundamente\|furibundo\|furiosamente\|furioso\|furor\|fusco\|fustigar\|futilidad\|gafe\|gafedad\|galimatías\|gallina\|gallito\|galopín\|gamberrismo\|gamberro\|ganoso\|gánster\|gansterismo\|gases\|gastar\|gasto\|gato\|gazapaton\|gazapo\|gelatinoso\|gemido\|gemir\|genio\|gibar\|gilipollas\|glacial\|glutinoso\|golpe\|golpear\|gorila\|gorron\|gorrón\|gorronear\|granuja\|grave\|gravedad\|gresca\|grima\|gris\|gritar\|grito\|grogui\|groseria\|grosero\|grumo\|grunon\|gruñon\|gruñón\|guasa\|guerra\|guerrear\|gueto\|gusano\|hahaha\|hahahaha\|hahahahaha\|hahahahahaha\|hahahahahahaha\|hahshahaha\|hambre\|hampon\|harpia\|harpía\|hartar\|harto\|hastiado\|hastiar\|hastio\|hastío\|hastioso\|hecatombe\|hechicero\|heder\|hediondez\|hediondo\|hedor\|helado\|helar\|hematoma\|hemicránea\|herida\|herido\|herir\|hesitación\|hiel\|hierba\|hinchado\|hinchazon\|hinchazón\|hipocondría\|histeria\|histéricamente\|histerico\|histérico\|histerismo\|historia\|homosexual\|hongos\|horrendamente\|horrendo\|horrible\|horriblemente\|horrido\|hórrido\|horrificar\|horripilación\|horripilante\|horripilar\|horrísono\|horror\|horrorizado\|horrorizante\|horrorizar\|horrorosamente\|horroroso\|horroso\|hortera\|hosco\|hostia\|hostiar\|hostiazo\|hostigador\|hostigar\|hostil\|hostilidad\|hostilizar\|huelga\|huerfano\|huérfano\|huevo\|huidizo\|huir\|humillacion\|humillación\|humillante\|humillar\|humorada\|hundido\|hundir\|hundírsele\|hurtar\|idealizar\|idiota\|idiotez\|idiotizar\|ido\|ignominia\|ignominioso\|ignorancia\|ignorante\|ignorar\|igüedo\|ilegal\|ilegalidad\|ilegalización\|ilegalizar\|ilegalmente\|ilicito\|ilícito\|ilicitud\|iluso\|ilusorio\|imaginario\|imbecil\|imbécil\|imodesto\|impacientar\|impávido\|impedimento\|impedir\|imperativo\|imperfeccion\|imperfección\|imperfecto\|impersonal\|impertinencia\|impertinente\|impio\|impío\|imponente\|imponer\|importunar\|importuno\|imposibilidad\|imposibilitar\|imposible\|impotencia\|impotente\|impreciso\|impresionado\|improbar\|improductivo\|improperio\|imprudente\|impudencia\|impudico\|impúdico\|impudor\|impuesto\|impuro\|imputar\|inaceptable\|inadecuado\|inadmisible\|inaguantable\|inapropiado\|incapacidad\|incapaz\|incasto\|incendio\|incertidumbre\|incivilizado\|incomodar\|incomodidad\|incomodo\|incómodo\|incompetencia\|incompleto\|inconcebible\|inconfidencia\|inconforme\|inconformidad\|incongruente\|inconsolable\|incontinencia\|incontinente\|incontrol\|incordiar\|incordio\|incrédulo\|incremento\|increpacion\|increpación\|incumplir\|indecencia\|indecente\|indecisión\|indeciso\|indecoroso\|indeterminación\|indeterminado\|indigencia\|indigente\|indigestarse\|indignación\|indignado\|indignante\|indignar\|indigno\|indiscreto\|indisponer\|indisposición\|indispuesto\|indistinguible\|indomado\|ineficacia\|ineficaz\|ineptitud\|inepto\|inestable\|inexperiencia\|inexperto\|infamar\|infame\|infamia\|infantil\|infantilismo\|infantiloide\|infartar\|infarto\|infausto\|infección\|infectar\|infecto\|infecundo\|infelicidad\|infeliz\|infelizmente\|inferior\|infestar\|inficionar\|infidelidad\|infiel\|inflacion\|inflación\|inflacionista\|inflexible\|infortunado\|infortunio\|infrahumano\|inframundo\|infructuoso\|ingratitud\|ingrato\|inhabitado\|inhumano\|inicuo\|iniquidad\|injuria\|injuriante\|injuriar\|injurioso\|injustamente\|injusticia\|injusto\|inmadurez\|inmaduro\|inmodestia\|inmolar\|inmoral\|inmoralidad\|inmundicia\|inmundo\|innoble\|inopia\|inoportuno\|inquietante\|inquietantemente\|inquietar\|inquieto\|inquietud\|inquina\|inquisitorial\|insaciable\|insalubre\|insalubridad\|insania\|insano\|insatisfaccion\|insatisfacción\|insatisfecho\|insecto\|inseguridad\|inseguro\|insensibilidad\|insensible\|insidia\|insidiosamente\|insidioso\|insignificancia\|insignificante\|insistencia\|insistente\|insistentemente\|insistir\|insolencia\|insolente\|insolito\|insólito\|insolvencia\|insolvente\|insoportable\|insoportablemente\|insostenible\|insubordinado\|insubordinar\|insuficiente\|insuficientemente\|insufrible\|insulsamente\|insulso\|insultante\|insultar\|insulto\|insultos\|insurreccion\|insurrección\|insurreccionar\|interceptar\|interferencia\|interferir\|interponer\|interponerse\|interrumpir\|intimidacion\|intimidación\|intimidar\|intimidatorio\|intolerable\|intranquilidad\|intranquilizar\|intranquilo\|intransigencia\|intransigente\|intratable\|intrigante\|intrigar\|intrusion\|intrusión\|inundacion\|inundación\|inundar\|inutil\|inútil\|inutilidad\|invadir\|invalidar\|invalidez\|invalido\|inválido\|invasion\|invasión\|inventado\|inverecundia\|inverecundo\|inverosimil\|inverosímil\|invertido\|invitación\|ira\|iracundia\|iracundo\|irascible\|irreal\|irrealidad\|irregular\|irregularmente\|irresoluble\|irresolución\|irresoluto\|irrespetuosamente\|irrespetuoso\|irrespirable\|irresponsabilidad\|irresponsable\|irresponsablemente\|irritabilidad\|irritable\|irritacion\|irritación\|irritado\|irritante\|irritar\|jactancia\|jactancioso\|jactarse\|jaleo\|jamacuco\|jamás\|jaque\|jaqueca\|jaqueton\|jeringar\|jeta\|jinda\|jindama\|jo\|jorguín\|jorobar\|juicio\|lacerar\|laceria\|lacería\|lacrimoso\|ladino\|ladron\|ladrón\|lágrima\|lagrimar\|lágrimas\|lagrimear\|lagrimoso\|laido\|lamentable\|lamentablemente\|lamentacion\|lamentación\|lamentar\|lamento\|lamentoso\|lánguidamente\|languido\|lánguido\|lapsus\|larga\|lascivia\|lascivo\|lastima\|lastimar\|lastimeramente\|lastimero\|lastimoso\|lata\|latoso\|leche\|lelo\|lenguaraz\|lengüicorto\|lentitud\|lento\|lepra\|leproso\|lesion\|lesión\|letal\|letalmente\|leviatán\|ley\|libertad\|libidinoso\|licencioso\|lidiar\|limpiar\|lio\|lío\|lipotimia\|lisiado\|lisiadura\|listilla\|listillas\|listillo\|listillos\|litigio\|liviano\|llamativo\|llanto\|llorar\|llorica\|lloriquear\|lloro\|lloron\|llorón\|lloroso\|lóbregamente\|lobrego\|lóbrego\|lobreguez\|locatis\|loco\|locura\|lúbrico\|lucifer\|luctuosamente\|luctuoso\|lugubre\|lúgubre\|lugubres\|lujuria\|lujurioso\|luto\|lutoso\|luzbel\|macabro\|machacar\|machaque\|magulladura\|magullar\|majadero\|majar\|majara\|majareta\|mal\|malandante\|malandanza\|malasangre\|malatía\|malaventura\|malaventurado\|malcontento\|malcriado\|malcriar\|maldad\|maldicion\|maldición\|maldispuesto\|maldito\|malear\|maleducado\|maleducar\|maleficio\|malevolo\|malévolo\|malhablado\|malhadado\|malhechor\|malhumor\|malhumorado\|malhumorar\|malicia\|maliciar\|maliciarse\|malignamente\|malignidad\|maligno\|malo\|malograr\|malogro\|malparado\|malpensado\|malpensar\|malquerencia\|malquistamiento\|maltratado\|maltratar\|maltrecho\|malvadamente\|malvado\|mamarrachada\|mamarracho\|mamon\|mamón\|mamonazo\|manazas\|mancha\|mancilla\|manejo\|mania\|manía\|maniático\|manipulable\|manipulación\|manipular\|maquinar\|marana\|marchitar\|marear\|marica\|maricon\|maricón\|maricona\|mariconada\|mariquita\|marmolillo\|marrano\|martirio\|martirizar\|masacre\|mata\|matamoros\|matanza\|matar\|maton\|matón\|matraca\|mechera\|mechero\|medrana\|medroso\|mefítico\|mejorable\|melancolia\|melancolía\|melancólicamente\|melancolico\|melancólico\|melon\|melón\|memez\|memo\|mendrugo\|menesteroso\|mengua\|menguado\|menguante\|menguar\|meningitis\|menos\|menospreciar\|menosprecio\|mentir\|mentira\|mentiroso\|mezquinamente\|mezquindad\|mezquino\|miedicas\|mieditis\|miedo\|miedoso\|mierda\|migajas\|migraña\|minar\|minimo\|mínimo\|miramiento\|miserable\|miserablemente\|míseramente\|miseria\|misero\|mísero\|misérrimamente\|misterioso\|mistificar\|mixto\|moco\|mohína\|mohíno\|mohoso\|moler\|molestado\|molestar\|molestia\|molesto\|molestoso\|monición\|monotono\|monótono\|monstruo\|monstruosamente\|monstruoso\|morbido\|mórbido\|morbo\|morbositat\|morboso\|mordaz\|moribundo\|morir\|morriña\|mortal\|mortalidad\|mortalmente\|mortandad\|mortifero\|mortificacion\|mortificación\|mortificar\|mortuorio\|mosca\|mosconear\|motejar\|mounstro\|movida\|mucosidad\|mudo\|muerte\|muerto\|mugre\|murria\|mustiamente\|mustio\|nada\|nausea\|náusea\|nauseabundamente\|nauseabundo\|nausear\|náuseas\|nausebundo\|nauseoso\|nazi\|nazismo\|neblina\|nebuloso\|necedaz\|necesidad\|necesitado\|necio\|nefasto\|negacion\|negación\|negar\|negatividade\|negativo\|negro\|negrura\|nequicia\|nervioso\|niebla\|noble\|nocivo\|noqueado\|noquear\|normalucho\|nostalgia\|nostálgico\|novatada\|novato\|novelero\|nublar\|nulidad\|nulo\|nunca\|óbice\|objetar\|obligado\|obligar\|obscenidad\|obsceno\|obscuridad\|obscuro\|obsesion\|obsesión\|obsesionante\|obsesivo\|obsoleto\|obstaculizar\|obstaculo\|obstáculo\|obstinacion\|obstinación\|obstinarse\|obtuso\|ocultacion\|ocultación\|ocultar\|oculto\|odiar\|odio\|odiosamente\|odioso\|ofender\|ofensa\|ofensividad\|ofensivo\|ofrecerse\|ofuscación\|ofuscamiento\|ofuscar\|ojeriza\|ojo\|olvidadizo\|olvido\|ominar\|ominoso\|omitir\|onerosamente\|opacidad\|opaco\|oponer\|oportunismo\|oportunista\|oposicion\|opresion\|opresión\|opresivamente\|opresivo\|oprimente\|oprimir\|oprobio\|oprobioso\|orate\|ordinario\|ordinariez\|oreja\|orejudo\|orfandad\|orina\|orinar\|osadía\|oscuramente\|oscurecer\|oscuridad\|oscuro\|ostentoso\|ostia\|ostiar\|ostiazo\|pacato\|pachorra\|pachorrento\|paciente\|padecer\|padecimiento\|palidecer\|palido\|pálido\|palo\|palurdo\|pánico\|panico\|papanatas\|papanatismo\|parado\|parasito\|parásito\|parcial\|parida\|paridas\|paripé\|paro\|parodia\|partir\|pasado\|pasma\|pasmado\|pasmar\|pasmo\|pasmoso\|patada\|pataleta\|patan\|patán\|pateta\|patetico\|patético\|patetismo\|patidifuso\|patinazo\|patitieso\|patologia\|patología\|patológico\|patoso\|paupérrimamente\|paupérrimo\|pávido\|pavor\|pavorido\|pavorosamente\|pavoroso\|payasada\|payaso\|pazguato\|pebete\|pecado\|pecador\|pecaminoso\|pedazos\|pedo\|pedorrear\|pedorro\|pegajoso\|pegar\|pelaza\|pelea\|peleon\|peleón\|peliagudo\|peligro\|peligroso\|peligrosamente\|pelma\|pelmazo\|pelotera\|pelusa\|pena\|peñazo\|penacho\|penalidad\|penar\|peñazo\|pendencia\|pendenciar\|pendenciero\|pendón\|pendon\|peneque\|penitencia\|penitente\|penosamente\|penoso\|penosamente\|pensativo\|penumbra\|penuria\|peor\|pequeño\|perder\|perdicion\|perdición\|pérdida\|perdonavidas\|perecer\|perfidia\|perfido\|pérfido\|perinquina\|perjudicial\|pernicioso\|perplejidad\|perplejo\|perrería\|perseguir\|persecución\|persecucion\|perturbado\|perturbador\|perturbar\|perversidad\|perverso\|pervertir\|pesado\|pesadez\|pesadumbre\|pésame\|pesar\|pesaroso\|pescuezo\|pesimismo\|pesimista\|pésimo\|peso\|pestazo\|peste\|pestilente\|petardazo\|petardo\|picado\|picar\|picaro\|pícaro\|picazón\|picor\|pillar\|piltrafa\|piltrafilla\|pinchar\|piojo\|piojoso\|pique\|pirado\|pisotear\|plaga\|plañidero\|plañir\|plantista\|pleito\|pobre\|pobremente\|pobrete\|pobreteria\|pobreto\|pobreza\|poco\|podre\|podredumbre\|podrido\|podrir\|polacada\|policía\|policial\|político\|polla\|pollón\|ponzoña\|ponzoñoso\|popo\|poquedad\|porfiar\|porno\|pornográfico\|porqueria\|porquería\|poseido\|poseído\|postración\|premonición\|prender\|preocupacion\|preocupación\|preocupadamente\|preocupado\|preocupante\|preocupar\|prepotencia\|prepotente\|presión\|presionar\|preso\|presumido\|presumir\|presunto\|pretension\|preterir\|pretermitir\|pringado\|pringao\|pringaos\|pringar\|prision\|prisión\|privacion\|privación\|privar\|problema\|problemática\|problemático\|procacidad\|procaz\|prodición\|profanación\|profanador\|profanar\|profano\|profundo\|prohibicion\|prohibición\|prohibir\|prohibitivo\|propasarse\|prostituta\|protervia\|protervo\|protesta\|protestar\|provocación\|provocador\|provocar\|provocativo\|puaf\|puchero\|puercamente\|puerco\|pugna\|pugnante\|puñalada\|punchar\|pungir\|punico\|punzar\|pus\|pusilánime\|pusilanimidad\|puta\|putada\|puteria\|putería\|NEGATIVE\|puto\|putón\|putrefacción\|putrefacto\|putrido\|pútrido\|quebradero\|quebrantar\|quebranto\|quebrar\|queja\|quejar\|quejido\|quejoso\|quejumbroso\|quemar\|quemarse\|quemazón\|querella\|querellar\|quicio\|quiebra\|quimera\|quimérico\|quimerista\|quitar\|rabia\|rabieta\|rabiosamente\|rabioso\|rahez\|rajon\|ramera\|randa\|rapapolvo\|rapiñar\|rapto\|raro\|rascazón\|rasguño\|raspadura\|rastrero\|rata\|ratero\|rebajar\|recelar\|recelo\|receloso\|recesión\|rechazamiento\|rechazar\|rechazo\|reclamar\|reconcomer\|reconcomio\|reconvención\|recortar\|recorte\|recriminación\|recriminar\|recular\|recurso\|reduccion\|reducción\|reducir\|refrenar\|regañadientes\|regañar\|reganina\|regañina\|regano\|regaño\|reherir\|rehilete\|reliquia\|remordimiento\|rencilloso\|rencor\|rencorosamente\|rencoroso\|rendido\|renegar\|reñidor\|reñir\|renitencia\|renuencia\|renuncia\|renunciar\|reo\|reparo\|repelente\|repeler\|repelo\|repeluzno\|reprender\|reprensión\|represalia\|represaliar\|represion\|represión\|reprimenda\|reprimir\|reprobacion\|reprobación\|reprobar\|reprochar\|reproche\|repudiable\|repudiar\|repudio\|repudrirse\|repugnancia\|repugnante\|repugnantemente\|repugnar\|repulsa\|repulsar\|repulsion\|repulsión\|repulsivamente\|repulsivo\|resarcimiento\|rescatar\|rescate\|resentido\|resentimiento\|resentir\|reservado\|residuo\|respingar\|resquemor\|restricción\|restringir\|retar\|retirar\|retiro\|retrasado\|retrasar\|retraso\|retrógrado\|revancha\|revanchismo\|reventar\|reventon\|reventón\|revolver\|reyerta\|ricachon\|ricachón\|ridiculamente\|ridículamente\|ridiculo\|ridículo\|riesgo\|rigidez\|rigido\|rígido\|riguroso\|rina\|riña\|robar\|robo\|rociada\|rocin\|rodeor\|roer\|rollazo\|rollero\|rollo\|romo\|rompecabezas\|romper\|roña\|roñoso\|roto\|rotura\|rubor\|ruborizar\|rufian\|rufián\|ruido\|ruin\|ruina\|ruinoso\|ruptura\|sacre\|sagacidad\|sagaz\|salvaje\|sambenito\|saña\|sancion\|sanción\|sancionar\|sandio\|sangre\|sangriento\|sanguinario\|sañoso\|saquear\|saqueo\|sarao\|satan\|satán\|satanás\|satánico\|satirizar\|saturnino\|saudade\|secrecion\|secreción\|secuestrador\|secuestro\|seísmo\|sensiblero\|sentencia\|sentimental\|serio\|sermón\|severidad\|severo\|sevicia\|sicalíptico\|silencioso\|siniestro\|sinistralidad\|sinvergonzonería\|sinverguencería\|sinvergüencería\|sinverguenza\|sinvergüenza\|sismo\|soberbia\|sobras\|sobrecogedor\|sobrecoger\|sobrecogimiento\|sobresaltar\|sobresalto\|socarron\|socarrón\|socorro\|sodomita\|sofocar\|sojuzgar\|soledad\|solitario\|sollozar\|sollozo\|solo\|sombra\|sombrio\|sombrío\|someter\|sonrojar\|sonrojo\|sopor\|soporífero\|soportar\|sordera\|sórdido\|sordo\|sospecha\|sospechar\|sospechoso\|subalterno\|subida\|sublevación\|sublevador\|sublevar\|submundo\|subnormal\|subnormalidad\|suciedad\|sucio\|sudor\|suficiencia\|sufrimiento\|sufrir\|sulfurado\|sulfurar\|sulfuro\|sumario\|sumisamente\|sumiso\|superficial\|superficialidad\|suplicio\|supresion\|supresión\|suprimir\|suspension\|suspensión\|suspenso\|suspicacia\|suspicaz\|susto\|sustraer\|tacañeria\|tacañería\|tacañete\|tacaño\|tacha\|tacito\|tácito\|taciturnidad\|taciturno\|talar\|tambaleante\|tambalear\|tarado\|tarambana\|tarasca\|tarugo\|tasa\|taumaturgo\|tedio\|tedioso\|temblor\|tembloroso\|temer\|temerario\|temerosamente\|temeroso\|temible\|temor\|temorosamente\|tempestuoso\|tenebrosamente\|tenebrosidad\|tenebroso\|tension\|tensión\|tenso\|tercamente\|terco\|terco\|tergiversar\|terquedad\|terrecer\|terremoto\|terrible\|terriblemente\|terror\|terrorífico\|terrorismo\|terrorista\|testarudez\|tétrico\|timador\|timidamente\|tímidamente\|timidez\|timido\|tímido\|timo\|timorato\|tinglado\|tinglados\|tinieblas\|tiquismiquis\|tirania\|tiranía\|tirano\|tirante\|tirantez\|tirria\|titubeante\|titubear\|titubeo\|tocado\|tolerar\|tomate\|tontaina\|tontamente\|tonto\|torear\|tormento\|tormentoso\|torpe\|torpemente\|torpeza\|tortura\|torturador\|torturar\|totalitario\|totalitarismo\|toxicidad\|toxico\|tóxico\|traba\|trabajo\|tradicional\|tráfico\|tragedia\|tragico\|trágico\|traicion\|traición\|traicionar\|traicionero\|trama\|transgresion\|transgresión\|transgresor\|transido\|trapisonda\|trasmundo\|traspiés\|trastornar\|trastorno\|trauma\|traumatico\|traumático\|traumatizar\|tremebundo\|tremendo\|trepidación\|tribulación\|tribunal\|trinar\|tripas\|triste\|tristemente\|tristeza\|trizas\|tropelía\|tropezar\|tropiezo\|truncado\|truncar\|tuerto\|tupé\|ufania\|ultimatum\|ultrajante\|ultrajar\|ultraje\|ultramundo\|ultratumba\|usura\|usurero\|vaciar\|vacilación\|vacilante\|vacio\|vacío\|vagancia\|vago\|vanidad\|vanidoso\|vareta\|vejación\|vejar\|veleidad\|veleidoso\|vencido\|vendaval\|veneno\|venenoso\|vengador\|venganza\|vengar\|vengativo\|ventolera\|ventosidad\|verde\|verecundia\|verecundio\|verecundo\|vergonzoso\|verguenza\|vergüenza\|vesania\|vesánico\|vibora\|víbora\|viciar\|vicio\|víctima\|victimismo\|viejo\|vientre\|vil\|vilipendiar\|vilipendio\|villanía\|villano\|vilmente\|vinagre\|violador\|violar\|violencia\|violento\|viperino\|virulencia\|virulento\|víscera\|visceral\|viscoso\|visión\|vitando\|vitriolico\|vituperar\|vituperio\|voceador\|vocear\|vociferador\|vociferante\|vociferar\|voluble\|voluntarioso\|vomitar\|vomitivo\|vomito\|vómito\|voracidad\|voraz\|vulnerable\|vulnerar\|vulnerar\|yermo\|yonqui\|zágano\|zaherir\|zahiriente\|zamacuco\|zamarro\|zangano\|zangarriana\|zopenco\|zoquete\|zozobra\|zurullo\|)";
$POS  = "(?:abierto\|ablandar\|abnegación\|abobar\|abonar\|abrazo\|abrigar\|abrir\|absorber\|absorberse\|absorto\|abundancia\|abundante\|abundoso\|acabalar\|acabamiento\|acabar\|acallar\|acarrear\|acatamiento\|acatar\|acato\|acaudalado\|aceptable\|aceptacion\|aceptación\|acercamiento\|acercar\|acertado\|acertar\|acertijo\|acicate\|acierto\|aclamacion\|aclamación\|aclamar\|acogedor\|acoger\|acogida\|acogimiento\|acojonante\|acomodadamente\|acomodaticio\|actor\|adargar\|adecuado\|adecuar\|adelantar\|adelante\|aderezo\|adhesion\|adhesión\|adinerado\|adivinaja\|adivinanza\|adivinar\|admirable\|admirablemente\|admiracion\|admiración\|admirado\|admirar\|admisible\|admision\|admisión\|admitir\|adobo\|adorable\|adorablemente\|adoracion\|adoración\|adorador\|adorar\|adormecer\|adormir\|afable\|afán\|afanoso\|afectivo\|afecto\|afectuosamente\|afectuosidad\|afectuoso\|afervorizar\|affaire\|aficion\|afición\|aficionar\|afinidad\|afirmar\|afirmativo\|afortunadamente\|afortunado\|agarre\|agostador\|agradable\|agradar\|agradecer\|agradecido\|agrado\|aguante\|agudeza\|agudo\|aguijon\|aguijón\|aguzar\|ahinco\|ahínco\|airoso\|ajustar\|alabanza\|alabar\|alborozado\|alborozar\|alborozo\|alcanzar\|alegrar\|alegre\|alegremente\|alegria\|alegría\|alentar\|alerta\|algazara\|aliado\|aliciente\|alimenticio\|aliño\|aliviar\|alivio\|allegar\|alma\|almibarado\|altruismo\|altruista\|alzar\|amabilidad\|amable\|amablemente\|amado\|amanecer\|amansar\|amante\|amar\|amartelado\|amartelar\|amativo\|amatorio\|ambicion\|ambición\|ambicionar\|ambicioso\|ameno\|amiga\|amigabilidad\|amigable\|amigablemente\|amigo\|amistad\|amistosamente\|amistoso\|amor\|amorosamente\|amorosidad\|amoroso\|amortiguar\|amparador\|amparar\|amplio\|amplitud\|amuleto\|ancho\|anchura\|angelical\|angelico\|angélico\|anhelar\|anhelo\|animación\|animación\|animado\|animar\|animo\|ánimo\|animoso\|aniversario\|anómalo\|ansiar\|ansioso\|antever\|anticipar\|anuencia\|anzuelo\|apacible\|apaciguar\|apañado\|aparatoso\|apasionadamente\|apasionado\|apasionamiento\|apasionante\|apego\|apetecer\|aplacar\|aplaudir\|aplauso\|aplicado\|apologia\|apología\|apostar\|apoteósico\|apoteosis\|apoyar\|apoyo\|apreciado\|apreciar\|aprecio\|apresurado\|aprobacion\|aprobación\|aprobar\|aprobatorio\|apropiado\|apto\|apuesto\|aquiescencia\|aquietar\|ardiente\|ardimiento\|ardor\|aristocratizar\|armonia\|armonía\|arranque\|arrebatar\|arreglar\|arrepentirse\|arrobamiento\|arrobar\|arrobo\|arrojado\|arrojo\|arte\|artista\|ascendente\|asegurar\|asenso\|asentimiento\|aspiracion\|aspiración\|aspirar\|asueto\|asunto\|atañer\|atardecer\|atemperar\|atencion\|atención\|atento\|atonito\|atónito\|atraccion\|atracción\|atractivo\|atraer\|atrayente\|atrayentemente\|audaz\|aupar\|auspiciar\|autarquia\|autarquía\|autentico\|autocomplacencia\|autorizacion\|autorización\|autorrespeto\|autosatisfacción\|autosatisfecho\|autosuficiencia\|avance\|avanzar\|avariento\|avasallar\|avenirse\|aventajar\|aventura\|avido\|ávido\|avivar\|ayuda\|ayudar\|balde\|barato\|barragana\|barruntar\|belleza\|bellezon\|bellezón\|bello\|bendecir\|bendito\|benefactor\|beneficencia\|beneficiado\|beneficiar\|beneficio\|beneficiosamente\|beneficioso\|benefico\|benéfico\|beneplacito\|beneplácito\|benévolamente\|benevolencia\|benevolente\|benevolo\|benévolo\|benignamente\|benignidad\|benigno\|beso\|bestial\|bien\|bienandanza\|bienaventurado\|bienaventuranza\|bienestar\|bienhadado\|bienhechor\|bienquerencia\|bienquerer\|bienvenido\|bizarria\|bizarría\|bizarro\|bizbirondo\|blando\|blandura\|bombo\|bombon\|bombón\|bondad\|bondadosamente\|bondadoso\|bonhomia\|bonhomía\|bonito\|boquiabierto\|boyante\|breve\|brillante\|brillantemente\|brillantez\|brio\|brío\|brioso\|broma\|bromear\|buen\|buenagente\|buenasa\|buenisimo\|buenísimo\|bueno\|bullicioso\|cabal\|caballeria\|caballería\|caballerosidad\|cabo\|calidad\|calidez\|calido\|cálido\|caliente\|callantar\|calmado\|calmar\|calmo\|calor\|calurosamente\|caluroso\|camaradería\|campante\|campeon\|campeón\|campeones\|candido\|cándido\|candoroso\|cantar\|capacidad\|capaz\|capital\|captivar\|capturar\|cara\|caracter\|carácter\|caramelo\|carcajada\|carialegre\|caridad\|cariño\|cariñosamente\|carinoso\|caritativo\|casero\|cautivado\|cautivador\|cautivadoramente\|cautivar\|ceguedad\|celebracion\|celebración\|celebrar\|celebre\|célebre\|celestial\|celosamente\|certero\|cese\|chacota\|chancear\|chancearse\|changuear\|chanza\|chanzoneta\|chic\|chirigota\|chistoso\|chocante\|chotear\|choteo\|cierto\|circunspeccion\|circunspección\|circunspecto\|cívico\|civilizacion\|civilización\|civilizado\|civismo\|clamoroso\|claridad\|claro\|clemencia\|clemente\|cogollo\|coherencia\|coherente\|coherentemente\|coincidencia\|colaboración\|colaborar\|colaborativo\|coligado\|colmado\|colmar\|colosal\|columbrar\|comedido\|comezon\|comezón\|comico\|cómico\|comisionar\|comodamente\|cómodamente\|comodidad\|comodo\|cómodo\|compañerismo\|compañero\|compartir\|compasion\|compasión\|compasivo\|compatibilidad\|compatible\|compatiblemente\|compensacion\|compensación\|competente\|competer\|complacencia\|complacer\|complacible\|complacido\|complaciente\|complacimiento\|completo\|comprensible\|comprensión\|comprensivo\|comunicable\|comunicativo\|coña\|concesión\|conciencia\|concierto\|concluir\|conclusión\|condimento\|confiabilidad\|confiado\|confianza\|confiar\|confidente\|confirmación\|confirmar\|conformidad\|confort\|confortable\|confortablemente\|confortación\|confortador\|confortar\|confraternidad\|congeniar\|congraciar\|congratular\|conjeturar\|conmemorar\|conmiseración\|conmover\|conocido\|conquista\|consagrar\|consagrarse\|consciencia\|conseguir\|consenso\|consensuar\|consentimiento\|consideracion\|consideración\|considerado\|consolacion\|consolación\|consolar\|constancia\|constante\|consuelo\|consumación\|consumado\|consumar\|contemporizador\|contemporizar\|contentamiento\|contentar\|contento\|contundente\|conveniencia\|conveniente\|copiosidad\|copioso\|coraje\|corazon\|corazón\|cordial\|cordialidad\|cordialmente\|correccion\|corregir\|corresponder\|corroborante\|corroborar\|cortes\|cortesia\|cortesía\|cosicosa\|cosquillear\|cosquilleo\|costear\|crack\|creacion\|creación\|crear\|creativo\|crecer\|creciente\|credibilidad\|crédito\|crédulo\|creencia\|creible\|criado\|criterio\|cuantioso\|cubrir\|cuidadoso\|cuidar\|culminación\|cultivado\|culto\|cumpleaños\|cumplido\|cumplimentar\|cumplir\|dádiva\|dadivoso\|dechado\|decidido\|decorativo\|dedicar\|deduccion\|deducción\|defender\|defensa\|deferencia\|deferente\|degustar\|delegar\|deleitar\|deleite\|deléitese\|deleitoso\|delicadamente\|delicadeza\|delicia\|delicioso\|deportivamente\|deportivo\|desagraviar\|desagravio\|desahogar\|desahogo\|descansar\|descanso\|descargar\|descomunalmente\|descubrir\|desear\|desempeñar\|desempeño\|desenfado\|desenvoltura\|deseo\|deseoso\|desinterés\|desinteresado\|deslumbramiento\|deslumbrantemente\|deslumbrar\|desocupado\|despabilar\|despampanante\|despenar\|despertar\|despreciativo\|desprendido\|desprendimiento\|despreocupación\|destacable\|destacado\|destacar\|destreza\|desvivirse\|determinar\|devoción\|devoto\|día\|dicha\|dichosamente\|dichoso\|diestro\|dignamente\|dignificar\|digno\|dilección\|diligente\|diligentemente\|dinamico\|dinámico\|discernimiento\|discernir\|discrecion\|discreción\|discreto\|diserto\|disfrutar\|disfrute\|disponibilidad\|disponible\|distincion\|distinción\|distinguido\|distinguir\|distraccion\|distracción\|ditirambo\|diversión\|divertidamente\|divertidísimamente\|divertido\|divertir\|divinamente\|divinizar\|divino\|docilidad\|docto\|donaire\|donante\|donar\|donativo\|dotacion\|dotación\|dotar\|ducho\|dulce\|dulzarrón\|dulzón\|dulzura\|edicion\|edición\|edificante\|edificar\|educado\|efectivo\|efecto\|eficaz\|efusión\|efusivamente\|efusividade\|efusivo\|ejemplar\|ejemplaridad\|ejemplificador\|ejemplo\|elección\|elegancia\|elegante\|elegantemente\|elevado\|elevar\|elocuente\|elocuentemente\|elogiar\|elogio\|elogioso\|embebecer\|embebecerse\|embeber\|embelesamiento\|embelesar\|embelesarse\|embeleso\|emborrachar\|embriagar\|embromar\|embrujamiento\|embrujar\|embrujo\|embullo\|eminencia\|eminente\|emocion\|emoción\|emocionante\|emocionar\|emotivo\|empacado\|empapular\|empatia\|empatía\|empatico\|empático\|empeño\|empingorotado\|emprendedor\|enaltecer\|enaltecimiento\|enamoramiento\|enamorar\|enano\|encalmar\|encandilamiento\|encandilar\|encantado\|encantador\|encantar\|encanto\|encaramar\|encargar\|encomendar\|encomiar\|encomio\|encopetado\|endiosar\|endulzar\|energía\|enérgico\|energizar\|enganchar\|engendrar\|engrandecer\|enhorabuena\|enigma\|enmudecer\|ennoblecer\|enorgullecer\|enorme\|ensaladera\|ensalzar\|enseñorearse\|ensoberbecido\|enternecer\|enternecimiento\|entero\|entibiar\|entonado\|entraña\|entranable\|entrañable\|entrar\|entrega\|entregar\|entretener\|entretenimiento\|entrever\|entusiasmado\|entusiasmar\|entusiasmo\|entusiasta\|envanecido\|envirotado\|equivalencia\|erótico\|erudicion\|erudición\|erudito\|esencial\|esforzado\|esfuerzo\|esmerado\|esmero\|espabilar\|esparcimiento\|especial\|espectacular\|espectaculo\|espectáculo\|esperanza\|esperanzado\|esplendido\|espléndido\|esplendor\|esplendoroso\|espuela\|estima\|estimable\|estimar\|estimulante\|estimular\|estímulo\|estrella\|estrellas\|estrenar\|estreno\|estudioso\|estupendamente\|estupendo\|eternizar\|euforia\|euforico\|eufórico\|euforizante\|evacuar\|evitar\|exactitud\|exacto\|exaltar\|exceder\|excelente\|excepcional\|excitable\|excitacion\|excitación\|excitante\|excitar\|exclamación\|exclusivo\|exculpar\|exencion\|exhibición\|exhortar\|éxito\|exitoso\|expansion\|expansión\|expansivo\|expectación\|expectativa\|experiencia\|experimentado\|experto\|expirar\|expresion\|expresión\|expresivo\|exquisitez\|exquisito\|extasiante\|extasiar\|extension\|extensión\|extenso\|extraordinariamente\|extraordinario\|exuberante\|exuberantemente\|exultacion\|exultante\|exultar\|fabuloso\|facil\|fácil\|facilidad\|facilitar\|facilmente\|fácilmente\|factible\|facultad\|facultades\|familia\|familiar\|familiaridad\|famoso\|fan\|fanclub\|fantasia\|fantasía\|fantastica\|fantásticamente\|fantastico\|fantástico\|farra\|fascinacion\|fascinación\|fascinado\|fascinante\|fascinar\|fasto\|fastuosidad\|fastuoso\|fausto\|favor\|favorable\|favorablemente\|favorecedor\|favorecer\|favorecimiento\|favorito\|fe\|fecundo\|fehaciente\|felicidad\|felicitación\|felicitar\|feliz\|felizmente\|fenomenal\|fenomeno\|fenómeno\|feraz\|fertil\|fértil\|ferviente\|fervor\|fervoroso\|festejar\|festejo\|festival\|festivo\|fetiche\|fiabilidad\|fiable\|fibra\|fidedigno\|fidelidad\|fiebre\|fiel\|fiesta\|fieston\|fiestón\|fijar\|filantropía\|filantropo\|filigrana\|fin\|final\|finalizar\|finamente\|finchado\|fineza\|finiquitar\|fino\|firme\|firmemente\|firmeza\|flamante\|flechar\|flor\|florecer\|floreciente\|fogosidad\|fogoso\|formal\|formalidad\|formidable\|forrado\|fortalecer\|fortaleza\|fortuna\|franco\|franqueza\|fraternidad\|fraternizar\|frenesi\|frenesí\|frívolamente\|frivolizar\|frívolo\|fructifero\|fructífero\|fructuoso\|fruición\|fruto\|fuego\|fuerte\|fuerza\|funcional\|fundamental\|fundamentar\|futuro\|gala\|galante\|galanteria\|galantería\|galardon\|galardón\|gallardo\|gana\|ganador\|ganancia\|ganar\|ganga\|garbo\|garboso\|generosamente\|generosidad\|generoso\|genial\|gentil\|gentilmente\|genuino\|gira\|gloria\|gloriar\|glorificar\|glorioso\|goce\|gol\|gozar\|gozo\|gozosamente\|gozoso\|gracia\|graciosamente\|gracioso\|gran\|grande\|grandeza\|grandiosidad\|grandioso\|granjería\|gratificacion\|gratificación\|gratificador\|gratificante\|gratificar\|gratis\|grato\|gratuitamente\|gratuito\|guapamente\|guapo\|guapura\|guay\|gustar\|gusto\|gustoso\|habil\|hábil\|habilidad\|habilmente\|hábilmente\|hacha\|halagar\|halagüeño\|hambriento\|happy\|hechizar\|hechizo\|henchido\|hermandad\|hermoso\|heroe\|héroe\|heroicidad\|heroicidad\|heroismo\|hervor\|hijo\|hilarante\|hilarantemente\|hilaridad\|hincha\|hipnotizar\|hola\|holganza\|holgorio\|holgura\|homenaje\|hondo\|honestidad\|honor\|honorable\|honorado\|honrar\|honrosamente\|hormigueo\|hormiguilla\|hormiguillo\|hospitalario\|hospitalidad\|hueco\|huelgo\|humanidad\|humanitario\|humanitarismo\|humano\|humildad\|humilde\|humor\|humorismo\|humorista\|humorístico\|humos\|idea\|ideal\|idealista\|identidad\|identificar\|idilio\|idoneo\|igualdad\|igualitario\|iluminacion\|iluminación\|iluminador\|iluminar\|ilusion\|ilusión\|ilusionadamente\|ilusionante\|ilusionar\|ilustrado\|ilustrativo\|imaginar\|imaginativo\|impaciente\|impactar\|impecable\|imperial\|imperio\|imperioso\|impetu\|ímpetu\|impetuosidad\|impetuoso\|importancia\|importante\|importar\|imprescindible\|impresionable\|impresionante\|impresionar\|impulsar\|impulso\|inagotable\|inauguracion\|inauguración\|inaugurar\|incauto\|incentivo\|incitación\|incitante\|incitar\|incitativo\|inclinación\|incontestable\|increible\|increíble\|increiblemente\|increíblemente\|incuestionable\|incumbir\|indemnizacion\|indemnización\|indemnizar\|individualidad\|individualismo\|indubitable\|indudable\|indulgencia\|indulgente\|infalible\|infatigable\|infrecuente\|ingenio\|ingeniosidad\|ingenuo\|iniciativa\|inmortal\|inmortalizar\|inmune\|inmunidad\|innegable\|innovacion\|innovación\|innovador\|inocencia\|inocente\|inquebrantable\|inspiracion\|inspiración\|inspirador\|inspirar\|instructivo\|instruido\|instruir\|intacto\|integridad\|íntegro\|inteligente\|inteligentemente\|intensamente\|intensidad\|intenso\|interes\|interés\|interesante\|interesar\|intimidad\|intoxicante\|intoxicar\|intrepido\|intrépido\|inventiva\|invitar\|ja\|jacarero\|jaja\|jajaja\|jajajaja\|jajajajaja\|jajajjajaj\|jajja\|jajjaja\|jajjajaja\|jajjajja\|jarana\|je\|jeje\|jejej\|jejeje\|jejejej\|jejejeje\|jejje\|jijijijiji\|jocoso\|jocundo\|jolgorio\|jovial\|jubilo\|júbilo\|jubilosamente\|jubiloso\|juego\|juerga\|jugar\|juicioso\|justicia\|justificación\|justo\|laborioso\|labrar\|lástima\|laudable\|laurel\|lauro\|leal\|lealtad\|ledamente\|ledo\|leer\|legal\|legalidad\|legalmente\|lenidad\|lenificar\|lenizar\|letificar\|liberal\|liberar\|libertar\|libre\|licencia\|límite\|limpieza\|limpio\|lindo\|lisonjas\|lisonjear\|lisonjero\|listo\|llaneza\|llenar\|lleno\|loa\|loable\|loar\|lograr\|logro\|longanimidad\|loor\|lozania\|lozanía\|lozano\|lucha\|luchador\|luchar\|lucido\|lúcido\|lucimiento\|lucrativo\|lucro\|lujo\|lujoso\|luminoso\|lustre\|lustroso\|macanudo\|madurez\|maduro\|maestria\|maestría\|maestro\|magia\|mágico\|magna\|magnanime\|magnánimo\|magnetizar\|magnificencia\|magnifico\|magnifíco\|magnífico\|magno\|mago\|majestuosidad\|majestuoso\|majo\|manceba\|mantener\|maravilla\|maravillado\|maravillar\|maravillosamente\|maravilloso\|marca\|mas\|más\|masacrar\|mascota\|maximo\|máximo\|mayor\|medrar\|mejor\|mejorar\|melifluo\|meloso\|menospreciativo\|merecedor\|merecer\|merito\|mérito\|meritorio\|meta\|meticuloso\|milagro\|milagrosamente\|milagroso\|miseración\|misericordia\|misericordioso\|misionero\|mitico\|mítico\|mitigar\|modelo\|moderar\|modernidad\|moderno\|modestia\|modesto\|molar\|molon\|molón\|monumental\|monumento\|mordacidad\|morro\|motivar\|mover\|natural\|naturalidad\|navidad\|navideño\|necesario\|negociable\|negocio\|nervio\|noblemente\|nominar\|normalidad\|notable\|notablemente\|novedad\|novedoso\|nuevo\|numeroso\|obediencia\|obstinado\|ocasion\|ocasión\|ocasionar\|oe\|oeoeoeoeoeoeoe\|oferta\|ofertón\|oficioso\|ofrecer\|ojala\|ojalá\|ole\|olé\|olimpico\|olímpico\|opíparo\|oportunidad\|optimista\|optimo\|óptimo\|opulencia\|opulento\|organizar\|orgullosamente\|orgulloso\|original\|originalidad\|originar\|osado\|ovacion\|ovación\|ovacionar\|paciencia\|pacificar\|pacifico\|pacífico\|pacifista\|pacificador\|pacifismo\|pacto\|pactar\|paladear\|paliar\|palmas\|panegírico\|pariente\|parranda\|participar\|particular\|partidazo\|pasable\|pasada\|pasatiempo\|pasión\|pasion\|conectar\|patrocinador\|patrocinar\|paz\|peña\|perdon\|perdón\|peregrino\|perfeccion\|perfección\|perfectamente\|perfecto\|permisible\|permiso\|permitir\|perpetuar\|perseverancia\|perseverante\|perseverante\|persistente\|perspicacia\|perspicaz\|pertinaz\|piadoso\|piedad\|pingüe\|pirrarse\|placentero\|placer\|placidez\|placido\|plácido\|plausible\|pleitesía\|plenitud\|pleno\|plétora\|pletórico\|plural\|pluralidad\|poder\|poderío\|poetico\|poético\|pomposo\|porfiado\|portento\|portentosamente\|portentoso\|posesión\|positivismo\|positivo\|potencia\|potencial\|potente\|practicable\|precaucion\|precaución\|precaver\|preciado\|preciosidad\|precioso\|preconizar\|predilecto\|predominante\|preeminencia\|preferencia\|preferir\|premio\|prerrogativa\|presentar\|presentir\|preservacion\|preservar\|prestigio\|presto\|presuncion\|presunción\|presuntuoso\|presuroso\|pretensión\|prevencion\|prevención\|prevenir\|prever\|prevision\|previsión\|primo\|primoroso\|prioridad\|prioritario\|privilegio\|proba\|probar\|proclamar\|prodigio\|prodigiosamente\|prodigiosidad\|prodigioso\|prodigo\|producir\|productivo\|producto\|proeza\|profusión\|progresion\|progresión\|progreso\|prolifero\|promocion\|promoción\|promocionar\|promover\|prontitud\|pronto\|propiciar\|propicio\|prosperidad\|próspero\|protector\|protectoramente\|proteger\|provecho\|provechosamente\|provechoso\|providencial\|providencialmente\|próvido\|proyecto\|prudencia\|prudente\|prurito\|pudiente\|pueril\|pujanza\|purpura\|púrpura\|querer\|querida\|querido\|querubico\|quietud\|quillotrar\|quimerico\|quisicosa\|radiante\|rapidez\|rapido\|rápido\|ratificar\|raudo\|razon\|razón\|razonable\|razonar\|reafirmante\|reafirmante\|reafirmar\|real\|realizable\|realizacion\|realización\|realizar\|reanimar\|reavivar\|rebosante\|recaudo\|recibimiento\|recibir\|reclamo\|recoger\|recogimiento\|recomendable\|recomendar\|recompensa\|recompensar\|reconfortante\|reconfortar\|reconocer\|reconocido\|reconocimiento\|récord\|recreación\|recrear\|recreo\|recuerdo\|recuperar\|redencion\|redención\|rédito\|refirmar\|reflexion\|reflexión\|refocilar\|reforzante\|reforzar\|refuerzo\|regalar\|regalo\|regiamente\|regio\|regocijadamente\|regocijado\|regocijar\|regocijo\|regodear\|regodeo\|regresar\|regreso\|reidor\|reir\|reír\|reivindicacion\|reivindicación\|reivindicar\|relamer\|rematar\|remate\|remontada\|remuneración\|remunerador\|remunerar\|renovacion\|renovación\|rentabilidad\|rentabilizar\|rentable\|reparacion\|reparación\|repercusion\|repercusión\|repleto\|reposar\|reposo\|resguardar\|resistencia\|resistente\|resistible\|resistir\|resolver\|respaldar\|respaldo\|respetable\|respetar\|respeto\|respetuoso\|respiro\|resplandecer\|resuelto\|resultado\|reto\|retribución\|retribuir\|retumbante\|reverencia\|reverenciar\|revivificar\|rico\|riqueza\|risa\|risada\|risotada\|risueno\|risueño\|roborar\|romantico\|romántico\|rumba\|rumboso\|sabedor\|saber\|sabiamente\|sabiduría\|sabio\|sabor\|saborear\|sabroso\|saciado\|saciar\|saciedad\|sacrificio\|salsa\|saludable\|saludar\|saludo\|salvacion\|salvación\|salvador\|salvaguarda\|salvaguardar\|salvamento\|salvar\|sandunga\|satisfacción\|satisfacer\|satisfacible\|satisfactoriamente\|satisfactorio\|satisfecho\|seduccion\|seducción\|seducir\|seductivo\|seductor\|seguidor\|seguridad\|seguro\|seleccion\|selección\|selecto\|sencillez\|sencillo\|sensación\|sensacional\|sensatamente\|sensatez\|sensato\|sensibilidad\|sensible\|sensitivo\|sentimiento\|sentir\|serenar\|serenidad\|sereno\|servicial\|servicio\|silenciar\|simpatia\|simpatía\|simpatico\|simpático\|simpatizante\|simpatizar\|simple\|simplicidad\|sinceramente\|sincerar\|sinceridad\|sincero\|singular\|sino\|soberbio\|sobrenatural\|sobresaliente\|sobresalir\|sociabilizar\|sociable\|socorrer\|sofisticado\|sol\|solaz\|solazar\|solemne\|solemnidad\|solícito\|solidamente\|solidaridad\|solidario\|solido\|sólido\|solucion\|solución\|solucionar\|soñado\|soñar\|sonreir\|sonreír\|sonriente\|sonrisa\|sorprendente\|sorprendentemente\|sorprender\|sorpresa\|sorpresivamente\|sorpresivo\|sortilegio\|sosegar\|sosiego\|sostener\|sostenible\|suave\|suavidad\|suavizante\|suavizar\|sublimar\|sublime\|subyugar\|sueño\|suerte\|sufragar\|sujeción\|sujetar\|sumisión\|sumo\|suntuosidad\|suntuoso\|supeditar\|superabundancia\|superabundante\|superar\|superior\|suponer\|suscribir\|suspender\|suspirar\|suspiro\|sustentar\|talento\|talentoso\|talismán\|taumatúrgico\|temperar\|templar\|temporizar\|tenacidad\|tenaz\|tenencia\|terminación\|terminar\|término\|terneza\|ternura\|tesón\|tesoro\|tiernamente\|tierno\|tieso\|tolerable\|tolerancia\|tolerante\|ton\|tonico\|tónico\|tono\|tórrido\|totalidad\|trabajador\|trabajar\|tranquilamente\|tranquilidad\|tranquilizante\|tranquilizar\|tranquillo\|tranquilo\|transparencia\|transplantar\|transplante\|transportar\|transporte\|tratable\|tratar\|triunfador\|triunfal\|triunfalmente\|triunfante\|triunfantemente\|triunfar\|triunfo\|trofeo\|tuitivo\|turulato\|ubérrimo\|ufanamente\|ufanía\|ufano\|ultimar\|unción\|unidad\|union\|unión\|util\|útil\|utilidad\|valer\|valeroso\|valía\|valiente\|valimiento\|valioso\|valor\|valorar\|vano\|vencedor\|vencer\|vencimiento\|venerable\|veneración\|venerar\|venia\|ventaja\|ventajosamente\|ventajoso\|ventura\|venturado\|venturosamente\|venturoso\|veracidad\|veraz\|verdad\|verdadero\|verídico\|viabilidad\|viable\|viajar\|victorear\|victoria\|victorioso\|vida\|vigor\|vigorizante\|vigorizar\|vigoroso\|vislumbrar\|vital\|vitalidad\|vitalismo\|vítor\|vitorear\|viva\|vivacidad\|vivaz\|viveza\|vivificante\|vivificar\|vivir\|vivo\|voluntad\|voluntariado\|voluntario\|)";


####################################END CODE BY COMPI################################################



$i=0;
$listTags="";
$seq="";
$CountLines=0;

$j=0;
while (<>) {
   chop($_);

  ($token, $info) = split(" ", $_);

  if ( ($CountLines % 100) == 0) {;
       printf  STDERR "- - - processar linha:(%6d) - - -\r",$CountLines;
  }
  $CountLines++;


  ###Convertimos characteres significativos na sintaxe de DepPattern em tags especiais
  if ($token =~ /:/) {
      ConvertChar ('\:', "Fd");
  }
  if ($token =~ /\|/) {
      ConvertChar ('\|', "Fz");
  }
  if ($token =~ /\>/) {
      ConvertChar ('\>', "Fz1");
  }
  if ($token =~ /\</) {
      ConvertChar ('\<', "Fz2");
  }


  ##organizamos a informacao de cada token:
   if ($info ne "") {
     (@info) = split ('\|', $info);
     for ($i=0;$i<=$#info;$i++) {
       if ($info[$i] ne "") {
        ($attrib, $value) = split (':', $info[$i]) ;
        $Exp{$attrib} = $value ;
       }
     }
   }

   ##construimos os vectores da oracao
   if ($Exp{"tag"} ne $Border) {
     $Token[$j] = $token ;
     if ($info ne "") {
       $Lemma[$j] = $Exp{"lemma"} ;
       $Tag[$j] = $Exp{"tag"} ;
       $Attributes[$j] = "";
       foreach $at (sort keys %Exp) {
	 if ($at ne "tag"){
	     $Attributes[$j] .= "$at:$Exp{$at}|" ; 
             $ATTR[$j]{$at} = $Exp{$at} ;
         }
       }
       foreach $at (sort keys %Exp) {
	   delete $Exp{$at};
       }
     }

     $j++;
     #print STDERR "$j\r";
   }

   elsif ($Exp{"tag"} eq $Border) {
     $Token[$j] = $token ;
     $Lemma[$j] = $Exp{"lemma"} ;
     $Tag[$j] = $Exp{"tag"} ;
     $Attributes[$j] = "";
     foreach $at (sort keys %Exp) {
         if ($at ne "tag"){
             $Attributes[$j] .= "$at:$Exp{$at}|" ;
             $ATTR[$j]{$at} = $Exp{$at} ;
         }
     }
     foreach $at (sort keys %Exp) {
           delete $Exp{$at};
     }


     ##construimos os strings com a lista de tags-atributos e os token-tags da oraçao
     for ($i=0;$i<=$#Token;$i++) {

       ReConvertChar ('\:', "Fd", $i);
       ReConvertChar ('\|', "Fz", $i);
       ReConvertChar ('\>', "Fz1", $i);
       ReConvertChar ('\<', "Fz2", $i);

       $listTags .= "$Tag[$i]_${i}_<$Attributes[$i]>" ;
       $seq .= "$Token[$i]_$Tag[$i]_${i}_<$Attributes[$i]>" . " ";

	 
      }##fim do for
     # $seq .= "\." . "_" . $Border ;
     


###########################BEGIN GRAMMAR#############################################
# Single: X<lemma:$NEG>
# Add: pol:neg
(@temp) = ($listTags =~ /($X${l}lemma:$NEG\|${r})/g);
$Rel =  "Single";
Head($Rel,"",@temp);
$listTags =~ s/($X${l}lemma:$NEG\|${r})/$1/g;
Add("Head","pol:neg",@temp);

# Single: X<lemma:$POS>
# Add: pol:pos
(@temp) = ($listTags =~ /($X${l}lemma:$POS\|${r})/g);
$Rel =  "Single";
Head($Rel,"",@temp);
$listTags =~ s/($X${l}lemma:$POS\|${r})/$1/g;
Add("Head","pol:pos",@temp);

# TermR: X<lemma:$NEG> X|PUNCT
# Add: pol:neg
# NoUniq
(@temp) = ($listTags =~ /($X${l}lemma:$NEG\|${r})($X$a|$PUNCT$a)/g);
$Rel =  "TermR";
HeadDep($Rel,"",@temp);
$listTags =~ s/($X${l}lemma:$NEG\|${r})($X$a|$PUNCT$a)/$1$2/g;
Add("HeadDep","pol:neg",@temp);

# TermR: X<lemma:$POS> X|PUNCT
# Add: pol:pos
# NoUniq
(@temp) = ($listTags =~ /($X${l}lemma:$POS\|${r})($X$a|$PUNCT$a)/g);
$Rel =  "TermR";
HeadDep($Rel,"",@temp);
$listTags =~ s/($X${l}lemma:$POS\|${r})($X$a|$PUNCT$a)/$1$2/g;
Add("HeadDep","pol:pos",@temp);

# VSpecL: VERB<type:S> [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? VERB<mode:P>
# Inherit: mode, person, tense, number
(@temp) = ($listTags =~ /($VERB${l}type:S\|${r})(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?($VERB${l}mode:P\|${r})/g);
$Rel =  "VSpecL";
DepHead($Rel,"",@temp);
$listTags =~ s/($VERB${l}type:S\|${r})($ADV$a)?($ADV$a)?($ADV$a)?($ADV$a)?($ADV$a)?($ADV$a)?($ADV$a)?($ADV$a)?($ADV$a)?($ADV$a)?($VERB${l}mode:P\|${r})/$2$3$4$5$6$7$8$9$10$11$12/g;
Inherit("DepHead","mode,person,tense,number",@temp);

# VSpecL: VERB<(type:A)|(lemma:ter|haver|haber|avoir|have|deber|querer|poder)> [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? VERB
# Inherit: mode, person, tense, number
(@temp) = ($listTags =~ /($VERB${l}type:A\|${r}|$VERB${l}lemma:(?:ter|haver|haber|avoir|have|deber|querer|poder)\|${r})(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?($VERB$a)/g);
$Rel =  "VSpecL";
DepHead($Rel,"",@temp);
$listTags =~ s/($VERB${l}type:A\|${r}|$VERB${l}lemma:(?:ter|haver|haber|avoir|have|deber|querer|poder)\|${r})($ADV$a)?($ADV$a)?($ADV$a)?($ADV$a)?($ADV$a)?($ADV$a)?($ADV$a)?($ADV$a)?($ADV$a)?($ADV$a)?($VERB$a)/$2$3$4$5$6$7$8$9$10$11$12/g;
Inherit("DepHead","mode,person,tense,number",@temp);

# VSpecL: [VERB<lemma:tener|haber>] [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? CONJ<lemma:que> [ADV]? VERB<mode:N>
# NEXT
# VSpecL: VERB<lemma:tener|haber> [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? [CONJ<lemma:que>] [ADV]? VERB<mode:N>
# Inherit: mode, person, tense, number
(@temp) = ($listTags =~ /(?:$VERB${l}lemma:(?:tener|haber)\|${r})(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?($CONJ${l}lemma:que\|${r})(?:$ADV$a)?($VERB${l}mode:N\|${r})/g);
$Rel =  "VSpecL";
DepHead($Rel,"",@temp);
(@temp) = ($listTags =~ /($VERB${l}lemma:(?:tener|haber)\|${r})(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$CONJ${l}lemma:que\|${r})(?:$ADV$a)?($VERB${l}mode:N\|${r})/g);
$Rel =  "VSpecL";
DepHead($Rel,"",@temp);
$listTags =~ s/($VERB${l}lemma:(?:tener|haber)\|${r})($ADV$a)?($ADV$a)?($ADV$a)?($ADV$a)?($ADV$a)?($ADV$a)?($ADV$a)?($ADV$a)?($ADV$a)?($ADV$a)?($CONJ${l}lemma:que\|${r})($ADV$a)?($VERB${l}mode:N\|${r})/$2$3$4$5$6$7$8$9$10$11$13$14/g;
Inherit("DepHead","mode,person,tense,number",@temp);

# AdjnL: [ADV<lemma:no>] VERB<lemma:ser|estar|parecer|resultar> [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? NOUN|ADJ<lemma:$NEG>
# Add: pol:pos
(@temp) = ($listTags =~ /(?:$ADV${l}lemma:no\|${r})($VERB${l}lemma:(?:ser|estar|parecer|resultar)\|${r})(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?($NOUN$a|$ADJ${l}lemma:$NEG\|${r})/g);
$Rel =  "AdjnL";
DepHead($Rel,"",@temp);
$listTags =~ s/($ADV${l}lemma:no\|${r})($VERB${l}lemma:(?:ser|estar|parecer|resultar)\|${r})($ADV$a)?($ADV$a)?($ADV$a)?($ADV$a)?($ADV$a)?($ADV$a)?($ADV$a)?($ADV$a)?($ADV$a)?($ADV$a)?($NOUN$a|$ADJ${l}lemma:$NEG\|${r})/$1$3$4$5$6$7$8$9$10$11$12$13/g;
Add("DepHead","pol:pos",@temp);

# AdjnL: [ADV<lemma:no>] VERB<lemma:ser|estar|parecer|resultar> [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? NOUN|ADJ<lemma:$POS>
# Add: pol:neg
(@temp) = ($listTags =~ /(?:$ADV${l}lemma:no\|${r})($VERB${l}lemma:(?:ser|estar|parecer|resultar)\|${r})(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?($NOUN$a|$ADJ${l}lemma:$POS\|${r})/g);
$Rel =  "AdjnL";
DepHead($Rel,"",@temp);
$listTags =~ s/($ADV${l}lemma:no\|${r})($VERB${l}lemma:(?:ser|estar|parecer|resultar)\|${r})($ADV$a)?($ADV$a)?($ADV$a)?($ADV$a)?($ADV$a)?($ADV$a)?($ADV$a)?($ADV$a)?($ADV$a)?($ADV$a)?($NOUN$a|$ADJ${l}lemma:$POS\|${r})/$1$3$4$5$6$7$8$9$10$11$12$13/g;
Add("DepHead","pol:neg",@temp);

# SpecL: [ADV<lemma:no>] PRO  VERB<lemma:$NEG>
# Add: pol:pos
(@temp) = ($listTags =~ /(?:$ADV${l}lemma:no\|${r})($PRO$a)($VERB${l}lemma:$NEG\|${r})/g);
$Rel =  "SpecL";
DepHead($Rel,"",@temp);
$listTags =~ s/($ADV${l}lemma:no\|${r})($PRO$a)($VERB${l}lemma:$NEG\|${r})/$1$3/g;
Add("DepHead","pol:pos",@temp);

# SpecL: [ADV<lemma:no>] PRO  VERB<lemma:$POS>
# Add: pol:neg
(@temp) = ($listTags =~ /(?:$ADV${l}lemma:no\|${r})($PRO$a)($VERB${l}lemma:$POS\|${r})/g);
$Rel =  "SpecL";
DepHead($Rel,"",@temp);
$listTags =~ s/($ADV${l}lemma:no\|${r})($PRO$a)($VERB${l}lemma:$POS\|${r})/$1$3/g;
Add("DepHead","pol:neg",@temp);

# AdjnL: X<lemma:nada|no> X<lemma:$NEG>
# Add: pol:pos
(@temp) = ($listTags =~ /($X${l}lemma:(?:nada|no)\|${r})($X${l}lemma:$NEG\|${r})/g);
$Rel =  "AdjnL";
DepHead($Rel,"",@temp);
$listTags =~ s/($X${l}lemma:(?:nada|no)\|${r})($X${l}lemma:$NEG\|${r})/$2/g;
Add("DepHead","pol:pos",@temp);

# AdjnL: X<lemma:nada|no> X<lemma:$POS>
# Add: pol:neg
(@temp) = ($listTags =~ /($X${l}lemma:(?:nada|no)\|${r})($X${l}lemma:$POS\|${r})/g);
$Rel =  "AdjnL";
DepHead($Rel,"",@temp);
$listTags =~ s/($X${l}lemma:(?:nada|no)\|${r})($X${l}lemma:$POS\|${r})/$2/g;
Add("DepHead","pol:neg",@temp);

# CprepR: X<lemma:fácil|sencillo> PRP<lemma:de> VERB<lemma:$POS>
# Add: pol:pos
(@temp) = ($listTags =~ /($X${l}lemma:(?:fácil|sencillo)\|${r})($PRP${l}lemma:de\|${r})($VERB${l}lemma:$POS\|${r})/g);
$Rel =  "CprepR";
HeadRelDep($Rel,"",@temp);
$listTags =~ s/($X${l}lemma:(?:fácil|sencillo)\|${r})($PRP${l}lemma:de\|${r})($VERB${l}lemma:$POS\|${r})/$1/g;
Add("HeadRelDep","pol:pos",@temp);

# Single: X<lemma:fácil|sencillo> [PRP<lemma:de>] [VERB<lemma:$NEG>]
# Add: pol:neg
# NEXT
# CprepR: X<lemma:fácil|sencillo> PRP<lemma:de> VERB<lemma:$NEG>
# Add: pol:neg
(@temp) = ($listTags =~ /($X${l}lemma:(?:fácil|sencillo)\|${r})(?:$PRP${l}lemma:de\|${r})(?:$VERB${l}lemma:$NEG\|${r})/g);
$Rel =  "Single";
Head($Rel,"",@temp);
Add("Head","pol:neg",@temp);
(@temp) = ($listTags =~ /($X${l}lemma:(?:fácil|sencillo)\|${r})($PRP${l}lemma:de\|${r})($VERB${l}lemma:$NEG\|${r})/g);
$Rel =  "CprepR";
HeadRelDep($Rel,"",@temp);
$listTags =~ s/($X${l}lemma:(?:fácil|sencillo)\|${r})($PRP${l}lemma:de\|${r})($VERB${l}lemma:$NEG\|${r})/$1/g;
Add("HeadRelDep","pol:neg",@temp);

# Single: [X<lemma:difícil|complicado|duro>] [PRP<lemma:de>] VERB<lemma:$POS>
# Add: pol:neg
# NEXT
# CprepR: X<lemma:difícil|complicado|duro> PRP<lemma:de> VERB<lemma:$POS>
(@temp) = ($listTags =~ /(?:$X${l}lemma:(?:difícil|complicado|duro)\|${r})(?:$PRP${l}lemma:de\|${r})($VERB${l}lemma:$POS\|${r})/g);
$Rel =  "Single";
Head($Rel,"",@temp);
Add("Head","pol:neg",@temp);
(@temp) = ($listTags =~ /($X${l}lemma:(?:difícil|complicado|duro)\|${r})($PRP${l}lemma:de\|${r})($VERB${l}lemma:$POS\|${r})/g);
$Rel =  "CprepR";
HeadRelDep($Rel,"",@temp);
$listTags =~ s/($X${l}lemma:(?:difícil|complicado|duro)\|${r})($PRP${l}lemma:de\|${r})($VERB${l}lemma:$POS\|${r})/$1/g;

# Single: [X<lemma:difícil|complicado|duro>] [PRP<lemma:de>] VERB<lemma:$NEG>
# Add: pol:pos
# NEXT
# CprepR: X<lemma:difícil|complicado|duro> PRP<lemma:de> VERB<lemma:$NEG>
# Add: pol:pos
(@temp) = ($listTags =~ /(?:$X${l}lemma:(?:difícil|complicado|duro)\|${r})(?:$PRP${l}lemma:de\|${r})($VERB${l}lemma:$NEG\|${r})/g);
$Rel =  "Single";
Head($Rel,"",@temp);
Add("Head","pol:pos",@temp);
(@temp) = ($listTags =~ /($X${l}lemma:(?:difícil|complicado|duro)\|${r})($PRP${l}lemma:de\|${r})($VERB${l}lemma:$NEG\|${r})/g);
$Rel =  "CprepR";
HeadRelDep($Rel,"",@temp);
$listTags =~ s/($X${l}lemma:(?:difícil|complicado|duro)\|${r})($PRP${l}lemma:de\|${r})($VERB${l}lemma:$NEG\|${r})/$1/g;
Add("HeadRelDep","pol:pos",@temp);

# Single: ADJ<pol:pos> [NOUN<pol:neg>]
# Add: pol:neg
# NEXT
# AdjnL: ADJ<pol:neg> NOUN<pol:neg>
(@temp) = ($listTags =~ /($ADJ${l}pol:pos\|${r})(?:$NOUN${l}pol:neg\|${r})/g);
$Rel =  "Single";
Head($Rel,"",@temp);
Add("Head","pol:neg",@temp);
(@temp) = ($listTags =~ /($ADJ${l}pol:neg\|${r})($NOUN${l}pol:neg\|${r})/g);
$Rel =  "AdjnL";
DepHead($Rel,"",@temp);
$listTags =~ s/($ADJ${l}pol:neg\|${r})($NOUN${l}pol:neg\|${r})/$2/g;

# AdjnL: ADJ<pol:neg> NOUN
# Add: pol:neg
(@temp) = ($listTags =~ /($ADJ${l}pol:neg\|${r})($NOUN$a)/g);
$Rel =  "AdjnL";
DepHead($Rel,"",@temp);
$listTags =~ s/($ADJ${l}pol:neg\|${r})($NOUN$a)/$2/g;
Add("DepHead","pol:neg",@temp);

# AdjnR: NOUN ADJ<pol:neg>
# Add: pol:neg
(@temp) = ($listTags =~ /($NOUN$a)($ADJ${l}pol:neg\|${r})/g);
$Rel =  "AdjnR";
HeadDep($Rel,"",@temp);
$listTags =~ s/($NOUN$a)($ADJ${l}pol:neg\|${r})/$1/g;
Add("HeadDep","pol:neg",@temp);

# AdjnL: ADJ<pol:pos> NOUN
# Add: pol:pos
(@temp) = ($listTags =~ /($ADJ${l}pol:pos\|${r})($NOUN$a)/g);
$Rel =  "AdjnL";
DepHead($Rel,"",@temp);
$listTags =~ s/($ADJ${l}pol:pos\|${r})($NOUN$a)/$2/g;
Add("DepHead","pol:pos",@temp);

# AdjnR: NOUN ADJ<pol:pos>
# Add: pol:pos
(@temp) = ($listTags =~ /($NOUN$a)($ADJ${l}pol:pos\|${r})/g);
$Rel =  "AdjnR";
HeadDep($Rel,"",@temp);
$listTags =~ s/($NOUN$a)($ADJ${l}pol:pos\|${r})/$1/g;
Add("HeadDep","pol:pos",@temp);

# CprepR: ADJ|NOUN PRP X
(@temp) = ($listTags =~ /($ADJ$a|$NOUN$a)($PRP$a)($X$a)/g);
$Rel =  "CprepR";
HeadRelDep($Rel,"",@temp);
$listTags =~ s/($ADJ$a|$NOUN$a)($PRP$a)($X$a)/$1/g;

# CircR: VERB PRP X
(@temp) = ($listTags =~ /($VERB$a)($PRP$a)($X$a)/g);
$Rel =  "CircR";
HeadRelDep($Rel,"",@temp);
$listTags =~ s/($VERB$a)($PRP$a)($X$a)/$1/g;

# AtrR: VERB<lemma:ser> ADJ
(@temp) = ($listTags =~ /($VERB${l}lemma:ser\|${r})($ADJ$a)/g);
$Rel =  "AtrR";
HeadDep($Rel,"",@temp);
$listTags =~ s/($VERB${l}lemma:ser\|${r})($ADJ$a)/$1/g;

############################## END GRAMMAR  ###############################


#########SAIDA CORRECTOR TAGGER

   if ($flag eq "-c") {

       for  ($i=0;$i<=$#Token;$i++) {
          print "$Token[$i]\t";
          $OrdTags{"tag"} = $Tag[$i]; 
          foreach $feat (keys %{$ATTR[$i]}) {
              $OrdTags{$feat} = $ATTR[$i]{$feat};
	  }
          foreach $feat (sort keys %OrdTags) {
                 print "$feat:$OrdTags{$feat}|";
                 delete $OrdTags{$feat};
          }
       print "\n";
       ##Colocar a zero os vectores de cada oraçao
       delete  $Token[$i];
       delete  $Tag[$i];
       delete  $Lemma[$i];
       delete  $Attributes[$i];
       delete  $ATTR[$i];
       }
       
    }
#########SAIDA STANDARD DO ANALISADOR 

    elsif ($flag eq "-a") {

      ##Escrever a oraçao que vai ser analisada:
      print "SENT::$seq\n";
      #print STDERR "LIST:: $listTags\n";
      ####imprimir Hash de dependencias ordenado:
      foreach $triplet (sort {$Ordenar{$a} <=>
                              $Ordenar{$b} }
                         keys %Ordenar ) {
         $triplet =~ s/^\(//;
         $triplet =~ s/\)$//;
         ($re, $he, $de) =  split (";", $triplet) ;
         if ($re !~ /($DepLex)/) {
           ($he ,$ta1, $pos1) = split ("_", $he);
            $he = $Lemma[$pos1];
            ($de ,$ta2, $pos2) = split ("_", $de);
            $de = $Lemma[$pos2];
            $triplet = "$re;$he\_$ta1\_$pos1;$de\_$ta2\_$pos2" ;
         }
         print "($triplet)\n";
       }
       ##final de analise de frase:
       print "---\n";
     }


  ###SAIDA ANALISADOR COM ESTRUTURA ATRIBUTO-VALOR (full analysis)
   elsif ($flag eq "-fa") {

      ##Escrever a oraçao que vai ser analisada:
      print "SENT::$seq\n";
      #print STDERR "LIST:: $listTags\n";
      ####imprimir Hash de dependencias ordenado:
      $re="";
      foreach $triplet (sort {$Ordenar{$a} <=>
                              $Ordenar{$b} }
                         keys %Ordenar ) {
           # print "$triplet\n";
         $triplet =~ s/^\(//;
         $triplet =~ s/\)$//;
         ($re, $he, $de) =  split (";", $triplet) ;

         if ($re !~ /($DepLex)/) { ##se rel nao e lexical
           ($he1, $ta1, $pos1) = split ("_", $he);
            $he1 = $Lemma[$pos1];
            ($de2 ,$ta2, $pos2) = split ("_", $de);
            $de2 = $Lemma[$pos2];
            $triplet = "$re;$he1\_$ta1\_$pos1;$de2\_$ta2\_$pos2" ;
         }
         print "($triplet)\n";
         ($he, ,$ta, $pos) = split ("_", $he);
         print "HEAD::$he\_$ta\_$pos<";
         $ATTR[$pos]{"lemma"} = $Lemma[$pos];
         $ATTR[$pos]{"token"} = $Token[$pos];
         foreach $feat (sort keys %{$ATTR[$pos]}) {
           print "$feat:$ATTR[$pos]{$feat}|" ;
         }
         print ">\n";
         ($de, $ta, $pos) = split ("_", $de);
         print "DEP::$de\_$ta\_$pos<";
         $ATTR[$pos]{"lemma"} = $Lemma[$pos];
         $ATTR[$pos]{"token"} = $Token[$pos];
         foreach $feat (sort keys %{$ATTR[$pos]}) {
           print "$feat:$ATTR[$pos]{$feat}|" ;
         }
         print ">\n";

         if ($re =~ /\//) {
          ($depName, $reUnit) = split ('\/', $re);
          ($reLex, ,$ta, $pos) = split ("_", $reUnit);
          print "REL::$reLex\_$ta\_$pos<";
          $ATTR[$pos]{"lemma"} = $Lemma[$pos];
          $ATTR[$pos]{"token"} = $Token[$pos];
          foreach $feat (sort keys %{$ATTR[$pos]}) {
           print "$feat:$ATTR[$pos]{$feat}|" ;
          }
         print ">\n";
        }
      }
       ##final de analise de frase:
       print "---\n";
     }



      
      ##Colocar numa lista vazia os strings com os tags (listTags) e a oraçao (seq)
      ##Borrar hash ordenado de triplets
      
      $i=0;
      $j=0;
      $listTags="";
      $seq="";
      foreach $t (keys %Ordenar) {
         delete  $Ordenar{$t};
      }
      for  ($i=0;$i<=$#Token;$i++) {
         delete  $Token[$i];
         delete  $Tag[$i];
         delete  $Lemma[$i];
         delete  $Attributes[$i];
         delete  $ATTR[$i];
       }
   
    

  } ##fim do elsif


 
}

#print "\n";
print STDERR "Fim do parsing...\n";





sub HeadDep {

    my ($y,$z, @x) = @_ ;
    my $n1=0;
    my $n2=0;
    my $found=0;
    my @z;

    (@z) = split (",", $z);

    for ($m=0;$m<=$#x;$m++) {
            $Head = $x[$m];
            $m++;
            $Dep = $x[$m];
           ($n1) = ($Head =~ /[\w]+_([0-9]+)/) ;
           ($n2) = ($Dep =~ /[\w]+_([0-9]+)/);


           if ($z eq "") {
              $Head = "$Lemma[$n1]_$Tag[$n1]_${n1}" ;
              $Rel =  $y ;
              $Dep =  "$Lemma[$n2]_$Tag[$n2]_${n2}" ;

              $Ordenar{"($Rel;$Head;$Dep)"} = $n2 ;

            }
            else {
             foreach $atr (@z) {
	
		if ( ($ATTR[$n1]{$atr} ne $ATTR[$n2]{$atr}) && 
                      ($ATTR[$n1]{$atr} !~  /^[NC0]$/ && $ATTR[$n2]{$atr}  !~  /^[NC0]$/) && ##a modificar: so no caso de que atr = number or genre (N = invariable or neutral)
		     ($ATTR[$n1]{$atr} ne "" && $ATTR[$n2]{$atr} ne  "") ) {
                      
		       $found++;

                }
             }
	
	     # print STDERR "Found: $found\n";
              if ($found > 0) {
               	$listTags =~ s/($Tag[$n1]_${n1}_<)/$1concord:0\|/;
                $listTags =~ s/($Tag[$n2]_${n2}_<)/$1concord:0\|/;
                $found=0;
             }
             else {

               $listTags =~ s/($Tag[$n1]_${n1}_<)/$1concord:1\|/;
               $listTags =~ s/($Tag[$n2]_${n2}_<)/$1concord:1\|/;
               $found=0;


               $Head = "$Lemma[$n1]_$Tag[$n1]_${n1}" ;
               $Rel =  $y ;
               $Dep =  "$Lemma[$n2]_$Tag[$n2]_${n2}" ;

               $Ordenar{"($Rel;$Head;$Dep)"} = $n2 ;
            }
	   }

    }


}


sub DepHead {

    my ($y, $z, @x) = @_ ;
    my $n1=0;
    my $n2=0;
    my $found=0;
    my @z;

    (@z) = split (",", $z);

   # print STDERR "-$y-, -$z-, -@x-\n";

    for ($m=0;$m<=$#x;$m++) {
            $Dep = $x[$m];
            $m++;
            $Head = $x[$m];
            ($n1) = ($Head =~ /[\w]+_([0-9]+)/) ;
            ($n2) = ($Dep =~ /[\w]+_([0-9]+)/);

            if ($z eq "") {
              $Head = "$Lemma[$n1]_$Tag[$n1]_${n1}" ;
              $Rel =  $y ;
              $Dep =  "$Lemma[$n2]_$Tag[$n2]_${n2}" ;

              $Ordenar{"($Rel;$Head;$Dep)"} = $n2 ;

            }
            else {
	     
              foreach $atr (@z) {
	      
                 if ( ($ATTR[$n1]{$atr} ne $ATTR[$n2]{$atr}) && 
                       ($ATTR[$n1]{$atr} !~  /^[NC0]$/ && $ATTR[$n2]{$atr}  !~  /^[NC0]$/) &&
		      ($ATTR[$n1]{$atr} ne "" && $ATTR[$n2]{$atr} ne  "") ) {
		       $found++ ;
                 }
	        
              }
	    
            #  print STDERR "Found: $found\n";
             if ($found > 0) {
               	$listTags =~ s/($Tag[$n1]_${n1}_<)/$1concord:0\|/;
                $listTags =~ s/($Tag[$n2]_${n2}_<)/$1concord:0\|/;
                $found=0;

             }
             else  {

               $listTags =~ s/($Tag[$n1]_${n1}_<)/$1concord:1\|/;
               $listTags =~ s/($Tag[$n2]_${n2}_<)/$1concord:1\|/;
               $found=0;


               $Head = "$Lemma[$n1]_$Tag[$n1]_${n1}" ;
               $Rel =  $y ;
               $Dep =  "$Lemma[$n2]_$Tag[$n2]_${n2}" ;

               $Ordenar{"($Rel;$Head;$Dep)"} = $n2 ;
	     }
          }

    }


}


sub DepRelHead {

    my ($y, $z, @x) = @_ ;
    my $n1=0;
    my $n2=0;
    my $n3=0;
    my $found=0;
    my @z;

    (@z) = split (",", $z);

     for ($m=0;$m<=$#x;$m++) {
            $Dep = $x[$m];
            $m++;
            $Rel = $x[$m];
            $m++;
            $Head = $x[$m];
           ($n1) = ($Head =~ /[\w]+_([0-9]+)/) ;
           ($n2) = ($Rel =~ /[\w]+_([0-9]+)/);
           ($n3) = ($Dep =~ /[\w]+_([0-9]+)/);

            if ($z eq "") {
               $Head = "$Lemma[$n1]_$Tag[$n1]_${n1}" ;
               $Rel =  "$y/$Lemma[$n2]_$Tag[$n2]_${n2}" ;
               $Dep =  "$Lemma[$n3]_$Tag[$n3]_${n3}" ;

               $Ordenar{"($Rel;$Head;$Dep)"} = $n3 ;

            }
            else {
             foreach $atr (@z) {
	
                if ( ($ATTR[$n1]{$atr} ne $ATTR[$n3]{$atr}) && 
                       ($ATTR[$n1]{$atr} !~  /^[NC0]$/ && $ATTR[$n3]{$atr}  !~  /^[NC0]$/) &&
		      ($ATTR[$n1]{$atr} ne "" && $ATTR[$n3]{$atr} ne  "") ) {
		       $found++ ;
                }
		
             }
	
             if ($found > 0) {
               	$listTags =~ s/($Tag[$n1]_${n1}_<)/$1concord:0\|/;
                $listTags =~ s/($Tag[$n3]_${n3}_<)/$1concord:0\|/;
                $found=0;
             }
             else {

               $listTags =~ s/($Tag[$n1]_${n1}_<)/$1concord:1\|/;
               $listTags =~ s/($Tag[$n3]_${n3}_<)/$1concord:1\|/;
               $found=0;


	       $Head = "$Lemma[$n1]_$Tag[$n1]_${n1}" ;
               $Rel =  "$y/$Lemma[$n2]_$Tag[$n2]_${n2}" ;
               $Dep =  "$Lemma[$n3]_$Tag[$n3]_${n3}" ;

               $Ordenar{"($Rel;$Head;$Dep)"} = $n3 ;

             }
	   }

    }


}



sub HeadRelDep {

    my ($y, $z, @x) = @_ ;
    my $n1=0;
    my $n2=0;
    my $n3=0;
    my $found=0;
    my @z;

    (@z) = split (",", $z);

    for ($m=0;$m<=$#x;$m++) {
            $Head = $x[$m];
            $m++;
            $Rel = $y . "_" . $x[$m];
            $m++;
            $Dep = $x[$m];
           ($n1) = ($Head =~ /[\w]+_([0-9]+)/) ;
           ($n2) = ($Rel =~ /[\w]+_([0-9]+)/);
           ($n3) = ($Dep =~ /[\w]+_([0-9]+)/);


             if ($z eq "") {
               $Head = "$Lemma[$n1]_$Tag[$n1]_${n1}" ;
               $Rel =  "$y/$Lemma[$n2]_$Tag[$n2]_${n2}" ;
               $Dep =  "$Lemma[$n3]_$Tag[$n3]_${n3}" ;

                $Ordenar{"($Rel;$Head;$Dep)"} = $n3 ;

            }
            else {
             foreach $atr (@z) {
	
                 if ( ($ATTR[$n1]{$atr} ne $ATTR[$n3]{$atr}) && 
                       ($ATTR[$n1]{$atr} !~  /^[NC0]$/ && $ATTR[$n3]{$atr}  !~  /^[NC0]$/) && 
		      ($ATTR[$n1]{$atr} ne "" && $ATTR[$n3]{$atr} ne  "") ) {
		       $found++ ;
                }
	

             }
	
             if ($found > 0)  {
               	$listTags =~ s/($Tag[$n1]_${n1}_<)/$1concord:0\|/;
                $listTags =~ s/($Tag[$n3]_${n3}_<)/$1concord:0\|/;
                $found=0;
             }
             else {

               $listTags =~ s/($Tag[$n1]_${n1}_<)/$1concord:1\|/;
               $listTags =~ s/($Tag[$n3]_${n3}_<)/$1concord:1\|/;
               $found=0;


               $Head = "$Lemma[$n1]_$Tag[$n1]_${n1}" ;
               $Rel =  "$y/$Lemma[$n2]_$Tag[$n2]_${n2}" ;
               $Dep =  "$Lemma[$n3]_$Tag[$n3]_${n3}" ;

               $Ordenar{"($Rel;$Head;$Dep)"} = $n3 ;

	     }
	   }


    }

}





sub RelDepHead {

    my ($y, $z, @x) = @_ ;
    my $n1=0;
    my $n2=0;
    my $n3=0;
    my $found=0;
    my @z;

    (@z) = split (",", $z);

     for ($m=0;$m<=$#x;$m++) {
            $Rel = $x[$m];
            $m++;
            $Dep = $x[$m];
            $m++;
            $Head = $x[$m];
           ($n1) = ($Head =~ /[\w]+_([0-9]+)/) ;
           ($n2) = ($Rel =~ /[\w]+_([0-9]+)/);
           ($n3) = ($Dep =~ /[\w]+_([0-9]+)/);

            if ($z eq "") {
               $Head = "$Lemma[$n1]_$Tag[$n1]_${n1}" ;
               $Rel =  "$y/$Lemma[$n2]_$Tag[$n2]_${n2}" ;
               $Dep =  "$Lemma[$n3]_$Tag[$n3]_${n3}" ;

               $Ordenar{"($Rel;$Head;$Dep)"} = $n3 ;

            }
            else {
             foreach $atr (@z) {
	
                if ( ($ATTR[$n1]{$atr} ne $ATTR[$n3]{$atr}) && 
                       ($ATTR[$n1]{$atr} !~  /^[NC0]$/ && $ATTR[$n3]{$atr}  !~  /^[NC0]$/) &&
		      ($ATTR[$n1]{$atr} ne "" && $ATTR[$n3]{$atr} ne  "") ) {
		       $found++ ;
                }
		
             }
	
             if ($found > 0) {
               	$listTags =~ s/($Tag[$n1]_${n1}_<)/$1concord:0\|/;
                $listTags =~ s/($Tag[$n3]_${n3}_<)/$1concord:0\|/;
                $found=0;
             }
             else {

               $listTags =~ s/($Tag[$n1]_${n1}_<)/$1concord:1\|/;
               $listTags =~ s/($Tag[$n3]_${n3}_<)/$1concord:1\|/;
               $found=0;


	       $Head = "$Lemma[$n1]_$Tag[$n1]_${n1}" ;
               $Rel =  "$y/$Lemma[$n2]_$Tag[$n2]_${n2}" ;
               $Dep =  "$Lemma[$n3]_$Tag[$n3]_${n3}" ;

               $Ordenar{"($Rel;$Head;$Dep)"} = $n3 ;

             }
	   }

    }


}


sub RelHeadDep {

    my ($y, $z, @x) = @_ ;
    my $n1=0;
    my $n2=0;
    my $n3=0;
    my $found=0;
    my @z;

    (@z) = split (",", $z);

     for ($m=0;$m<=$#x;$m++) {
            $Rel = $x[$m];
            $m++;
            $Head = $x[$m];
            $m++;
            $Dep = $x[$m];
           ($n1) = ($Head =~ /[\w]+_([0-9]+)/) ;
           ($n2) = ($Rel =~ /[\w]+_([0-9]+)/);
           ($n3) = ($Dep =~ /[\w]+_([0-9]+)/);

            if ($z eq "") {
               $Head = "$Lemma[$n1]_$Tag[$n1]_${n1}" ;
               $Rel =  "$y/$Lemma[$n2]_$Tag[$n2]_${n2}" ;
               $Dep =  "$Lemma[$n3]_$Tag[$n3]_${n3}" ;

               $Ordenar{"($Rel;$Head;$Dep)"} = $n3 ;

            }
            else {
             foreach $atr (@z) {
	
                if ( ($ATTR[$n1]{$atr} ne $ATTR[$n3]{$atr}) && 
                       ($ATTR[$n1]{$atr} !~  /^[NC0]$/ && $ATTR[$n3]{$atr}  !~  /^[NC0]$/) &&
		      ($ATTR[$n1]{$atr} ne "" && $ATTR[$n3]{$atr} ne  "") ) {
		       $found++ ;
                }
		
             }
	
             if ($found > 0) {
               	$listTags =~ s/($Tag[$n1]_${n1}_<)/$1concord:0\|/;
                $listTags =~ s/($Tag[$n3]_${n3}_<)/$1concord:0\|/;
                $found=0;
             }
             else {

               $listTags =~ s/($Tag[$n1]_${n1}_<)/$1concord:1\|/;
               $listTags =~ s/($Tag[$n3]_${n3}_<)/$1concord:1\|/;
               $found=0;


	       $Head = "$Lemma[$n1]_$Tag[$n1]_${n1}" ;
               $Rel =  "$y/$Lemma[$n2]_$Tag[$n2]_${n2}" ;
               $Dep =  "$Lemma[$n3]_$Tag[$n3]_${n3}" ;

               $Ordenar{"($Rel;$Head;$Dep)"} = $n3 ;

             }
	   }

    }


}


sub DepHeadRel {

    my ($y, $z, @x) = @_ ;
    my $n1=0;
    my $n2=0;
    my $n3=0;
    my $found=0;
    my @z;

    (@z) = split (",", $z);

     for ($m=0;$m<=$#x;$m++) {
            $Dep = $x[$m];
            $m++;
            $Head = $x[$m];
            $m++;
            $Rel = $x[$m];
           ($n1) = ($Head =~ /[\w]+_([0-9]+)/) ;
           ($n2) = ($Rel =~ /[\w]+_([0-9]+)/);
           ($n3) = ($Dep =~ /[\w]+_([0-9]+)/);

            if ($z eq "") {
               $Head = "$Lemma[$n1]_$Tag[$n1]_${n1}" ;
               $Rel =  "$y/$Lemma[$n2]_$Tag[$n2]_${n2}" ;
               $Dep =  "$Lemma[$n3]_$Tag[$n3]_${n3}" ;

               $Ordenar{"($Rel;$Head;$Dep)"} = $n3 ;

            }
            else {
             foreach $atr (@z) {
	
                if ( ($ATTR[$n1]{$atr} ne $ATTR[$n3]{$atr}) && 
                       ($ATTR[$n1]{$atr} !~  /^[NC0]$/ && $ATTR[$n3]{$atr}  !~  /^[NC0]$/) &&
		      ($ATTR[$n1]{$atr} ne "" && $ATTR[$n3]{$atr} ne  "") ) {
		       $found++ ;
                }
		
             }
	
             if ($found > 0) {
               	$listTags =~ s/($Tag[$n1]_${n1}_<)/$1concord:0\|/;
                $listTags =~ s/($Tag[$n3]_${n3}_<)/$1concord:0\|/;
                $found=0;
             }
             else {

               $listTags =~ s/($Tag[$n1]_${n1}_<)/$1concord:1\|/;
               $listTags =~ s/($Tag[$n3]_${n3}_<)/$1concord:1\|/;
               $found=0;


	       $Head = "$Lemma[$n1]_$Tag[$n1]_${n1}" ;
               $Rel =  "$y/$Lemma[$n2]_$Tag[$n2]_${n2}" ;
               $Dep =  "$Lemma[$n3]_$Tag[$n3]_${n3}" ;

               $Ordenar{"($Rel;$Head;$Dep)"} = $n3 ;

             }
	   }

    }


}


sub HeadDepRel {

    my ($y, $z, @x) = @_ ;
    my $n1=0;
    my $n2=0;
    my $n3=0;
    my $found=0;
    my @z;

    (@z) = split (",", $z);

     for ($m=0;$m<=$#x;$m++) {
            $Head = $x[$m];
            $m++;
            $Rel = $x[$m];
            $m++;
            $Rel = $x[$m];
           ($n1) = ($Head =~ /[\w]+_([0-9]+)/) ;
           ($n2) = ($Rel =~ /[\w]+_([0-9]+)/);
           ($n3) = ($Dep =~ /[\w]+_([0-9]+)/);

            if ($z eq "") {
               $Head = "$Lemma[$n1]_$Tag[$n1]_${n1}" ;
               $Rel =  "$y/$Lemma[$n2]_$Tag[$n2]_${n2}" ;
               $Dep =  "$Lemma[$n3]_$Tag[$n3]_${n3}" ;

               $Ordenar{"($Rel;$Head;$Dep)"} = $n3 ;

            }
            else {
             foreach $atr (@z) {
	
                if ( ($ATTR[$n1]{$atr} ne $ATTR[$n3]{$atr}) && 
                       ($ATTR[$n1]{$atr} !~  /^[NC0]$/ && $ATTR[$n3]{$atr}  !~  /^[NC0]$/) &&
		      ($ATTR[$n1]{$atr} ne "" && $ATTR[$n3]{$atr} ne  "") ) {
		       $found++ ;
                }
		
             }
	
             if ($found > 0) {
               	$listTags =~ s/($Tag[$n1]_${n1}_<)/$1concord:0\|/;
                $listTags =~ s/($Tag[$n3]_${n3}_<)/$1concord:0\|/;
                $found=0;
             }
             else {

               $listTags =~ s/($Tag[$n1]_${n1}_<)/$1concord:1\|/;
               $listTags =~ s/($Tag[$n3]_${n3}_<)/$1concord:1\|/;
               $found=0;


	       $Head = "$Lemma[$n1]_$Tag[$n1]_${n1}" ;
               $Rel =  "$y/$Lemma[$n2]_$Tag[$n2]_${n2}" ;
               $Dep =  "$Lemma[$n3]_$Tag[$n3]_${n3}" ;

               $Ordenar{"($Rel;$Head;$Dep)"} = $n3 ;

             }
	   }

    }


}




sub HeadDep_lex {

    my ($y,$z, @x) = @_ ;
    my $n1=0;
    my $n2=0;
    my $found=0;
    my @z;


    (@z) = split (",", $z);

    for ($m=0;$m<=$#x;$m++) {
            $Head = $x[$m];
            $m++;
            $Dep = $x[$m];
           ($n1) = ($Head =~ /[\w]+_([0-9]+)/) ;
           ($n2) = ($Dep =~ /[\w]+_([0-9]+)/);

           if ($z eq "") {
              #$Head = "$Lemma[$n1]_$Tag[$n1]_${n1}" ;
              $Head = "$ATTR[$n1]{\"lemma\"}_$Tag[$n1]_${n1}" ;
              $Rel =  $y ;
              #$Dep = "$Lemma[$n2]_$Tag[$n2]_${n2}" ;
              $Dep =  "$ATTR[$n2]{\"lemma\"}_$Tag[$n2]_${n2}" ;

              $Ordenar{"($Rel;$Head;$Dep)"} = $n2 ;
              #print STDERR "head::$Head -- dep:::$Dep\n";

	      if (!defined $ATTR_lemma{$n1} && !defined $ATTR_lemma{$n2} ) {
                  $ATTR_lemma{$n1} = $ATTR[$n1]{"lemma"} . "\@$Lemma[$n2]" ;
                 # $ATTR_token{$n1} = $ATTR[$n1]{"token"} .  "\@$Token[$n2]";

                  $IDF{$n1}++;

	      }

              elsif (!defined $ATTR_lemma{$n1} && defined $ATTR_lemma{$n2} ) {
                  $ATTR_lemma{$n1} = $ATTR[$n1]{"lemma"} .  "\@$ATTR_lemma{$n2}" ;
                  #$ATTR_token{$n1} = $ATTR[$n1]{"token"} .   "\@$ATTR_token{$n2}";

                  $IDF{$n1}++;

	      }
              elsif (defined $ATTR_lemma{$n1} && !defined $ATTR_lemma{$n2} ) {
                  $ATTR_lemma{$n1} .=   "\@$Lemma[$n2]" ;
                  #$ATTR_token{$n1} .=   "\@$Token[$n2]";


	      }
              else {

                     $ATTR_lemma{$n1} .=    "\@$ATTR_lemma{$n2}" ;
                   #  $ATTR_token{$n1} .=    "\@$ATTR_token{$n2}" ;

		
             }

            #print STDERR "$n1::: $ATTR_lemma{$n1} -- $ATTR_token{$n1} \n";

            }
            else {
             foreach $atr (@z) {
	
		if ( ($ATTR[$n1]{$atr} ne $ATTR[$n2]{$atr}) && 
                       ($ATTR[$n1]{$atr} !~  /^[NC0]$/ && $ATTR[$n2]{$atr}  !~  /^[NC0]$/) &&
		      ($ATTR[$n1]{$atr} ne "" && $ATTR[$n2]{$atr} ne  "") ) {
		       $found++;

                }
             }
	
	     # print STDERR "Found: $found\n";
              if ($found > 0) {
               	$listTags =~ s/($Tag[$n1]_${n1}_<)/$1concord:0\|/;
                $listTags =~ s/($Tag[$n2]_${n2}_<)/$1concord:0\|/;
                $found=0;
             }
             else {

               $listTags =~ s/($Tag[$n1]_${n1}_<)/$1concord:1\|/;
               $listTags =~ s/($Tag[$n2]_${n2}_<)/$1concord:1\|/;
               $found=0;

               #$Head = "$Lemma[$n1]_$Tag[$n1]_${n1}" ;
               $Head = "$ATTR[$n1]{\"lemma\"}_$Tag[$n1]_${n1}" ;
               $Rel =  $y ;
               #$Dep = "$Lemma[$n2]_$Tag[$n2]_${n2}" ;
               $Dep =  "$ATTR[$n2]{\"lemma\"}_$Tag[$n2]_${n2}" ;

               $Ordenar{"($Rel;$Head;$Dep)"} = $n2 ;


               if (!defined $ATTR_lemma{$n1} && !defined $ATTR_lemma{$n2} ) {
                  $ATTR_lemma{$n1} = $ATTR[$n1]{"lemma"} . "\@$Lemma[$n2]" ;
                 # $ATTR_token{$n1} = $ATTR[$n1]{"token"} .  "\@$Token[$n2]";

                  $IDF{$n1}++;

	       }

               elsif (!defined $ATTR_lemma{$n1} && defined $ATTR_lemma{$n2} ) {
                  $ATTR_lemma{$n1} = $ATTR[$n1]{"lemma"} .  "\@$ATTR_lemma{$n2}" ;
                 # $ATTR_token{$n1} = $ATTR[$n1]{"token"} .   "\@$ATTR_token{$n2}";

                  $IDF{$n1}++;

	       }
               elsif (defined $ATTR_lemma{$n1} && !defined $ATTR_lemma{$n2} ) {
                  $ATTR_lemma{$n1} .=   "\@$Lemma[$n2]" ;
                 # $ATTR_token{$n1} .=   "\@$Token[$n2]";


	       }
               else {

                     $ATTR_lemma{$n1} .=    "\@$ATTR_lemma{$n2}" ;
                  #   $ATTR_token{$n1} .=    "\@$ATTR_token{$n2}" ;

		
              }


            }

	   }
           $Lemma[$n1] = $ATTR_lemma{$n1} ;
          # $Token[$n1] = $ATTR_token{$n1} ;

    }



}


sub DepHead_lex {

 my ($y,$z, @x) = @_ ;
    my $n1=0;
    my $n2=0;
    my $found=0;
    my @z;


    (@z) = split (",", $z);

    for ($m=0;$m<=$#x;$m++) {
            $Dep = $x[$m];
            $m++;
            $Head = $x[$m];

           ($n1) = ($Head =~ /[\w]+_([0-9]+)/) ;
           ($n2) = ($Dep =~ /[\w]+_([0-9]+)/);

           if ($z eq "") {
              #$Head = "$Lemma[$n1]_$Tag[$n1]_${n1}" ;
              $Head = "$ATTR[$n1]{\"lemma\"}_$Tag[$n1]_${n1}" ;
              $Rel =  $y ;
              #$Dep = "$Lemma[$n2]_$Tag[$n2]_${n2}" ;
              $Dep =  "$ATTR[$n2]{\"lemma\"}_$Tag[$n2]_${n2}" ;

              $Ordenar{"($Rel;$Head;$Dep)"} = $n2 ;

              #print STDERR "OKKKK: #$Dep - $n2#\n";
               if (!defined $ATTR_lemma{$n1} && !defined $ATTR_lemma{$n2} ) {
                  $ATTR_lemma{$n1} = $ATTR[$n2]{"lemma"} . "\@$Lemma[$n1]" ;
           #       $ATTR_token{$n1} = $ATTR[$n2]{"token"} .  "\@$Token[$n1]";

                  $IDF{$n1}++;

	       }

               elsif (!defined $ATTR_lemma{$n1} && defined $ATTR_lemma{$n2} ) {
                  $ATTR_lemma{$n1} =   "$ATTR_lemma{$n2}\@"  . $ATTR[$n1]{"lemma"}  ;
            #      $ATTR_token{$n1} =   "$ATTR_token{$n2}\@" .  $ATTR[$n1]{"token"};

                  $IDF{$n1}++;

	       }
               elsif (defined $ATTR_lemma{$n1} && !defined $ATTR_lemma{$n2} ) {
                  $ATTR_lemma{$n1} .=   "$Lemma[$n2]\@" ;
             #     $ATTR_token{$n1} .=   "$Token[$n2]\@" ;

	       }
               else {
                     $ATTR_lemma{$n1} .=    "$ATTR_lemma{$n1}\@" ;
              #       $ATTR_token{$n1} .=    "$ATTR_token{$n1}\@" ;

              }

	
            }
            else {
             foreach $atr (@z) {
	
		if ( ($ATTR[$n1]{$atr} ne $ATTR[$n2]{$atr}) && 
                        ($ATTR[$n1]{$atr} !~  /^[NC0]$/ && $ATTR[$n2]{$atr}  !~  /^[NC0]$/) &&
                       ($ATTR[$n1]{$atr} ne "" && $ATTR[$n2]{$atr} ne  "")  ) {
		       $found++;

                }
             }
	
	     # print STDERR "Found: $found\n";
              if ($found > 0) {
               	$listTags =~ s/($Tag[$n1]_${n1}_<)/$1concord:0\|/;
                $listTags =~ s/($Tag[$n2]_${n2}_<)/$1concord:0\|/;
                $found=0;
             }
             else {

               $listTags =~ s/($Tag[$n1]_${n1}_<)/$1concord:1\|/;
               $listTags =~ s/($Tag[$n2]_${n2}_<)/$1concord:1\|/;
               $found=0;

               #$Head = "$Lemma[$n1]_$Tag[$n1]_${n1}" ;
               $Head = "$ATTR[$n1]{\"lemma\"}_$Tag[$n1]_${n1}" ;
               $Rel =  $y ;
               #$Dep = "$Lemma[$n2]_$Tag[$n2]_${n2}" ;
               $Dep =  "$ATTR[$n2]{\"lemma\"}_$Tag[$n2]_${n2}" ;

               $Ordenar{"($Rel;$Head;$Dep)"} = $n2 ;

               if (!defined $ATTR_lemma{$n1} && !defined $ATTR_lemma{$n2} ) {
                  $ATTR_lemma{$n1} = $ATTR[$n2]{"lemma"} . "\@$Lemma[$n1]" ;
               #   $ATTR_token{$n1} = $ATTR[$n2]{"token"} .  "\@$Token[$n1]";

                  $IDF{$n1}++;

	       }

                elsif (!defined $ATTR_lemma{$n1} && defined $ATTR_lemma{$n2} ) {
                  $ATTR_lemma{$n1} =   "$ATTR_lemma{$n2}\@"  . $ATTR[$n1]{"lemma"}  ;
                #  $ATTR_token{$n1} =   "$ATTR_token{$n2}\@" .  $ATTR[$n1]{"token"};

                  $IDF{$n1}++;

	       }
               elsif (defined $ATTR_lemma{$n1} && !defined $ATTR_lemma{$n2} ) {
                  $ATTR_lemma{$n1} .=   "$Lemma[$n2]\@" ;
                 # $ATTR_token{$n1} .=   "$Token[$n2]\@" ;

	       }
               else {
                     $ATTR_lemma{$n1} .=    "$ATTR_lemma{$n1}\@" ;
                  #   $ATTR_token{$n1} .=    "$ATTR_token{$n1}\@" ;

              }

            }
	   }
           $Lemma[$n1] = $ATTR_lemma{$n1} ;
          # $Token[$n1] = $ATTR_token{$n1} ;

    }

}



sub Head {

    my ($y, $z, @x) = @_ ;

   return 1

}




sub LEX {
    my $idf=0 ;
    foreach $idf (keys %IDF) {
       #print STDERR "idf = $idf";

       ##parche para \2... \pi...:
       $ATTR[$idf]{"lemma"}  =~ s/[\\]/\\\\/g ;
       $ATTR[$idf]{"token"}  =~ s/[\\]/\\\\/g ;
       
       $listTags =~ s/($Tag[$idf]_${idf}${l})lemma:$ATTR[$idf]{"lemma"}/${1}lemma:$ATTR_lemma{$idf}/;
      # $listTags =~ s/($Tag[$idf]_${idf}${l})token:$ATTR[$idf]{"token"}/${1}token:$ATTR_token{$idf}/;

       delete $IDF{$idf};
       delete $ATTR_lemma{$idf};
       #delete $ATTR_token{$idf};


    }


}


##Operaçoes Corr, Inherit, Add, 

sub Corr {

    my ($z, $y, @x) = @_ ;
    my $n1=0;
    my $n2=0;
    my @y="";
    my $atr="";
    my $value="";
    my $info="";
    my $attribute="";
    my $entry="";

    (@y) = split (",", $y);


    if ($z eq "Head") {
      for ($m=0;$m<=$#x;$m++) {
            $Head = $x[$m];
            ($n1) = ($Head =~ /[\w]+_([0-9]+)/) ;
		
            foreach $info (@y) {
	       ($atr, $value) = split (":", $info) ;
            
               ##token:=lemma / lemma:=token
               if ($value =~ /^=/) {
		   $value =~ s/^=//;
                  $ATTR[$n1]{$atr} = $ATTR[$n1]{$value} ;
		   if ($value eq "token") {
                     $Lemma[$n1] = $ATTR[$n1]{$value} ;
		   }
                   elsif ($value eq "lemma") {
                     $Token[$n1] = $ATTR[$n1]{$value} ;
		   }
               } 
              

               ##change the PoS tag:
               elsif ($atr =~ /^tag/) {
                  $ATTR[$n1]{$atr} = $value;
                  $entry = "${value}_${n1}_<";

                  if (activarTags($value,$n1)) {
                    
                   foreach $attribute (sort keys %{$ATTR[$n1]}) {
		        # print STDERR "--atribs: $attribute\n";      
		      if (defined $TagStr{$attribute}) {
                        $entry .= "$attribute:$ATTR[$n1]{$attribute}|" ;
                        #print STDERR "atribute defined : $attribute --$entry\n";
		      }
                      else {
			#$entry .= "$attribute:$TagStr{$attribute}|" ;
			  delete $ATTR[$n1]{$attribute} ;
                          #print STDERR "++entry : $entry\n";
		      } 
                     
                    }

                    foreach $attribute (sort keys %TagStr) {
		        # print STDERR "++atribs: $attribute\n";      
		      if (!defined $ATTR[$n1]{$attribute}) {
                        $entry .= "$attribute:$ATTR[$n1]{$attribute}|" ;
			$ATTR[$n1]{$attribute} = $TagStr{$attribute};
                        #print STDERR "++atribute defined : $attribute --$entry\n";
		      }
                      
                     
                    }
		  }

	          $entry .= ">";
                  #print STDERR  "--$entry\n" ;
                  $listTags =~ s/$Tag[$n1]_$n1$a/$entry/;
                  $Tag[$n1] = $value;
                  desactivarTags($value);
               }

	       elsif ($listTags =~ /$Tag[$n1]_${n1}${l}$atr/) {
                  $ATTR[$n1]{$atr} = $value;
                  if ($atr eq "lemma") {
                    $Lemma[$n1] = $ATTR[$n1]{"lemma"};
		  }
                  if ($atr eq "token") {
                    $Token[$n1] = $ATTR[$n1]{"token"};
		  }
                  $listTags =~ s/($Tag[$n1]_${n1}${l})${atr}:[^|]*\|/${1}$info\|/;
                
	       }
               else {
                 $listTags =~ s/($Tag[$n1]_${n1}_<)/${1}$info\|/;
                 $ATTR[$n1]{$atr} = $value;
                 if ($atr eq "lemma") {
                    $Lemma[$n1] = $ATTR[$n1]{"lemma"};
		 }
                 if ($atr eq "token") {
                    $Token[$n1] = $ATTR[$n1]{"token"};  

		 }
                
               }
	     }

      }
   }

 

}




sub Inherit {

    my ($z, $y, @x) = @_ ;
    my $n1=0;
    my $n2=0;
    my @y="";


    (@y) = split (",", $y);


    if ($z eq "DepHead") {
      for ($m=0;$m<=$#x;$m++) {
            $Dep = $x[$m];
            $m++;
            $Head = $x[$m];
            ($n1) = ($Head =~ /[\w]+_([0-9]+)/) ;
            ($n2) = ($Dep =~ /[\w]+_([0-9]+)/);  
		
             foreach $atr (@y) {
		 if (!$ATTR[$n1]{$atr}) {
                    $listTags =~ s/($Tag[$n1]_${n1}${l})/${1}$atr:$ATTR[$n2]{$atr}\|/;
                 }
                 else {
                    $listTags =~ s/($Tag[$n1]_${n1}${l})$atr:$ATTR[$n1]{$atr}/${1}$atr:$ATTR[$n2]{$atr}/;
		 }
                 $ATTR[$n1]{$atr} = $ATTR[$n2]{$atr};
	     }

      }
   }

   elsif ($z eq "HeadDep") {
      for ($m=0;$m<=$#x;$m++) {
            $Head = $x[$m];
            $m++;
            $Dep = $x[$m];
            ($n1) = ($Head =~ /[\w]+_([0-9]+)/) ;
            ($n2) = ($Dep =~ /[\w]+_([0-9]+)/);  
		
             foreach $atr (@y) {
                  if (!$ATTR[$n1]{$atr}) {
                    $listTags =~ s/($Tag[$n1]_${n1}${l})/${1}$atr:$ATTR[$n2]{$atr}\|/;
                 }
                 else {
                  $listTags =~ s/($Tag[$n1]_${n1}${l})$atr:$ATTR[$n1]{$atr}/${1}$atr:$ATTR[$n2]{$atr}/;
		 }
                 $ATTR[$n1]{$atr} = $ATTR[$n2]{$atr};

	     }

      }
   }

   elsif ($z eq "DepRelHead") {
      for ($m=0;$m<=$#x;$m++) {
            $Dep = $x[$m];
            $m +=2;
            $Head = $x[$m];
            ($n1) = ($Head =~ /[\w]+_([0-9]+)/) ;
            ($n2) = ($Dep =~ /[\w]+_([0-9]+)/);
		
             foreach $atr (@y) {
                 if (!$ATTR[$n1]{$atr}) {
                    $listTags =~ s/($Tag[$n1]_${n1}${l})/${1}$atr:$ATTR[$n2]{$atr}\|/;
                 }
                 else {
                  $listTags =~ s/($Tag[$n1]_${n1}${l})$atr:$ATTR[$n1]{$atr}/${1}$atr:$ATTR[$n2]{$atr}/;
		 }
                 $ATTR[$n1]{$atr} = $ATTR[$n2]{$atr};

	     }

      }
   }

    elsif ($z eq "HeadRelDep") {
      for ($m=0;$m<=$#x;$m++) {
            $Head = $x[$m];
            $m +=2;
            $Dep = $x[$m];
            ($n1) = ($Head =~ /[\w]+_([0-9]+)/) ;
            ($n2) = ($Dep =~ /[\w]+_([0-9]+)/);
		
             foreach $atr (@y) {
                 if (!$ATTR[$n1]{$atr}) {
                    $listTags =~ s/($Tag[$n1]_${n1}${l})/${1}$atr:$ATTR[$n2]{$atr}\|/;
                 }
                 else {
                  $listTags =~ s/($Tag[$n1]_${n1}${l})$atr:$ATTR[$n1]{$atr}/${1}$atr:$ATTR[$n2]{$atr}/;
		 }
                 $ATTR[$n1]{$atr} = $ATTR[$n2]{$atr};

	     }

      }
   }

   elsif ($z eq "RelDepHead") {
      for ($m=0;$m<=$#x;$m++) {
	    $m++;
            $Dep = $x[$m];
            $m++;
            $Head = $x[$m];
            ($n1) = ($Head =~ /[\w]+_([0-9]+)/) ;
            ($n2) = ($Dep =~ /[\w]+_([0-9]+)/);
		
             foreach $atr (@y) {
                if (!$ATTR[$n1]{$atr}) {
                    $listTags =~ s/($Tag[$n1]_${n1}${l})/${1}$atr:$ATTR[$n2]{$atr}\|/;
                 }
                 else {
                  $listTags =~ s/($Tag[$n1]_${n1}${l})$atr:$ATTR[$n1]{$atr}/${1}$atr:$ATTR[$n2]{$atr}/;
		 }
                 $ATTR[$n1]{$atr} = $ATTR[$n2]{$atr};
                 
	     }

      }
   }

   elsif ($z eq "RelHeadDep") {
      for ($m=0;$m<=$#x;$m++) {
	    $m++;
            $Head = $x[$m];
            $m++;
            $Dep = $x[$m];
            ($n1) = ($Head =~ /[\w]+_([0-9]+)/) ;
            ($n2) = ($Dep =~ /[\w]+_([0-9]+)/);
		
             foreach $atr (@y) {
                 if (!$ATTR[$n1]{$atr}) {
                    $listTags =~ s/($Tag[$n1]_${n1}${l})/${1}$atr:$ATTR[$n2]{$atr}\|/;
                 }
                 else {
                  $listTags =~ s/($Tag[$n1]_${n1}${l})$atr:$ATTR[$n1]{$atr}/${1}$atr:$ATTR[$n2]{$atr}/;
		 }
                 $ATTR[$n1]{$atr} = $ATTR[$n2]{$atr};

	     }

      }
   }


   elsif ($z eq "DepHeadRel") {
      for ($m=0;$m<=$#x;$m++) {
            $Dep = $x[$m];
            $m++;
            $Head = $x[$m];
            ($n1) = ($Head =~ /[\w]+_([0-9]+)/) ;
            ($n2) = ($Dep =~ /[\w]+_([0-9]+)/);
		
             foreach $atr (@y) {
                if (!$ATTR[$n1]{$atr}) {
                    $listTags =~ s/($Tag[$n1]_${n1}${l})/${1}$atr:$ATTR[$n2]{$atr}\|/;
                 }
                 else {
                  $listTags =~ s/($Tag[$n1]_${n1}${l})$atr:$ATTR[$n1]{$atr}/${1}$atr:$ATTR[$n2]{$atr}/;
		 }
                 $ATTR[$n1]{$atr} = $ATTR[$n2]{$atr};               
	     }

      }
   }

   elsif ($z eq "HeadDepRel") {
      for ($m=0;$m<=$#x;$m++) {
            $Head = $x[$m];
            $m++;
            $Dep = $x[$m];
            ($n1) = ($Head =~ /[\w]+_([0-9]+)/) ;
            ($n2) = ($Dep =~ /[\w]+_([0-9]+)/);
		
             foreach $atr (@y) {
                 if (!$ATTR[$n1]{$atr}) {
                    $listTags =~ s/($Tag[$n1]_${n1}${l})/${1}$atr:$ATTR[$n2]{$atr}\|/;
                 }
                 else {
                  $listTags =~ s/($Tag[$n1]_${n1}${l})$atr:$ATTR[$n1]{$atr}/${1}$atr:$ATTR[$n2]{$atr}/;
		 }
                 $ATTR[$n1]{$atr} = $ATTR[$n2]{$atr}; 
                 
	     }

      }
   }

   elsif ($z eq "DepHead_lex") {
      for ($m=0;$m<=$#x;$m++) {
            $Dep = $x[$m];
            $m++;
            $Head = $x[$m];
            ($n1) = ($Head =~ /[\w]+_([0-9]+)/) ;
            ($n2) = ($Dep =~ /[\w]+_([0-9]+)/);  
		
             foreach $atr (@y) {
                 if (!$ATTR[$n1]{$atr}) {
                    $listTags =~ s/($Tag[$n1]_${n1}${l})/${1}$atr:$ATTR[$n2]{$atr}\|/;
                 }
                 else {
                  $listTags =~ s/($Tag[$n1]_${n1}${l})$atr:$ATTR[$n1]{$atr}/${1}$atr:$ATTR[$n2]{$atr}/;
		 }
                 $ATTR[$n1]{$atr} = $ATTR[$n2]{$atr}; 
                 
	     }

      }
   }

   elsif ($z eq "HeadDep_lex") {
      for ($m=0;$m<=$#x;$m++) {
            $Head = $x[$m];
            $m++;
            $Dep = $x[$m];
            ($n1) = ($Head =~ /[\w]+_([0-9]+)/) ;
            ($n2) = ($Dep =~ /[\w]+_([0-9]+)/);  
		
             foreach $atr (@y) {
                 if (!$ATTR[$n1]{$atr}) {
                    $listTags =~ s/($Tag[$n1]_${n1}${l})/${1}$atr:$ATTR[$n2]{$atr}\|/;
                 }
                 else {
                  $listTags =~ s/($Tag[$n1]_${n1}${l})$atr:$ATTR[$n1]{$atr}/${1}$atr:$ATTR[$n2]{$atr}/;
		 }
                 $ATTR[$n1]{$atr} = $ATTR[$n2]{$atr}; 

	     }

      }
   }
}


sub Add {

    my ($z, $y, @x) = @_ ;
    my $n1=0;
    my $n2=0;
    my @y="";
    my $atr="";
    my $value="";
    my $info="";

    (@y) = split (",", $y);


 
  
  if ($z eq "Head") {
      for ($m=0;$m<=$#x;$m++) {
            $Head = $x[$m];
            ($n1) = ($Head =~ /[\w]+_([0-9]+)/) ;
            

            foreach $info (@y) {
               ($atr, $value) = split (":", $info) ;
                if ($listTags =~ /$Tag[$n1]_${n1}${l}$atr:/) {
                  $ATTR[$n1]{$atr} = $value;
                  if ($atr eq "lemma") {
                    $Lemma[$n1] = $ATTR[$n1]{"lemma"};
                  }
                  if ($atr eq "token") {
                    $Token[$n1] = $ATTR[$n1]{"token"};
                  }
                  $listTags =~ s/($Tag[$n1]_${n1}${l})${atr}:[^|]*\|/${1}$info\|/;
               }
               else {
                 $listTags =~ s/($Tag[$n1]_${n1}_<)/${1}$info\|/;
                 $ATTR[$n1]{$atr} = $value;
                 if ($atr eq "lemma") {
                    $Lemma[$n1] = $ATTR[$n1]{"lemma"};
                 }
                 if ($atr eq "token") {
                    $Token[$n1] = $ATTR[$n1]{"token"};
                 }
               }
             }



      }
   }

   elsif ($z eq "DepHead") {
      for ($m=0;$m<=$#x;$m++) {
            $Dep = $x[$m];
            $m++;
            $Head = $x[$m];
            ($n1) = ($Head =~ /[\w]+_([0-9]+)/) ;
            ($n2) = ($Dep =~ /[\w]+_([0-9]+)/);  
		
            foreach $info (@y) {
	       ($atr, $value) = split (":", $info) ;

               ##change the PoS tag:
               if ($atr =~ /^tag/) {
                  $ATTR[$n1]{$atr} = $value;
                  $listTags =~ s/$Tag[$n1]/$value/;
                   $Tag[$n1] = $value;
               }
	       elsif ($listTags =~ /$Tag[$n1]_${n1}${l}$atr:/) {
                  $ATTR[$n1]{$atr} = $value;
                  if ($atr eq "lemma") {
                    $Lemma[$n1] = $ATTR[$n1]{"lemma"};
		  }
                  if ($atr eq "token") {
                    $Token[$n1] = $ATTR[$n1]{"token"};
		  }
                  $listTags =~ s/($Tag[$n1]_${n1}${l})${atr}:[^|]*\|/${1}$info\|/;
                 # print STDERR "$atr - $value : #$l# - #$r#";
	       }
               else {
                 $listTags =~ s/($Tag[$n1]_${n1}_<)/${1}$info\|/;
                 $ATTR[$n1]{$atr} = $value;
                 if ($atr eq "lemma") {
                    $Lemma[$n1] = $ATTR[$n1]{"lemma"};
		 }
                 if ($atr eq "token") {
                    $Token[$n1] = $ATTR[$n1]{"token"};
		 }
                  #print STDERR "$atr - $value ::: #$l# - #$r#";
               }
	     }

      }
   }

   elsif ($z eq "HeadDep") {
      for ($m=0;$m<=$#x;$m++) {
            $Head = $x[$m];
            $m++;
            $Dep = $x[$m];
            ($n1) = ($Head =~ /[\w]+_([0-9]+)/) ;
            ($n2) = ($Dep =~ /[\w]+_([0-9]+)/);  
	
            foreach $info (@y) {
	       ($atr, $value) = split (":", $info) ;
               
                ##change the PoS tag:
                if ($atr =~ /^tag/) {
                  $ATTR[$n1]{$atr} = $value;
                  $listTags =~ s/$Tag[$n1]/$value/;
                  $Tag[$n1] = $value;
               }
               elsif ($listTags =~ /$Tag[$n1]_${n1}${l}$atr:/) {
                  $ATTR[$n1]{$atr} = $value;
                  if ($atr eq "lemma") {
                    $Lemma[$n1] = $ATTR[$n1]{"lemma"};
		  }
                  if ($atr eq "token") {
                    $Token[$n1] = $ATTR[$n1]{"token"};
		  }
                  $listTags =~ s/($Tag[$n1]_${n1}${l})${atr}:[^|]*\|/${1}$info\|/;
	       }
               else {
                 $listTags =~ s/($Tag[$n1]_${n1}_<)/${1}$info\|/;
                 $ATTR[$n1]{$atr} = $value; 
                 if ($atr eq "lemma") {
                    $Lemma[$n1] = $ATTR[$n1]{"lemma"};
		 }
                 if ($atr eq "token") {
                    $Token[$n1] = $ATTR[$n1]{"token"};
		 }
               }
	     }

	     

      }
   }

   elsif ($z eq "DepRelHead") {
      for ($m=0;$m<=$#x;$m++) {
            $Dep = $x[$m];
            $m+=2;
            $Head = $x[$m];
            ($n1) = ($Head =~ /[\w]+_([0-9]+)/) ;
            ($n2) = ($Dep =~ /[\w]+_([0-9]+)/);
		
            foreach $info (@y) {
	       ($atr, $value) = split (":", $info) ;
	       
                ##change the PoS tag:
                if ($atr =~ /^tag/) {
                  $ATTR[$n1]{$atr} = $value;
                  $listTags =~ s/$Tag[$n1]/$value/;
                   $Tag[$n1] = $value;
               }
               elsif ($listTags =~ /($Tag[$n1]_${n1}${l})$atr:/) {
                  $ATTR[$n1]{$atr} = $value;
                  if ($atr eq "lemma") {
                    $Lemma[$n1] = $ATTR[$n1]{"lemma"};
		  }
                  if ($atr eq "token") {
                    $Token[$n1] = $ATTR[$n1]{"token"};
		  }
                  $listTags =~ s/($Tag[$n1]_${n1}${l})${atr}:[^|]*\|/${1}$info\|/;
	       }
               else {
                 $listTags =~ s/($Tag[$n1]_${n1}_<)/${1}$info\|/;
                 $ATTR[$n1]{$atr} = $value;
                 if ($atr eq "lemma") {
                    $Lemma[$n1] = $ATTR[$n1]{"lemma"};
		 }
                 if ($atr eq "token") {
                    $Token[$n1] = $ATTR[$n1]{"token"};
		 }
               }
	     }
      }
   }

    
    elsif ($z eq "HeadRelDep") {
      for ($m=0;$m<=$#x;$m++) {
            $Head = $x[$m];
            $m +=2;
            $Dep = $x[$m];
            ($n1) = ($Head =~ /[\w]+_([0-9]+)/) ;
            ($n2) = ($Dep =~ /[\w]+_([0-9]+)/);
	
            foreach $info (@y) {
	       ($atr, $value) = split (":", $info) ;
	       
                ##change the PoS tag:
               if ($atr =~ /^tag/) {
                  $ATTR[$n1]{$atr} = $value;
                  $listTags =~ s/$Tag[$n1]/$value/;
                  $Tag[$n1] = $value;
               }
               elsif ($listTags =~ /($Tag[$n1]_${n1}${l})$atr:/) {
                  $ATTR[$n1]{$atr} = $value;
                  if ($atr eq "lemma") {
                    $Lemma[$n1] = $ATTR[$n1]{"lemma"};
		  }
                  if ($atr eq "token") {
                    $Token[$n1] = $ATTR[$n1]{"token"};
		  }
                  $listTags =~ s/($Tag[$n1]_${n1}${l})${atr}:[^|]*\|/${1}$info\|/;
	       }
               else {
                 $listTags =~ s/($Tag[$n1]_${n1}_<)/${1}$info\|/;
                 $ATTR[$n1]{$atr} = $value;
                 if ($atr eq "lemma") {
                    $Lemma[$n1] = $ATTR[$n1]{"lemma"};
		  }
                  if ($atr eq "token") {
                    $Token[$n1] = $ATTR[$n1]{"token"};
		  }
               }
	     }

      }
   }


   elsif ($z eq "RelDepHead") {
      for ($m=0;$m<=$#x;$m++) {
            $m++;
            $Dep = $x[$m];
            $m++;
            $Head = $x[$m];
            ($n1) = ($Head =~ /[\w]+_([0-9]+)/) ;
            ($n2) = ($Dep =~ /[\w]+_([0-9]+)/);
		
            foreach $info (@y) {
	       ($atr, $value) = split (":", $info) ;
	       
                ##change the PoS tag:
               if ($atr =~ /^tag/) {
                  $ATTR[$n1]{$atr} = $value;
                  $listTags =~ s/$Tag[$n1]/$value/;
                  $Tag[$n1] = $value;
               }
               elsif ($listTags =~ /($Tag[$n1]_${n1}${l})$atr:/) {
                  $ATTR[$n1]{$atr} = $value;
                  if ($atr eq "lemma") {
                    $Lemma[$n1] = $ATTR[$n1]{"lemma"};
		  }
                  if ($atr eq "token") {
                    $Token[$n1] = $ATTR[$n1]{"token"};
		  }
                  $listTags =~ s/($Tag[$n1]_${n1}${l})${atr}:[^|]*\|/${1}$info\|/;
	       }
               else {
                 $listTags =~ s/($Tag[$n1]_${n1}_<)/${1}$info\|/;
                 $ATTR[$n1]{$atr} = $value;
                 if ($atr eq "lemma") {
                    $Lemma[$n1] = $ATTR[$n1]{"lemma"};
		 }
                 if ($atr eq "token") {
                    $Token[$n1] = $ATTR[$n1]{"token"};
		 }
               }
	     }
      }
   }


   elsif ($z eq "RelHeadDep") {
      for ($m=0;$m<=$#x;$m++) {
            $m++;
            $Head = $x[$m];
            $m++;
            $Dep = $x[$m];
            ($n1) = ($Head =~ /[\w]+_([0-9]+)/) ;
            ($n2) = ($Dep =~ /[\w]+_([0-9]+)/);
		
            foreach $info (@y) {
	       ($atr, $value) = split (":", $info) ;
	       
                ##change the PoS tag:
                if ($atr =~ /^tag/) {
                  $ATTR[$n1]{$atr} = $value;
                  $listTags =~ s/$Tag[$n1]/$value/;
                  $Tag[$n1] = $value;
               }
               elsif ($listTags =~ /($Tag[$n1]_${n1}${l})$atr:/) {
                  $ATTR[$n1]{$atr} = $value;
                  if ($atr eq "lemma") {
                    $Lemma[$n1] = $ATTR[$n1]{"lemma"};
		  }
                  if ($atr eq "token") {
                    $Token[$n1] = $ATTR[$n1]{"token"};
		  }
                  $listTags =~ s/($Tag[$n1]_${n1}${l})${atr}:[^|]*\|/${1}$info\|/;
	       }
               else {
                 $listTags =~ s/($Tag[$n1]_${n1}_<)/${1}$info\|/;
                 $ATTR[$n1]{$atr} = $value;
                 if ($atr eq "lemma") {
                    $Lemma[$n1] = $ATTR[$n1]{"lemma"};
		 }
                 if ($atr eq "token") {
                    $Token[$n1] = $ATTR[$n1]{"token"};
		 }
               }
	     }
      }
   }


   elsif ($z eq "DepHeadRel") {
      for ($m=0;$m<=$#x;$m++) {
            $Dep = $x[$m];
            $m++;
            $Head = $x[$m];
            ($n1) = ($Head =~ /[\w]+_([0-9]+)/) ;
            ($n2) = ($Dep =~ /[\w]+_([0-9]+)/);
		
            foreach $info (@y) {
	       ($atr, $value) = split (":", $info) ;
	       
                ##change the PoS tag:
               if ($atr =~ /^tag/) {
                  $ATTR[$n1]{$atr} = $value;
                  $listTags =~ s/$Tag[$n1]/$value/;
                  $Tag[$n1] = $value;
               }
	       elsif ($listTags  =~ /($Tag[$n1]_${n1}${l})$atr:/) {
                  $ATTR[$n1]{$atr} = $value;
                  if ($atr eq "lemma") {
                    $Lemma[$n1] = $ATTR[$n1]{"lemma"};
		  }
                  if ($atr eq "token") {
                    $Token[$n1] = $ATTR[$n1]{"token"};
		  }
                  $listTags =~ s/($Tag[$n1]_${n1}${l})${atr}:[^|]*\|/${1}$info\|/;
	       }
               else {
                 $listTags =~ s/($Tag[$n1]_${n1}_<)/${1}$info\|/;
                 $ATTR[$n1]{$atr} = $value;
                 if ($atr eq "lemma") {
                    $Lemma[$n1] = $ATTR[$n1]{"lemma"};
		 }
                 if ($atr eq "token") {
                    $Token[$n1] = $ATTR[$n1]{"token"};
		 }
               }
	     }
      }
   }


   elsif ($z eq "HeadDepRel") {
      for ($m=0;$m<=$#x;$m++) {
            $Head = $x[$m];
            $m++;
            $Dep = $x[$m];
            ($n1) = ($Head =~ /[\w]+_([0-9]+)/) ;
            ($n2) = ($Dep =~ /[\w]+_([0-9]+)/);
		
            foreach $info (@y) {
	       ($atr, $value) = split (":", $info) ;
	       
                 ##change the PoS tag:
               if ($atr =~ /^tag/) {
                  $ATTR[$n1]{$atr} = $value;
                  $listTags =~ s/$Tag[$n1]/$value/;
                  $Tag[$n1] = $value;
               }
               elsif ($listTags =~ /($Tag[$n1]_${n1}${l})$atr:/) {
                  $ATTR[$n1]{$atr} = $value;
                  if ($atr eq "lemma") {
                    $Lemma[$n1] = $ATTR[$n1]{"lemma"};
		  }
                  if ($atr eq "token") {
                    $Token[$n1] = $ATTR[$n1]{"token"};
		  }
                  $listTags =~ s/($Tag[$n1]_${n1}${l})${atr}:[^|]*\|/${1}$info\|/;
	       }
               else {
                 $listTags =~ s/($Tag[$n1]_${n1}_<)/${1}$info\|/;
                 $ATTR[$n1]{$atr} = $value;
                 if ($atr eq "lemma") {
                    $Lemma[$n1] = $ATTR[$n1]{"lemma"};
		 }
                 if ($atr eq "token") {
                    $Token[$n1] = $ATTR[$n1]{"token"};
		 }
               }
	     }
      }
   }



   elsif ($z eq "DepHead_lex") {
      for ($m=0;$m<=$#x;$m++) {
            $Dep = $x[$m];
            $m++;
            $Head = $x[$m];
            ($n1) = ($Head =~ /[\w]+_([0-9]+)/) ;
            ($n2) = ($Dep =~ /[\w]+_([0-9]+)/);  
		
            foreach $info (@y) {
	       ($atr, $value) = split (":", $info) ;
              
                ##change the PoS tag:
               if ($atr =~ /^tag/) {
                  $ATTR[$n1]{$atr} = $value;
                  $listTags =~ s/$Tag[$n1]/$value/;
                  $Tag[$n1] = $value;
               }
	       elsif ($listTags =~ /$Tag[$n1]_${n1}${l}$atr:/) {
                  $ATTR[$n1]{$atr} = $value;
                  if ($atr eq "lemma") {
                    $Lemma[$n1] = $ATTR[$n1]{"lemma"};
		  }
                  if ($atr eq "token") {
                    $Token[$n1] = $ATTR[$n1]{"token"};
		  }
                  $listTags =~ s/($Tag[$n1]_${n1}${l})${atr}:[^|]*\|/${1}$info\|/;
	       }
               else {
                 $listTags =~ s/($Tag[$n1]_${n1}_<)/${1}$info\|/;
                 $ATTR[$n1]{$atr} = $value;
                   if ($atr eq "lemma") {
                    $Lemma[$n1] = $ATTR[$n1]{"lemma"};
		  }
                  if ($atr eq "token") {
                    $Token[$n1] = $ATTR[$n1]{"token"};
		  }
               }
	     }

      }
   } 

   if ($z eq "HeadDep_lex") {
      for ($m=0;$m<=$#x;$m++) {
            $Head = $x[$m];
            $m++;
            $Dep = $x[$m];
            ($n1) = ($Head =~ /[\w]+_([0-9]+)/) ;
            ($n2) = ($Dep =~ /[\w]+_([0-9]+)/);  
		
            foreach $info (@y) {
	       ($atr, $value) = split (":", $info) ;
	       
                ##change the PoS tag:
               if ($atr =~ /^tag/) {
                  $ATTR[$n1]{$atr} = $value;
                  $listTags =~ s/$Tag[$n1]/$value/;
                  $Tag[$n1] = $value;
               }
               elsif ($listTags =~ /$Tag[$n1]_${n1}${l}$atr:/) {
                  $ATTR[$n1]{$atr} = $value;
                  if ($atr eq "lemma") {
                    $Lemma[$n1] = $ATTR[$n1]{"lemma"};
		  }
                  if ($atr eq "token") {
                    $Token[$n1] = $ATTR[$n1]{"token"};
		  }
                  $listTags =~ s/($Tag[$n1]_${n1}${l})${atr}:[^|]*\|/${1}${info}\|/;
	       }
               else {

                 $listTags =~ s/($Tag[$n1]_${n1}_<)/${1}$info\|/;
                 $ATTR[$n1]{$atr} = $value;
                  if ($atr eq "lemma") {
                    $Lemma[$n1] = $ATTR[$n1]{"lemma"};
		  }
                  if ($atr eq "token") {
                    $Token[$n1] = $ATTR[$n1]{"token"};
		  }
                 #print STDERR "$atr - $value ::: #$l# - #$r#";
               }
	     }
        
      }
   } 


}



sub negL {

    my ($x) = @_ ;
    my $expr="";
    my $ref="";
    my $CAT="";
  
    ($CAT, $ref) = split ("_", $x);  
    $expr = "(?<!${CAT})\\_$ref";
  

   return $expr
}

sub negR {

    my ($x) = @_ ;
    my $expr="";
    my $ref="";
    my $CAT="";
 
    ($CAT, $ref) = split ("_", $x); 
    $expr = "?!${CAT}\\_$ref";
 
   return $expr
}



sub activarTags {

   my ($x, $pos) = @_ ; 

   ##shared attributes:
   # $TagStr{"tag"} = 0;
    $TagStr{"lemma"} = 0;
    $TagStr{"token"} = 0;
  
   if ($x =~ /^PRO/) {
  
      $TagStr{"type"} = 0;
      $TagStr{"person"} = 0;
      $TagStr{"gender"} = 0;
      $TagStr{"number"} = 0;
      $TagStr{"case"} = 0;
      $TagStr{"possessor"} = 0;
      $TagStr{"politeness"} = 0;
      $TagStr{"pos"} = $pos;
      return 1 ;
   }

     ##conjunctions:
    elsif ($x =~ /^C/) {
      
       $TagStr{"type"} =  0;
       $TagStr{"pos"} = $pos;
        return 1 ;
    }

    ##interjections:
    elsif ($x =~ /^I/) {
   
       $TagStr{"type"} = 0;
       $TagStr{"pos"} = $pos;
       return 1 ;
    }

   ##numbers
   elsif ($x =~  /^CARD/) {
       
       $TagStr{"number"} = "P";
       $TagStr{"person"} = 0;
       $TagStr{"gender"} = 0;
       $TagStr{"pos"} = $pos;
       return 1 ;
   }


    elsif ($x =~ /^ADJ/) {
       
       $TagStr{"type"} = 0;
       $TagStr{"degree"} = 0;
       $TagStr{"gender"} = 0;
       $TagStr{"number"} = 0;
       $TagStr{"function"} = 0;
       $TagStr{"pos"} = $pos;
       return 1 ;
   }


   elsif ($x =~ /^ADV/) {
       
       $TagStr{"type"} = 0;
       $TagStr{"pos"} = $pos;
       return 1 ;
   }


   elsif ($x =~ /^PRP/) {
       
       $TagStr{"type"} = 0;
       $TagStr{"pos"} = $pos;
       return 1 ;
   }


   elsif ($x =~ /^NOUN/) {
      
       $TagStr{"type"} = 0 ;
       $TagStr{"gender"} = 0;
       $TagStr{"number"} = 0;
       $TagStr{"person"} = 0;
       $TagStr{"pos"} = $pos;
       return 1 ;
   }

   elsif ($x =~ /^DT/) {
 
       $TagStr{"type"} = 0;
       $TagStr{"person"} = 0;
       $TagStr{"gender"} = 0;
       $TagStr{"number"} = 0;
       $TagStr{"possessor"} = 0;
       $TagStr{"pos"} = $pos;
       return 1 ;
   }

  ##mudar tags nos verbos:
   elsif ($x =~ /^VERB/) {


       $TagStr{"type"} = 0;
       $TagStr{"mode"} = 0;
       $TagStr{"tense"} = 0;
       $TagStr{"person"} = 0;
       $TagStr{"number"} = 0;
       $TagStr{"gender"} = 0;
       $TagStr{"pos"} = $pos;
       return 1 ;  
   }
   else {
     return 0
   }

}


sub desactivarTags {

   my ($x) = @_ ; 

      delete $TagStr{"type"} ;
      delete $TagStr{"person"};
      delete $TagStr{"gender"} ;
      delete $TagStr{"number"} ;
      delete $TagStr{"case"} ;
      delete $TagStr{"possessor"} ;
      delete $TagStr{"politeness"} ;
      delete $TagStr{"mode"} ;
      delete $TagStr{"tense"} ;
      delete $TagStr{"function"} ;
      delete $TagStr{"degree"} ;
      delete $TagStr{"pos"} ;     
 
      delete $TagStr{"lemma"} ;
      delete $TagStr{"token"} ;
     # delete $TagStr{"tag"} ;
     return 1
}


sub ConvertChar {

    my ($x, $y) = @_ ;


    $info =~ s/lemma:$x/lemma:\*$y\*/g; 
    $info =~ s/token:$x/token:\*$y\*/g;

}

sub ReConvertChar {

    my ($x, $y, $z) = @_ ;

     $Attributes[$z] =~ s/lemma:\*$y\*/lemma:$x/g;
     $Attributes[$z] =~ s/token:\*$y\*/token:$x/g;
     $ATTR[$z]{"lemma"} =~ s/\*$y\*/$x/g;
     $ATTR[$z]{"token"} =~ s/\*$y\*/$x/g;
     $Token[$z] =~ s/\*$y\*/$x/g;
     $Lemma[$z] =~ s/\*$y\*/$x/g;

}
