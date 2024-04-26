# Projeto Node com Appium e Robot Framework

Este é um guia para começar um projeto Node utilizando Appium para automação de testes mobile e Robot Framework para escrever casos de teste.

## Iniciando o Projeto Node

Para iniciar um projeto Node, utilize o seguinte comando:

```bash
npm init
```

## Instalando Appium no Projeto

Para instalar o Appium no projeto, execute o seguinte comando:

```bash
npm i appium@2.0.1
```

## Instalando o Driver

Em seguida, instale o driver necessário com o seguinte comando:

```bash
npx appium driver install uiautomator2
```

## Iniciando o Servidor Appium

Para iniciar o servidor Appium, utilize o seguinte comando:

```bash
npx appium
```

## Instalando Robot Framework

Para instalar o Robot Framework, execute o seguinte comando:

```bash
pip install robotframework
```

## Instalando a Biblioteca Appium para Robot Framework

Por fim, instale a biblioteca Appium para o Robot Framework com o seguinte comando:

```bash
pip install --upgrade robotframework-appiumlibrary
```

Agora o seu ambiente está configurado e pronto para começar a desenvolver e automatizar testes com Appium e Robot Framework.

## Executando Testes

Para executar os testes, utilize o seguinte comando:

```bash
robot -d ./logs/ tests/nome_do_teste.robot