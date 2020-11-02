перем Дерево;

&НаСервере
Процедура СоздатьXMLНаСервере()
	
	////https://infostart.ru/1c/articles/716581/
	СтруктураДанных = Новый Структура; // СтруктураДанных.Вставить("","");
	
	СтруктураРеквизиты =  Новый Структура;
	СтруктураРеквизиты.Вставить("Дата","2020-04-10");
	СтруктураРеквизиты.Вставить("Номер","20200410-00007");
	СтруктураДанных.Вставить("ПравоНаСтаховыеВыплаты",0);
	
	СтруктураНПФ = Новый Структура;
	СтруктураНПФ.Вставить("НаименованиеФормализованное","СБЕРБАНКА НПФ");
	СтруктураНПФ.Вставить("ИНН","7725352740");
	СтруктураДанных.Вставить("НПФ",СтруктураНПФ);
	
	СтруктураЗаписи = Новый Структура;
	СтруктураЗаписи.Вставить("НомерПП","1");
	СтруктураЗаписи.Вставить("ВходящийНомерПП","1");
	СтруктураЗаписи.Вставить("ДатаЗапроса","2019-01-01");
	
	
	СтруктураЗЛ  = Новый Структура;
	СтруктураЗЛ.Вставить("Фамилия","СЕМЕНКОВА");
	СтруктураЗЛ.Вставить("Имя","ТАТЬЯНА");
	СтруктураЗЛ.Вставить("Отчество","НИКОЛАЕВНА");
	СтруктураЗЛ.Вставить("СНИЛС","032-405-404 98");
				
	СтруктураДоговор = Новый Структура;
	СтруктураДоговор.Вставить("Дата","2014-04-15");
	СтруктураДоговор.Вставить("Номер","032-405-404 98");
	СтруктураЗаписи.Вставить("Договор",СтруктураДоговор);

	СтруктураСуммы = Новый Структура;
	
	СтруктураСВ = Новый Структура;
	СтруктураСВ.Вставить("Сумма","10000");
	СтруктураСВ.Вставить("ИД","15000");
	СтруктураСВ.Вставить("ЧФР","2500");
	СтруктураСуммы.Вставить("СВ",СтруктураСВ);
	
	СтруктураДСВ = Новый Структура;
	СтруктураДСВ.Вставить("Сумма","0");
	СтруктураДСВ.Вставить("ИД","0");
	СтруктураДСВ.Вставить("ЧФР","0");
	СтруктураСуммы.Вставить("ДСВ",СтруктураДСВ);
	
	СтруктураСОФН = Новый Структура;
	СтруктураСОФН.Вставить("Сумма","0");
	СтруктураСОФН.Вставить("ИД","0");
	СтруктураСОФН.Вставить("ЧФР","0");
	СтруктураСуммы.Вставить("СОФН",СтруктураСОФН);

	СтруктураМСК = Новый Структура;
	СтруктураМСК.Вставить("Сумма","0");
	СтруктураМСК.Вставить("ИД","0");
	СтруктураМСК.Вставить("ЧФР","0");
	СтруктураСуммы.Вставить("МСК",СтруктураМСК);
	
	СтруктураСППС = Новый Структура;
	СтруктураСППС.Вставить("Основание","32 1 1");
	СтруктураСППС.Вставить("Дата","18.09.2019");
	СтруктураСППС.Вставить("Сумма","15636.36");
	
	
	СтруктураДанных.Вставить("ЕстьПравоНаСтраховуюПенсиюПоСтарости","0");
	СтруктураДанных.Вставить("КоличествоЗЛ","1");
	
	СтруктураДанных.Вставить("GUID","0790AEEF-7E12-429F-91DA-1E9F6A9520Cc");
	СтруктураДанных.Вставить("ВОтветНа","0790AEEF-7E12-429F-91DA-1E9F6A9520CD");
	СтруктураДанных.Вставить("ДатаВремя","2020-04-10T19:43:59+03:00");
	СтруктураДанных.Вставить("Наименование","ПФР");
	СтруктураДанных.Вставить("НомерДокументаОрганизации","10007");
	СтруктураДанных.Вставить("ЗаГод","2020");
	
	ПакетПФР = ФабрикаXDTO.Пакеты.Получить("http://пф.рф/НСПН/2020-03-23");
	СвойствоЭДПФР = ПакетПФР.КорневыеСвойства.Получить("ЭДПФР");
	ЭДПФР = ФабрикаXDTO.Создать(СвойствоЭДПФР.Тип);
	ОбойтиСвойство(ЭДПФР);
	
//	НСПН = ФабрикаXDTO.Создать(ФабрикаXDTO.Тип("http://пф.рф/ВсВО/НПФ/типыИсходящие/2018-09-12","ТипДокументНПФ" ));
	ЗначениеВРеквизитФормы(Дерево,"Реквизит1");
	// ФайлыXSD = Новый Массив();
	//ФайлыXSD.Добавить("C:\Users\lomanov\YandexDisk\1С\BIV\СМЭВ\АФ.2.51д\Схемы\ВсВО\НПФ\Исходящие\НСПН_2020-03-23.xsd");
	//Фабрика = СоздатьФабрикуXDTO(ФайлыXSD);
