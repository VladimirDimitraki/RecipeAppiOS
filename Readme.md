# Приложение "Drink recipies" #

 Главный компонент ContentView который отображает список из рецептов.

```swift
struct ContentView
```

![gif](Gif/ScreenRecording2024-06-20at1.00.21PM-ezgif.com-video-to-gif-converter.gif)

## Сетевой слой приложения ##
```swift
class Network: ObservableObject
```
Сетевой слой приложения реализован с помощью класса Network, который является наблюдаемым объектом (ObservableObject). Этот класс отвечает за получение данных из сети и их декодирование в объекты Swift.

Класс Network содержит следующие элементы:

Свойство recipes типа [Recipe], которое содержит список рецептов, полученных из сети. Это свойство помечено как @Published, что означает, что оно автоматически обновляется при изменении значения.
Метод getRecipe(), который выполняет сетевой запрос к API сайта https://www.thecocktaildb.com/ для получения рецептов маргариты. Этот метод использует класс URLSession для выполнения сетевого запроса и класс JSONDecoder для декодирования полученных данных в объекты Swift.
 
![netvork lay 1](Gif/b3ed7885-a3fe-49fb-b9e6-0939745a951b.jpeg)
![netvork lay 2](Gif/36cb82ed-eaf4-4367-b297-d024e9ea61fc.jpeg)
 
