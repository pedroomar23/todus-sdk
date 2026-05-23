<p align="center"> 
    <img src="https://github.com/pedroomar23/todus-sdk/blob/main/Resources/Icon-iOS-Default-1024x1024%401xClaro.png" alt="https://web.todus.cu" width="250" height="250">
    <h1 align="center">
        toDus
    </h1>
</p>
<p align="center">
     <a href=""<img src="https://img.shields.io/badge/release 1.0.0-blue.svg" alt="release 1.0.0" /></a>
    <img src="https://img.shields.io/badge/Swift-6.3-orange.svg" alt="Swift 6.3" />
    <a href="https://web.todus.cu"><img src="https://img.shields.io/badge/documentation-web-blue.svg" alt="Documentation" /></a>
    <a href="[https://github.com/pedroomar23/todus-sdk/blob/main/License.md](https://github.com/pedroomar23/todus-sdk/blob/main/License.md)"><img src="https://img.shields.io/github/license/danielsaidi/SwiftUIKit" alt="MIT License" /></a>
</p>

## 📱 Descripción
`toDus` es un sdk escrito en Swift para empezar a crear la app de toDus para iOS.
## 👨‍💻 Instalación
```swift
dependencies: [
    .package(url: "https://github.com/pedroomar23/todus-sdk", from: "1.0.0")
]
```
## 🌐 Uso 
```swift
import SwiftUI 
import toDus 
    
struct ChatView: View {
    @StateObject private var chatRequest = ChatRequest()
        
    var body: some View {
        Text("Hello World!")
    }
  }
}
```
## ⚡️ Features 
### 📱 Chats
- [ ] Lista de Chats
- [ ] Eliminar Chats 
### 📱 Messages
- [ ] Enviar y Recibir Mensajes
- [ ] Eliminar mensaje para mí
- [ ] Editar mensajes
- [ ] Copiar mensajes
### 📱 Grupos 
- [ ] Lista de Grupos 
- [ ] Crear grupos 
- [ ] Eliminar grupos 
### 📱 Canales
- [ ] Lista de Canales 
- [ ] Crear canales
- [ ] Eliminar canales
### 📱 Estados
- [ ] Crear un estado por 24h 
- [ ] Emojis 

## ✅ Ejemplos 
Para ver ejemplos de como usar el sdk puedes acceder aquí [examples](https://github.com/pedroomar/todus-sdk/blob/main/Examples/examples.swift).
## 😃 Consideraciones
`todus` ya cuenta con el ViewModel dentro del sdk por lo que no es necesario hacerlo dentro del proyecto. Este sdk esta hecho para crear las bases principales de toDus, es decir chats, grupos, canales, estados, entre otros. Otros ViewModels si pueden ser creados dentro del proyecto. A mi consideración esto ayudaría a que el desarrollo de las bases principales de la app se desarrollen más rapido ya que el sdk se encarga de ello.
## 🤝 Contribuciones
Puedes contribuir siendo o no desarrollador siguiendo los pasos creados en [contribuciones](https://github.com/pedroomar23/blob/main/Contributing.md)
## 🔓 License
Este sdk está creado bajo la [Licencia MIT](https://github.com/pedroomar23/todus-sdk/blob/main/License.md)
## 👨‍💻 Developed by 
- @pedroomar23
- Email: pocl9812@gmail.com
- Telegram: https://t.me/pedroomar23 
- Sitio Web: https://pedroomar23.github.io