//	СвойствоСписокСведений = ПакетПФР.КорневыеСвойства.Получить("ЭДПФР").Тип.Свойства.Получить("НСПН").Тип.Свойства.Получить("СписокСведений");
//	СписокСведений = ФабрикаXDTO.Создать(СвойствоСписокСведений.Тип);
	
	//ПакетПФР.КорневыеСвойства[0].Тип.Свойства[0].Тип.Свойства[4]
	//НСПН.ПолучитьСписок("СписокСведений");
	//СвойствоСписокСведений = ПакетПФР.Получить("СписокСведений");
	//СписокСведений = ФабрикаXDTO.Создать(СвойствоСписокСведений.Тип);
	//НСПН.ПолучитьXDTO("СписокСведений");
	
//	Для Каждого Свойство из НСПН.Свойства() ЦИкл
//	
//	КонецЦикла;
	
	Запись = Новый ЗаписьXML;
	Запись.ОткрытьФайл("C:\distr\1.xml");
	Запись.ЗаписатьОбъявлениеXML();
	Запись.ЗаписатьНачалоЭлемента("ЭДПФР");//ЭДПФР
	Запись.ЗаписатьСоответствиеПространстваИмен("УТ2", "http://пф.рф/УТ/2017-08-21");
	Запись.ЗаписатьСоответствиеПространстваИмен("НСПН","http://пф.рф/НСПН/2020-03-23");
	Запись.ЗаписатьСоответствиеПространстваИмен("НПФ4", "http://пф.рф/ВсВО/НПФ/типы/2018-09-12");
	Запись.ЗаписатьСоответствиеПространстваИмен("ИНПФ4", "http://пф.рф/ВсВО/НПФ/типыИсходящие/2018-09-12"); 
	Запись.ЗаписатьСоответствиеПространстваИмен("АФ4", "http://пф.рф/АФ/2017-08-21");
	Запись.ЗаписатьСоответствиеПространстваИмен("","http://пф.рф/НСПН/2020-03-23");
	//Запись.ЗаписатьСоответствиеПространстваИмен("","http://www.w3.org/2000/09/xmldsig#");

	    #Область НСПН
		Запись.ЗаписатьНачалоЭлемента("НСПН"); //НСПН
		#Область Реквизиты 
			Запись.ЗаписатьНачалоЭлемента("ИНПФ4:Реквизиты"); //"ИНПФ4:Реквизиты"
				Запись.ЗаписатьНачалоЭлемента("УТ2:Дата");//"УТ2:Дата"
					Запись.ЗаписатьТекст(СтруктураРеквизиты.Дата);
				Запись.ЗаписатьКонецЭлемента();//"УТ2:Дата"
				Запись.ЗаписатьНачалоЭлемента("УТ2:Номер");//"УТ2:Номер"
					Запись.ЗаписатьТекст(СтруктураРеквизиты.Номер);
				Запись.ЗаписатьКонецЭлемента();//"УТ2:Номер"
			Запись.ЗаписатьКонецЭлемента();//"ИНПФ4:Реквизиты"
		#КонецОбласти 
		    #Область НПФ 
			Запись.ЗаписатьНачалоЭлемента("ИНПФ4:НПФ");//ИНПФ4:НПФ
				Запись.ЗаписатьНачалоЭлемента("НПФ4:НаименованиеФормализованное");//НПФ4:НаименованиеФормализованное
					Запись.ЗаписатьТекст(СтруктураНПФ.НаименованиеФормализованное);
				Запись.ЗаписатьКонецЭлемента();//НПФ4:НаименованиеФормализованное
				Запись.ЗаписатьНачалоЭлемента("НПФ4:ИНН");//НПФ4:ИНН
					Запись.ЗаписатьТекст(СтруктураНПФ.ИНН);
				Запись.ЗаписатьКонецЭлемента();//НПФ4:ИНН
			Запись.ЗаписатьКонецЭлемента();//ИНПФ4:НПФ
			#КонецОбласти
			#Область СписокСведений
			Запись.ЗаписатьНачалоЭлемента("СписокСведений");//СписокСведений
			    #Область Запись 
				Запись.ЗаписатьНачалоЭлемента("Запись");//Запись
					Запись.ЗаписатьНачалоЭлемента("НомерПП");//НомерПП
						Запись.ЗаписатьТекст(СтруктураЗаписи.НомерПП);
					Запись.ЗаписатьКонецЭлемента();//НомерПП
					Запись.ЗаписатьНачалоЭлемента("ВходящийНомерПП");//ВходящийНомерПП
						Запись.ЗаписатьТекст(СтруктураЗаписи.ВходящийНомерПП);
					Запись.ЗаписатьКонецЭлемента();//ВходящийНомерПП
	                Запись.ЗаписатьНачалоЭлемента("ДатаЗапроса");//ДатаЗапроса
						Запись.ЗаписатьТекст(СтруктураЗаписи.ДатаЗапроса);
					Запись.ЗаписатьКонецЭлемента();//ДатаЗапроса
				#Область ЗЛ
				Запись.ЗаписатьНачалоЭлемента("ЗЛ");//ЗЛ
					Запись.ЗаписатьНачалоЭлемента("УТ2:ФИО");//УТ2:ФИО
						Запись.ЗаписатьНачалоЭлемента("УТ2:Фамилия");//УТ2:Фамилия
					    	Запись.ЗаписатьТекст(СтруктураЗЛ.Фамилия);
					    Запись.ЗаписатьКонецЭлемента();//УТ2:Фамилия
						Запись.ЗаписатьНачалоЭлемента("УТ2:Имя");//УТ2:Имя
					    	Запись.ЗаписатьТекст(СтруктураЗЛ.Имя);
					    Запись.ЗаписатьКонецЭлемента();//УТ2:Имя
						Запись.ЗаписатьНачалоЭлемента("УТ2:Отчество");//УТ2:Отчество
					    	Запись.ЗаписатьТекст(СтруктураЗЛ.Отчество);
					    Запись.ЗаписатьКонецЭлемента();//УТ2:Отчество
					Запись.ЗаписатьКонецЭлемента();//УТ2:ФИО
					Запись.ЗаписатьНачалоЭлемента("УТ2:СНИЛС");//УТ2:СНИЛС
						Запись.ЗаписатьТекст(СтруктураЗЛ.СНИЛС);
					Запись.ЗаписатьКонецЭлемента();//УТ2:СНИЛС
				Запись.ЗаписатьКонецЭлемента();//ЗЛ
				#КонецОбласти
			#Область Договор 	
				 Запись.ЗаписатьНачалоЭлемента("Договор");//Договор
				 	Запись.ЗаписатьНачалоЭлемента("УТ2:Дата");//УТ2:Дата
						Запись.ЗаписатьТекст(СтруктураДоговор.Дата);	
					Запись.ЗаписатьКонецЭлемента();//УТ2:Дата
					Запись.ЗаписатьНачалоЭлемента("УТ2:Номер");//УТ2:Номер
						Запись.ЗаписатьТекст(СтруктураДоговор.Номер);	
					Запись.ЗаписатьКонецЭлемента();//УТ2:Номер
				 Запись.ЗаписатьКонецЭлемента();//Договор
			#КонецОбласти
			#Область Суммы
				Запись.ЗаписатьНачалоЭлемента("Суммы");//Суммы
					Запись.ЗаписатьНачалоЭлемента("НПФ4:СВ");//НПФ4:СВ
						Запись.ЗаписатьНачалоЭлемента("НПФ4:Сумма");//НПФ4:Сумма
							Запись.ЗаписатьТекст(СтруктураСВ.Сумма);
						Запись.ЗаписатьКонецЭлемента();//НПФ4:Сумма
						Запись.ЗаписатьНачалоЭлемента("НПФ4:ИД");//НПФ4:ИД
							Запись.ЗаписатьТекст(СтруктураСВ.ИД);
						Запись.ЗаписатьКонецЭлемента();//НПФ4:ИД
						Запись.ЗаписатьНачалоЭлемента("НПФ4:ЧФР");//НПФ4:ЧФР
							Запись.ЗаписатьТекст(СтруктураСВ.ЧФР);
						Запись.ЗаписатьКонецЭлемента();//НПФ4:ЧФР
					Запись.ЗаписатьКонецЭлемента();//НПФ4:СВ
					
					Запись.ЗаписатьНачалоЭлемента("НПФ4:ДСВ");//НПФ4:ДСВ
						Запись.ЗаписатьНачалоЭлемента("НПФ4:Сумма");//НПФ4:Сумма
							Запись.ЗаписатьТекст(СтруктураДСВ.Сумма);
						Запись.ЗаписатьКонецЭлемента();//НПФ4:Сумма
						Запись.ЗаписатьНачалоЭлемента("НПФ4:ИД");//НПФ4:ИД
							Запись.ЗаписатьТекст(СтруктураДСВ.ИД);
						Запись.ЗаписатьКонецЭлемента();//НПФ4:ИД
						Запись.ЗаписатьНачалоЭлемента("НПФ4:ЧФР");//НПФ4:ЧФР
							Запись.ЗаписатьТекст(СтруктураДСВ.ЧФР);
						Запись.ЗаписатьКонецЭлемента();//НПФ4:ЧФР
					Запись.ЗаписатьКонецЭлемента();//НПФ4:ДСВ

					Запись.ЗаписатьНачалоЭлемента("НПФ4:СОФН");//НПФ4:СОФН
						Запись.ЗаписатьНачалоЭлемента("НПФ4:Сумма");//НПФ4:Сумма
							Запись.ЗаписатьТекст(СтруктураСОФН.Сумма);
						Запись.ЗаписатьКонецЭлемента();//НПФ4:Сумма
						Запись.ЗаписатьНачалоЭлемента("НПФ4:ИД");//НПФ4:ИД
							Запись.ЗаписатьТекст(СтруктураСОФН.ИД);
						Запись.ЗаписатьКонецЭлемента();//НПФ4:ИД
						Запись.ЗаписатьНачалоЭлемента("НПФ4:ЧФР");//НПФ4:ЧФР
							Запись.ЗаписатьТекст(СтруктураСОФН.ЧФР);
						Запись.ЗаписатьКонецЭлемента();//НПФ4:ЧФР
					Запись.ЗаписатьКонецЭлемента();//НПФ4:СОФН

					Запись.ЗаписатьНачалоЭлемента("НПФ4:МСК");//НПФ4:МСК
						Запись.ЗаписатьНачалоЭлемента("НПФ4:Сумма");//НПФ4:Сумма
							Запись.ЗаписатьТекст(СтруктураМСК.Сумма);
						Запись.ЗаписатьКонецЭлемента();//НПФ4:Сумма
						Запись.ЗаписатьНачалоЭлемента("НПФ4:ИД");//НПФ4:ИД
							Запись.ЗаписатьТекст(СтруктураМСК.ИД);
						Запись.ЗаписатьКонецЭлемента();//НПФ4:ИД
						Запись.ЗаписатьНачалоЭлемента("НПФ4:ЧФР");//НПФ4:ЧФР
							Запись.ЗаписатьТекст(СтруктураМСК.ЧФР);
						Запись.ЗаписатьКонецЭлемента();//НПФ4:ЧФР
					Запись.ЗаписатьКонецЭлемента();//НПФ4:МСК
				Запись.ЗаписатьКонецЭлемента();//Суммы
			#КонецОбласти
			#Область ПравоНаСтаховыеВыплаты
				Запись.ЗаписатьНачалоЭлемента("ПравоНаСтаховыеВыплаты");//ПравоНаСтаховыеВыплаты
					Запись.ЗаписатьНачалоЭлемента("ЕстьПравоНаСтраховуюПенсиюПоСтарости");//ЕстьПравоНаСтраховуюПенсиюПоСтарости
					 	Запись.ЗаписатьТекст(СтруктураДанных.ЕстьПравоНаСтраховуюПенсиюПоСтарости);
					Запись.ЗаписатьКонецЭлемента();//ЕстьПравоНаСтраховуюПенсиюПоСтарости
			    Запись.ЗаписатьКонецЭлемента();//ПравоНаСтаховыеВыплаты
			#КонецОбласти
			#Область СтраховаяПенсияПоСтарости
				Запись.ЗаписатьНачалоЭлемента("СтраховаяПенсияПоСтарости");//СтраховаяПенсияПоСтарости
					Запись.ЗаписатьНачалоЭлемента("Основание");//Основание
						Запись.ЗаписатьТекст(СтруктураСППС.Основание); 	
					Запись.ЗаписатьКонецЭлемента();//Основание
					Запись.ЗаписатьНачалоЭлемента("Дата");//Дата
						Запись.ЗаписатьТекст(СтруктураСППС.Дата); 	
					Запись.ЗаписатьКонецЭлемента();//Дата
					Запись.ЗаписатьНачалоЭлемента("Сумма");//Сумма
						Запись.ЗаписатьТекст(СтруктураСППС.Сумма); 	
					Запись.ЗаписатьКонецЭлемента();//Сумма
				Запись.ЗаписатьКонецЭлемента();//СтраховаяПенсияПоСтарости
			#КонецОбласти
				Запись.ЗаписатьКонецЭлемента();//Запись
				#КонецОбласти
			Запись.ЗаписатьКонецЭлемента();//СписокСведений
			#КонецОбласти
			#Область КоличествоЗЛ
			Запись.ЗаписатьНачалоЭлемента("КоличествоЗЛ");//КоличествоЗЛ
				Запись.ЗаписатьТекст(СтруктураДанных.КоличествоЗЛ);
			Запись.ЗаписатьКонецЭлемента();//КоличествоЗЛ
			#КонецОбласти
		Запись.ЗаписатьКонецЭлемента();//НСПН
		#КонецОбласти
		#Область СлужебнаяИнформация
		Запись.ЗаписатьНачалоЭлемента("СлужебнаяИнформация");//СлужебнаяИнформация
			Запись.ЗаписатьНачалоЭлемента("АФ4:GUID");//АФ4:GUID
				Запись.ЗаписатьТекст(СтруктураДанных.GUID);
			Запись.ЗаписатьКонецЭлемента();//АФ4:GUID
			Запись.ЗаписатьНачалоЭлемента("АФ4:ВОтветНа");//АФ4:ВОтветНа
				Запись.ЗаписатьТекст(СтруктураДанных.ВОтветНа);
			Запись.ЗаписатьКонецЭлемента();//АФ4:ВОтветНа
			Запись.ЗаписатьНачалоЭлемента("АФ4:ДатаВремя");//АФ4:ДатаВремя
				Запись.ЗаписатьТекст(СтруктураДанных.ДатаВремя);
			Запись.ЗаписатьКонецЭлемента();//АФ4:ДатаВремя
			Запись.ЗаписатьНачалоЭлемента("НПФ4:Составитель");//НПФ4:Составитель
				Запись.ЗаписатьНачалоЭлемента("УТ2:Наименование");//УТ2:Наименование
					Запись.ЗаписатьТекст(СтруктураДанных.Наименование);
				Запись.ЗаписатьКонецЭлемента();//УТ2:Наименование
			Запись.ЗаписатьКонецЭлемента();//НПФ4:Составитель
			Запись.ЗаписатьНачалоЭлемента("НПФ4:НомерДокументаОрганизации");//НПФ4:НомерДокументаОрганизации
				Запись.ЗаписатьТекст(СтруктураДанных.НомерДокументаОрганизации);
			Запись.ЗаписатьКонецЭлемента();//НПФ4:НомерДокументаОрганизации
			Запись.ЗаписатьНачалоЭлемента("НПФ4:ЗаГод");//НПФ4:ЗаГод
				Запись.ЗаписатьТекст(СтруктураДанных.ЗаГод);
			Запись.ЗаписатьКонецЭлемента();//НПФ4:ЗаГод

		Запись.ЗаписатьКонецЭлемента();//СлужебнаяИнформация
		#КонецОбласти
			
	Запись.ЗаписатьКонецЭлемента();//ЭДПФР
	Запись.Закрыть();
	
	//Сообщить("Тест");
	Чтение = Новый ЧтениеXML;
	Чтение.ОткрытьФайл("C:\distr\1.xml");
	Об=ФабрикаXDTO.ПрочитатьXML(Чтение);
	Сообщение = Новый СообщениеПользователю;
	Сообщение.Текст = "Тест";
	Сообщение.Сообщить();
	
	Записьхмл = Новый ЗаписьXML;
	Записьхмл.ОткрытьФайл("C:\distr\2.xml");
	Записьхмл.ЗаписатьОбъявлениеXML();
	//Записьхмл.ЗаписатьНачалоЭлемента("ЭДПФР");//ЭДПФР
	//Записьхмл.ЗаписатьСоответствиеПространстваИмен("УТ2", "http://пф.рф/УТ/2017-08-21");
	////Записьхмл.ЗаписатьСоответствиеПространстваИмен("НСПН","http://пф.рф/НСПН/2020-03-23");
	//Записьхмл.ЗаписатьСоответствиеПространстваИмен("НПФ4", "http://пф.рф/ВсВО/НПФ/типы/2018-09-12");
	//Записьхмл.ЗаписатьСоответствиеПространстваИмен("ИНПФ4", "http://пф.рф/ВсВО/НПФ/типыИсходящие/2018-09-12"); 
	//Записьхмл.ЗаписатьСоответствиеПространстваИмен("АФ4", "http://пф.рф/АФ/2017-08-21");
	//Записьхмл.ЗаписатьСоответствиеПространстваИмен("","http://пф.рф/НСПН/2020-03-23");

	ФабрикаXDTO.ЗаписатьXML(Записьхмл,ОБ);
	//Записьхмл.ЗаписатьКонецЭлемента();
	Записьхмл.Закрыть();
	
	Документ = Документы.АнкетаОпросник.НайтиПоНомеру("000000001");
	ГУИД = Строка(Документ.УникальныйИдентификатор());
	
	НовыйGUID = Новый УникальныйИдентификатор(ГУИД);
