# LaunchScreen

Para quem estuda `UIKit` com `View Code`, uma dúvida recorrente é: como fazer uma `Launch Screen` (`SplashScreen` para os mais chegados rs)? 
Dado que o `UIKit` não possui uma `LaunchScreenViewController()`, uma das alternativas é fazer o proposto neste projeto:

1) Crie sua `ViewController`;
2) No método `viewDidAppear()`, faça a chamada para sua segunda `ViewController` - esta chamada tem que estar dentro da _closure_ de `DispatchQueue.asyncAfter {}`

O resultado:
<table>
  <tr>
     <td><img src="https://user-images.githubusercontent.com/17321857/145717330-74b97616-81fd-4ede-ae56-db45587e369c.mp4" alt="exemplo de launch screen" height="200"></td>
  </tr>
</table>
