# Numbers_Generator

Здравствуйте! Спасибо большое за внимание к моему тестовому заданию!
На выполнение задания у меня ушло 3 часа. Я реализовал необходимый минимум, потому что среди прочих метрик посчитал минимизацию времени реализации наиболее приоритетной. 
Очень прошу вас прочитать нижележащий раздел

## ВАЖНО!!!
По мере code review вы можете заметить, что сущности калькуляторов несколько похожи друг на друга и, вместо распиливания всего этого добра на несколько сущностей
с повторяющимися методами можно было бы сделать суперкласс, от которого будут наследоваться подклассы, реализующие необходимое конкретное поведение. 
Однако я сознательно выбрал тот путь, который выбрал. Обусловлено это тем, что я решил сделать классы более независимыми друг от друга, что в свою очередь влечет за собой большую гибкость.
Сделал я так, чтобы в будущем можно было безболезненно модифицировать поведения калькуляторов. 
Прошу не считать это безграмотностью, а принять тот факт, что я рассматривал альтернативы и сделал осознанный выбор в пользу данной реализации. 

## Небольшая документация 

### Файловая структура проекта 
Корневая директория проекта разделена на следующие папки:
- Library 

	В этой папке хранятся всякие сущности-беспризорники, которым не нашлось места в других папках 
- Configuration 

	Тут хранятся entry points сущности ( AppDelegate, SceneDelegate ) и info.plist
- Resources 

	Тут хранятся необходимые приложению ресурсы ( ассеты, строковые константы, шрифты и так далее )
- Application 

	Непосредственный исходный код нашего приложения 
	- Domain

		Директория, содержащая бизнес-логику приложения. В данном случае это сущности-калькуляторы. 
	- UI

		Директория, где хранится код, относящийся к UI.
		- Elements 

			Тут у нас различные представления, которые могут быть использованы независимо в разных UI-модулях. 
		- Flows
    
			Папка, содержащая user flows, каждый из которых, в свою очередь, представляет совокупность связанных UI-модулей.

### Ключевые сущности 
#### UI
Всего в приложении 1 UI-модуль, в который на этапе внедрения зависимостей передается сущность калькулятора, что и будет определять поведение модуля. Таким образом реализуется универсальность UI-модуля. Также для модуля предусмотрена сущность assembly. Вызывая нужный метод данной сущности, клиентский код определяет, какой именно модуль он в итоге получит.  

View-слой модулей имеет общего предка - класс BaseNumbersController. Данный класс отвечает за конфигурирование UICollectionView и предоставляет переопределяемый метод для конфигурирования tab bar item. 

#### Domain 
Domain-слой приложения представлен сущностями-калькуляторами, которые занимаются вычислением интересующих нас чисел определенной категории по их порядковому номеру. 
Для примера рассмотрим калькулятор простых чисел SimpleNumbersCalculator. 

Данный класс владеет приватной serial очередью. В данную очередь асинхронно попадают запросы на вычисление n-ого простого числа. Сделано это для того, чтобы была возможность асинхронно вычислять простые числа, не тормозя при этом main-поток. Очередь является serial, чтобы не возникло race conditions при обращении к массиву уже вычисленных простых чисел. 

Функция calculate(by order:, completion:) является внешним интерфейсом. Для начала функция проверяет, было ли уже вычислено n-ое простое число. Если да, то функция просто возвращает его. Таким образом достигается хороший прирост производительности. Если число еще не было вычислено, то оно асинхронно вычисляется. 

P.S. Алгоритм перебора делителей потенциального простого числа не самый эффективный, однако я решил сосредоточиться на создании приложения в целом. 