//	СсыллкНаДок = Документы.АнкетаОпросник.ПолучитьСсылку(НовыйGUID);
	
КонецПроцедуры

Функция ОбойтиСвойство(ОбъектXDTO,Строчка=Неопределено)
	Если ТипЗнч(Дерево) <> Тип("ДеревоЗначений") Тогда
		Дерево = Новый ДеревоЗначений;
		Дерево.Колонки.Добавить("Наименование");
		
	КонецЕсли;
	Если ТипЗнч(ОбъектXDTO) = Тип("ОбъектXDTO") Тогда  
		Для Каждого СвойствоХ из ОбъектXDTO.Свойства() Цикл 
			//Если Строчка = Неопределено Тогда
				Строчка = Дерево.Строки.Добавить();	
			//Иначе
				//Строчка = Строчка.Строки.Добавить();
			//КонецЕсли;
			Строчка.Наименование = СвойствоХ.Имя;
			Если СвойствоХ.Тип.Свойства.Количество()>0 Тогда
				ОбойтиСвойство(СвойствоХ,Строчка);
			Иначе
				ОбойтиСвойство(СвойствоХ,Строчка.Родитель);
			КонецЕсли;
		КонецЦикла;
	Иначе
		Для Каждого СвойствоХ из ОбъектXDTO.Тип.Свойства Цикл 
			//Если Строчка = Неопределено Тогда
			//	Строчка = Дерево.Строки.Добавить();	
			//Иначе
			//Если ТипЗнч(СвойствоХ.Тип) = Тип("ТипЗначенияXDTO") Тогда 
				Строчка = Строчка.Строки.Добавить();
			//КонецЕсли;
			//КонецЕсли;
			Строчка.Наименование = СвойствоХ.Имя;
			Если ТипЗнч(СвойствоХ.Тип) <> Тип("ТипЗначенияXDTO") Тогда //Или ТипЗнч(СвойствоХ) <> Тип("СвойствоXDTO") Тогда
				Если СвойствоХ.Тип.Свойства.Количество()>0 Тогда
					ОбойтиСвойство(СвойствоХ,Строчка);
				Иначе
					ОбойтиСвойство(СвойствоХ,Строчка.Родитель);
				КонецЕсли;
			Иначе
				Строчка = Строчка.Родитель;
				Продолжить
			КонецЕсли;
		КонецЦикла;
	КонецЕсли;
