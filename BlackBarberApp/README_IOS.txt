BlackBarber iOS - como compilar (Codemagic, sem Mac)
====================================================

O QUE É: app WebView que abre o painel/site da barbearia (igual ao APK Android).

1) SUBA NO GITHUB
   - Crie um repositório e envie esta pasta BlackBarberApp inteira
     (BlackBarberApp.xcodeproj, BlackBarberApp/, codemagic.yaml).

2) TROQUE A URL
   - Arquivo: BlackBarberApp/ViewController.swift, constante HOME.
   - Para teste fora do seu Wi-Fi use a URL pública (https), ex. Render.
   - Em Wi-Fi local funciona com http (liberado no Info.plist).

3) CODMAGIC
   - Crie conta em codemagic.io (login com GitHub) > Add application > iOS > selecione o repo.
   - O arquivo codemagic.yaml já é detectado (workflow "BlackBarber iOS TestFlight").

4) ASSINATURA (obrigatório p/ instalar no iPhone)
   - Precisa de conta Apple Developer paga (99 USD/ano).
   - Codemagic > sua Team > iOS code signing: suba o certificado .p12
     + provisioning profiles (App Store ou Ad Hoc com o UDID do iPhone do seu amigo),
     OU use a integração "Apple Developer Portal".
   - Troque o e-mail em codemagic.yaml (publishing > email).

5) BUILD
   - Start new build > selecione o workflow > aguarde o .ipa em Artifacts.
   - Instale via TestFlight (App Store Connect) ou link Ad Hoc.

OBS: window.print() não funciona dentro de WebView no iOS; o PDF sai pelo
Safari (Compartilhar > Imprimir) ou pelo app instalado via Tela de Início.
