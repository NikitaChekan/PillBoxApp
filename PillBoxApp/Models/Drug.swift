//
//  Drug.swift
//  PillBoxApp
//
//  Created by jopootrivatel on 30.10.2022.
//

import Foundation

struct Drug {
    let drugName: String
    let description: String
    let dosage: String
    
    var title: String {
        "\(drugName) - \(dosage)"
    }
    
    static func getDrugList() -> [Drug] {
        [
           Drug(
            drugName: "Xanax",
            description: "Ксанакс - это рецептурный препарат, используемый для лечения симптомов тревоги, панического расстройства и тревоги, связанной с депрессией. Ксанакс может использоваться самостоятельно или вместе с другими лекарствами. Ксанакс относится к классу препаратов, называемых противотревожными средствами, анксиолитиками, бензодиазепинами.",
            dosage: "25 миллиграмм"),
           Drug(drugName: "Zoloft", description: "Сертралин — антидепрессант, мощный специфический ингибитор обратного захвата серотонина (5-НТ) в нейронах. Он оказывает очень слабое влияние на обратный захват норадреналина и допамина. В терапевтических дозах сертралин блокирует захват серотонина в тромбоцитах человека. Он не оказывает стимулирующее, седативное или антихолинергическое действие. Благодаря селективному угнетению захвата 5-НТ, сертралин не усиливает адренергическую активность. Сертралин не обладает сродством к мускариновым (холинергическим), серотонинергическим, допаминергическим, адренергическим, гистаминергическим, ГАМК- или бензодиазепиновым рецепторам.", dosage: "50 миллиграмм"),
           Drug(drugName: "Fluoxetine", description: "Антидепрессант группы селективных ингибиторов обратного захвата серотонина. Обладает тимоаналептическим и стимулирующим действием. Избирательно блокирует обратный нейрональный захват серотонина (5НТ) в синапсах нейронов центральной нервной системы. Ингибирование обратного захвата серотонина приводит к повышению концентрации этого нейромедиатора в синаптической щели, усиливает и пролонгирует его действие на постсинаптические рецепторные участки. Повышая серотонинергическую передачу, по механизму отрицательной мембранной связи флуоксетин ингибирует обмен нейромедиатора. При длительном применении флуоксетин угнетает активность 5-НТ1-рецепторов. Слабо влияет на обратный захват норадреналина и дофамина. Не оказывает прямого действия на серотониновые, м-холинергические, Н1-гистаминовые и альфа-адренорецепторы. В отличие от большинства антидепрессантов не вызывает снижения активности постсинаптических бета-адренорецепторов.", dosage: "60 миллиграмм"),
           Drug(drugName: "Haloperidolum", description: "Нейролептик, производное бутирофенона. Аморфный или микрокристаллический порошок от белого до светло-желтого цвета. Практически нерастворим в воде, ограниченно растворяется в спирте, метиленхлориде, эфире. Насыщенный раствор имеет реакцию от нейтральной до слабокислой. Блокирует постсинаптические дофаминергические рецепторы, расположенные в мезолимбической системе (антипсихотическое действие), гипоталамусе (гипотермический эффект и галакторея), триггерной зоне рвотного центра, экстрапирамидной системе; угнетает центральные альфа-адренергические рецепторы. Тормозит высвобождение медиаторов, снижая проницаемость пресинаптических мембран, нарушает обратный нейрональный захват и депонирование.", dosage: "50 миллиграмм"),
           Drug(drugName: "Zalasta", description: "Антипсихотическое средство (нейролептик). Обладает сродством к серотониновым 5-НТ2A/C-, 5-НТ3-, 5-НТ6-рецепторам; допаминовым D1-, D2-, D3-, D4-, D5-рецепторам; M1-5-холинорецепторам; α1-адренорецепторам и гистаминовым H1-рецепторам. Проявляет антагонизм в отношении серотониновых 5-НТ-, допаминовых и холинорецепторов.", dosage: "5 миллиграмм"),
           Drug(drugName: "Cetrine", description: "Конкурентный антагонист гистамина, метаболит гидроксизина, блокирует Н1-гистаминовые рецепторы. Предупреждает развитие и облегчает течение аллергических реакций, обладает противозудным и противоэкссудативным действием. Влияет на раннюю стадию аллергических реакций, ограничивает высвобождение медиаторов воспаления на поздней стадии аллергической реакции, уменьшает миграцию эозинофилов, нейтрофилов и базофилов. Уменьшает проницаемость капилляров, предупреждает развитие отека тканей, снимает спазм гладкой мускулатуры. Устраняет кожную реакцию на введение гистамина, специфических аллергенов, а также на охлаждение (при холодовой крапивнице). Снижает гистаминоиндуцированную бронхоконстрикцию при бронхиальной астме легкого течения.", dosage: "15 миллиграмм"),
           Drug(drugName: "Risperidone", description: "Антипсихотическое средство (нейролептик), производное бензизоксазола. Обладает высоким сродством к серотониновым 5-HT2- и допаминовым D2-рецепторам. Связывается с α1-адренорецепторами и, при несколько меньшей аффинности, с гистаминовыми H1-рецепторами и α2-адренорецепторами. Не обладает сродством к холинорецепторам. Хотя рисперидон является мощным D2-антагонистом (что, как считается, является основным механизмом улучшения продуктивной симптоматики шизофрении), он вызывает менее выраженное подавление моторной активности и в меньшей степени индуцирует каталепсию, чем классические нейролептики. Благодаря сбалансированному антагонизму к серотониновым и допаминовым рецепторам в ЦНС, уменьшается вероятность развития экстрапирамидных побочных эффектов.", dosage: "25 миллиграмм"),
           Drug(drugName: "Clonazepam", description: "Противоэпилептическое средство из группы производных бензодиазепина. Оказывает выраженное противосудорожное, а также центральное миорелаксирующее, анксиолитическое, седативное и снотворное действие. Усиливает ингибирующее действие GABA на передачу нервных импульсов. Стимулирует бензодиазепиновые рецепторы, распложенные в аллостерическом центре постсинаптических GABA-рецепторов восходящей активирующей ретикулярной формации ствола мозга и вставочных нейронов боковых рогов спинного мозга. Уменьшает возбудимость подкорковых структур головного мозга (лимбическая система, таламус, гипоталамус), тормозит постсинаптические спинальные рефлексы. Анксиолитическое действие обусловлено влиянием на миндалевидный комплекс лимбической системы и проявляется в уменьшении эмоционального напряжения, ослабления тревоги, страха, беспокойства.", dosage: "50 миллиграмм"),
           Drug(drugName: "Phenybut", description: "Ноотропное средство, представляет собой гамма-амино-бета-фенилмасляной кислоты гидрохлорид. Облегчает GABA-опосредованную передачу нервных импульсов в ЦНС (прямое воздействие на GABA-рецепторы), оказывает также транквилизирующее, психостимулирующее, антиагрегантное и антиоксидантное действие. Улучшает функциональное состояние мозга за счет нормализации метаболизма тканей и влияния на мозговое кровообращение (увеличивает объемную и линейную скорость мозгового кровотока, уменьшает тонус сосудов мозга, улучшает микроциркуляцию, оказывает антиагрегантное действие). Способствует снижению или исчезновению чувства тревоги, напряженности, беспокойства и страха, нормализует сон, оказывает некоторое противосудорожное действие. Не влияет на холино- и адренорецепторы. Удлиняет латентный период и укорачивает продолжительность и выраженность нистагма.", dosage: "15 миллиграмм"),
           Drug(drugName: "Quetiapine", description: "Кветиапин является атипичным антипсихотическим препаратом, который проявляет более высокое сродство к серотониновым (гидрокситриптаминовым) рецепторам (5НТ2), чем к дофаминовым рецепторам D1 и D2 головного мозга. Кветиапин также обладает более выраженным сродством к гистаминовым и альфа1-адренорецепторам и меньшим по отношению к альфа2-адренорецепторам. Не обнаружено заметного сродства кветиапина к мускариновым и бензодиазепиновым рецепторам. В стандартных тестах кветиапин проявляет антипсихотическую активность.", dosage: "25 миллиграмм")
           
           
           
        ]
    }
}