КонецФункции

&НаКлиенте
Процедура СоздатьXML(Команда)
	СоздатьXMLНаСервере();
	КомандаСистемы("C:\""Program Files""\7-Zip\7z.exe -bd -y -tgzip a ""c:\distr\1.gzip"" ""c:\distr\1.xml""");
КонецПроцедуры


&НаКлиенте
Процедура СтрокуВБуквы(Команда)
	ДанныеПечати = Новый Структура;
	ПечатьКлиентСервер.СтрокуДобавитьВСтруктуруПоСимволамНаКлиенте(ДанныеПечати,"Фамилия","ИВАНОВ");
	ПечатьКлиентСервер.СтрокуДобавитьВСтруктуруПоСимволамНаКлиенте(ДанныеПечати,"Имя","Иван");

	ТабДок = Печать(ДанныеПечати);	
	ТабДок.Показать();
	//Для Каждого ЗначениеСтрукт Из ДанныеПечати Цикл
	//	Сообщить(ЗначениеСтрукт.Ключ + " " + ЗначениеСтрукт.Значение);		      
	//КонецЦикла;
КонецПроцедуры

&НаСервере
Функция Печать(ДанныеПечати)
	Об = РеквизитФормыВЗначение("Объект");
	Макет = Об.ПолучитьМакет("Макет");
	ТабДок = Новый ТабличныйДокумент;
	МассивОбластей = Новый Массив;
	МассивОбластей.Добавить("Шапка");
	ПечатьКлиентСервер.ВывестиДанныеВТабличныйДокумент(ТабДок,МассивОбластей,Макет,ДанныеПечати);
	Возврат ТабДок;
КонецФункции


&НаКлиенте
Процедура ДобавитьКДатеЧасовойПояс(Команда)
	Часовой = ФормированиеXMLСервер.ВернутьЧасовойПоясGMT();
	Дата=Формат(ТекущаяДата(),"ДФ='yyyy-MM-dd""T""HH:mm:ss'" );
	Сообщить(Дата + Часовой);

КонецПроцедуры

&НаСервере
Функция ВернутьЧасовойПояс()
	Дата = ТекущаяДата();
	ЮТЦ = УниверсальноеВремя(Дата);
	GMT = (Дата - ЮТЦ)/3600;
	Если GMT >=0 Тогда
		Знак = "+";
	Иначе
		Знак = "-";
	КонецЕсли;
	МинутОтЧаса = Gmt - Цел(GMT);
	Часы = Цел(GMT);
	Если  МинутОтЧаса = 0 Тогда
		Окончание = ":00" ;
	Иначе
		Минуты = Цел(60 * МинутОтЧаса);
		Окончание = ":" + Строка(Минуты);
	КонецЕсли;
	Возврат Знак + Формат(Часы,"ЧЦ=2; ЧВН=")+ Окончание ;
КонецФункции


&НаКлиенте
Процедура ПросклонятьСтроку(Команда)
	Сообщить(ОбщегоНазначенияСервер.ПросклонятьПредставление("Иванов Иван Иванович",2,1));
КонецПроцедуры

&НаКлиенте
Процедура ПриветБот(Команда)
	Токен="1006729652:AAFD-hWj5kPToVJ9EqAD6AryMtZ8n_lADbQ"; 
	ЧатИД = "290832360";
	ОтправитьСообщениеВТелеграмБоту(Токен,ЧатИД,"Привет!");
КонецПроцедуры

&НаКлиенте
Процедура ОтправитьСообщениеВТелеграмБоту(Токен,ЧатИД,ТекстСообщения)
	//ТекстСообщения = "Привет!";
	
	Структура = Новый Структура;
	Структура.Вставить("chat_id",ЧатИД);
	Структура.Вставить("text",ТекстСообщения);
	Структура.Вставить("parse_mode","markdown");
//	Если Клавиатура<> Неопределено Тогда
//		Структура.Вставить("reply_markup",Клавиатура);	
//	КонецЕсли;
	
	Поток = Новый ПотокВПамяти;
	Зап = Новый ЗаписьJSON;
	зап.ОткрытьПоток(Поток,КодировкаТекста.UTF8);
	ЗаписатьJSON(Зап,Структура);
	Зап.Закрыть();
	ФайлСJS = Поток.ЗакрытьИПолучитьДвоичныеДанные();
	
	Заголовки = Новый Соответствие;
	Заголовки.Вставить("Content-Type","application/json");
	Адрес = "/bot"+Токен+"/sendMessage";
	ЗапросHttp = Новый HTTPЗапрос(Адрес,Заголовки);
	ЗапросHttp.УстановитьТелоИзДвоичныхДанных(ФайлСJS);
	ssl = Новый ЗащищенноеСоединениеOpenSSL(Новый СертификатКлиентаWindows(),Новый СертификатыУдостоверяющихЦентровОС());
	Соединение = Новый HTTPСоединение("api.telegram.org",,,,,,ssl);
	Соединение.ОтправитьДляОбработки(ЗапросHttp);	
КонецПроцедуры

&НаКлиенте
Процедура ПолучитьОбновления()
	Токен="1006729652:AAFD-hWj5kPToVJ9EqAD6AryMtZ8n_lADbQ";
	
	Заголовки = Новый Соответствие;
	Заголовки.Вставить("Content-Type","application/json");
	ТаймаутСоединения = 2;
	Адрес = "/bot"+Токен+"/getupdates";
	ЗапросHttp = Новый HTTPЗапрос(Адрес,Заголовки);
	ssl = Новый ЗащищенноеСоединениеOpenSSL(Новый СертификатКлиентаWindows(),Новый СертификатыУдостоверяющихЦентровОС());
	Соединение = Новый HTTPСоединение("api.telegram.org",,,,,ТаймаутСоединения,ssl);
	Ответ = Соединение.ОтправитьДляОбработки(ЗапросHttp).ПолучитьТелоКакСтроку(КодировкаТекста.UTF8);
	ЧтениеJS = новый ЧтениеJSON;
	ЧтениеJS.УстановитьСтроку(Ответ);
	СтруктураОтвета = ПрочитатьJSON(ЧтениеJS);
	Если СтруктураОтвета.ok = Ложь Тогда
		Сообщить("Не удалось получить обновления");	
		Возврат;
	КонецЕсли;
	Для Каждого Сообщение Из СтруктураОтвета.result Цикл
		//ЧатИД = СтрЗаменить(СтрЗаменить(Сообщение.message.chat.id," ",""),Символы.НПП,"");
		Авторизация = ПроверкаАвторизации(Сообщение.message.chat.id);
		Если Сообщение.message.text = "/auth" и Авторизация.Авторизован = Ложь Тогда
			ОтправитьСообщениеВТелеграмБоту(Токен, Сообщение.message.chat.id,
				"Введите свой номер телефона для подтверждения");
			НачалоАвторизацииВБоте(Сообщение.message.chat.id);
			Продолжить;
		ИначеЕсли Сообщение.message.text = "/auth" и Авторизация.Авторизован = Ложь Тогда 
			ОтправитьСообщениеВТелеграмБоту(Токен, Сообщение.message.chat.id,
				"Вы уже успешно авторизованы");  
		КонецЕсли;
		Если Не Авторизация.Авторизован Тогда
			Если Не ПреркаОжидающегоИд(Сообщение.message.chat.id) Тогда
				ОтправитьСообщениеВТелеграмБоту(Токен, Сообщение.message.chat.id,
					"Сначала авторизуйтесь, для начала авторизации наберите команду /auth");
			Иначе
				Если Не АвторизацияПопытка(Сообщение.message.chat.id, Сообщение.message.text) Тогда
					ОтправитьСообщениеВТелеграмБоту(Токен, Сообщение.message.chat.id,
						"Не найден клиент с таким номером");
				Иначе
					ОтправитьСообщениеВТелеграмБоту(Токен, Сообщение.message.chat.id, "Вы успешно авторизовались");
				КонецЕсли;
			КонецЕсли;
		Продолжить;
		КонецЕсли;
		Если Сообщение.message.text = "/menu" Тогда
			ОтправитьГлавноеМеню(Токен, Сообщение.message.chat.id);
		КонецЕсли;
	КонецЦикла;
КонецПроцедуры

&НаКлиенте
Процедура ПолучитьОбновленияБота(Команда)
	ПолучитьОбновления();
КонецПроцедуры

&НаКлиенте
Процедура ОтправитьГлавноеМеню(Токен,ЧатИД)
	Клавиатура = СформироватьМеню();
	ОтправкаКлавиатуры(Токен, ЧатИД, Клавиатура,"Меню на сегодня");
//	ОтправитьСообщениеВТелеграмБоту(Токен,ЧатИД, "Меню на сегодня", Клавиатура);

КонецПроцедуры

&НаКлиенте
Процедура ОтправкаКлавиатуры(Токен, ЧатИД, Клавиатура, ТекстСообщения)
	Структура = Новый Структура;
	Структура.Вставить("chat_id", ЧатИД);
	Структура.Вставить("text", ТекстСообщения);
	Структура.Вставить("parse_mode", "markdown");
	Если Клавиатура <> Неопределено Тогда
		Структура.Вставить("reply_markup", Клавиатура);
	КонецЕсли;
	Таймаут = 300;
	Поток = Новый ПотокВПамяти;
	Зап = Новый ЗаписьJSON;
	зап.ОткрытьПоток(Поток, КодировкаТекста.UTF8);
	ЗаписатьJSON(Зап, Структура);
	Зап.Закрыть();
	ФайлСJS = Поток.ЗакрытьИПолучитьДвоичныеДанные();

	Заголовки = Новый Соответствие;
	Заголовки.Вставить("Content-Type", "application/json");
	Адрес = "/bot" + Токен + "/sendMessage";
	ЗапросHttp = Новый HTTPЗапрос(Адрес, Заголовки);
	ЗапросHttp.УстановитьТелоИзДвоичныхДанных(ФайлСJS);
	ssl = Новый ЗащищенноеСоединениеOpenSSL(Новый СертификатКлиентаWindows, Новый СертификатыУдостоверяющихЦентровОС);
	Соединение = Новый HTTPСоединение("api.telegram.org",,,,,Таймаут,ssl);
	Ответ  = Соединение.ОтправитьДляОбработки(ЗапросHttp);
//	ЧтениеJS = Новый ЧтениеJSON();
//	ЧтениеJS = Ответ.ПолучитьТелоКакСтроку();	
//	СтруктураОтвета = ПрочитатьJSON(ЧтениеJS);
//	Если СтруктураОтвета.message.text = "/Первые" Тогда
//		
//	КонецЕсли;
КонецПроцедуры

&НаКлиенте
Функция СформироватьМеню() 
	СтруктураМеню = Новый Структура;
	СтруктураМеню.Вставить("one_time_keyboard",Истина);
	Keyboard = Новый Массив;
	Кнопки = Новый Массив;
	ДобавитьКнопку(Кнопки,"Первые блюда","/Первые");
	ДобавитьКнопку(Кнопки,"Вторые блюда","/Вторые");
	ДобавитьКнопку(Кнопки,"Гарниры","/Гарниры");
	Keyboard.Добавить(Кнопки);
	СтруктураМеню.Вставить("inline_keyboard",Keyboard); //keyboard - обычная клавиатура
	Возврат СтруктураМеню;
КонецФункции

Процедура ДобавитьКнопку(Клавиатура,ТекстКнопки,callback )
	СтруктураКнопки = Новый Структура;
	СтруктураКнопки.Вставить("text", ТекстКнопки);
	СтруктураКнопки.Вставить("callback_data",callback);
	Клавиатура.Добавить(СтруктураКнопки);	
КонецПроцедуры

&НаСервереБезКонтекста
Процедура НачалоАвторизацииВБоте(ЧатИд)
	Менеджер = РегистрыСведений.ОжидающиеАвторизацииОтБота.СоздатьМенеджерЗаписи();
	Менеджер.ЧатИД = ЧатИд;
	Менеджер.Записать(Истина);	
КонецПроцедуры

&НаСервереБезКонтекста
Функция ПроверкаАвторизации(ЧатИд)
	СтруктураВозврата = Новый Структура;
	СтруктураВозврата.Вставить("Клиент",Справочники.Клиенты.ПустаяСсылка());
	СтруктураВозврата.Вставить("Авторизован",Ложь);
	Запрос = Новый Запрос;
	Запрос.Текст =
		"ВЫБРАТЬ ПЕРВЫЕ 1
		|	АвторизованныеПользователиБота.Клиент
		|ИЗ
		|	РегистрСведений.АвторизованныеПользователиБота КАК АвторизованныеПользователиБота
		|ГДЕ
		|	АвторизованныеПользователиБота.ЧатИД = &ЧатИД";
	
	Запрос.УстановитьПараметр("ЧатИД", ЧатИД);

	РезультатЗапроса = Запрос.Выполнить().Выгрузить();
	Если РезультатЗапроса.Количество() <> 0 Тогда
		СтруктураВозврата.Клиент = РезультатЗапроса[0].Клиент;
		СтруктураВозврата.Авторизован = Истина;
	КонецЕсли;
	Возврат СтруктураВозврата;
КонецФункции

&НаСервереБезКонтекста
Функция ПреркаОжидающегоИд(ЧатИд)
	Запрос = Новый Запрос;
	Запрос.Текст =
		"ВЫБРАТЬ
		|	ОжидающиеАвторизацииОтБота.ЧатИД
		|ИЗ
		|	РегистрСведений.ОжидающиеАвторизацииОтБота КАК ОжидающиеАвторизацииОтБота
		|ГДЕ
		|	ОжидающиеАвторизацииОтБота.ЧатИД = &ЧатИД";
	
	Запрос.УстановитьПараметр("ЧатИД", ЧатИД);
	
	РезультатЗапроса = Запрос.Выполнить();
	Если РезультатЗапроса.Пустой() Тогда
		Возврат Ложь;
	Иначе
		Возврат Истина;
	КонецЕсли;	
КонецФункции

&НаСервереБезКонтекста
Функция АвторизацияПопытка(ЧатИД, Телефон)
	Телефон = СокрЛп(СтрЗаменить(СтрЗаменить(СтрЗаменить(Телефон," " ,"" ),"-" ,"" ),"+",""));
	Запрос = Новый Запрос;
	Запрос.Текст =
		"ВЫБРАТЬ ПЕРВЫЕ 1
		|	Клиенты.Ссылка
		|ИЗ
		|	Справочник.Клиенты КАК Клиенты
		|ГДЕ
		|	Клиенты.Телефон = &Телефон
		|	И Клиенты.ПометкаУдаления = ЛОЖЬ";
	
	Запрос.УстановитьПараметр("Телефон", Телефон);
	
	РезультатЗапроса = Запрос.Выполнить().Выгрузить();
	Если РезультатЗапроса.Количество() <> 0 Тогда
		Менеджер = РегистрыСведений.АвторизованныеПользователиБота.СоздатьМенеджерЗаписи();
		Менеджер.Клиент = РезультатЗапроса[0].Ссылка;
		Менеджер.ЧатИД = ЧатИД;
		Менеджер.Записать(Истина);
		НаборЗаписей = РегистрыСведений.ОжидающиеАвторизацииОтБота.СоздатьНаборЗаписей();
		НаборЗаписей.Отбор.ЧатИД = ЧатИД;
		НаборЗаписей.Прочитать();
		НаборЗаписей.Очистить();
		НаборЗаписей.Записать(Истина);
		Возврат Истина;
	Иначе
		 Возврат Ложь;
	КонецЕсли;
	
КонецФункции

&НаСервере
Процедура СохранитьНастройкиФормы()
	ОписаниеНастройки = Новый ОписаниеНастроек();
	ОписаниеНастройки.Представление = "Настройки формы Обработки СозданиеХМЛ";
	ДанныеНастройки = Новый ХранилищеЗначения("Настройки");
	ХранилищеОбщихНастроек.Сохранить("СозданиеХМл","Ключ настройки",ДанныеНастройки ,ОписаниеНастройки , ПараметрыСеанса.КодСотрудника);
		
КонецПроцедуры
