
Функция ВернутьЗаголовокСистемы() Экспорт 
	Возврат СокрЛП(Константы.ЗаголовокСистемы.Получить());	
КонецФункции

Функция ПросклонятьПредставление(Представление,Падеж,Пол)  Экспорт
	СоответствиеПадежей = Новый Соответствие;
	СоответствиеПадежей.Вставить(1, "ПД=Именительный");
	СоответствиеПадежей.Вставить(2, "ПД=Родительный");
	СоответствиеПадежей.Вставить(3, "ПД=Дательный");
	СоответствиеПадежей.Вставить(4, "ПД=Винительный");
	СоответствиеПадежей.Вставить(5, "ПД=Творительный");
	СоответствиеПадежей.Вставить(6, "ПД=Предложный");
	ИмяПадежа = СоответствиеПадежей.Получить(Падеж);
	СоответствиеПол = Новый Соответствие;
	СоответствиеПол.Вставить(1, "ПЛ=Мужской");
	СоответствиеПол.Вставить(2, "ПЛ=Женский");
	ОписаниеСтроки = СоответствиеПол.Получить(Пол);
	ПрСтрока= ПолучитьСклоненияСтроки(Представление,ОписаниеСтроки,ИмяПадежа)[0];
	Возврат ПрСтрока;
КонецФункции

