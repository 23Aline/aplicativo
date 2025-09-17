# 🚀 FastLocation

Este é o projeto do aplicativo **FastLocation**, desenvolvido em Flutter.  
O aplicativo permite consultar endereços por **CEP** e salvar um histórico de pesquisas, além de traçar rotas para o endereço consultado.  

---

## 🛠 Tecnologias Utilizadas
- **Flutter**: Framework de desenvolvimento de aplicativos multiplataforma.  
- **MobX**: Gerenciamento de estado reativo.  
- **Dio**: Cliente HTTP para comunicação com APIs externas.  
- **Hive**: Banco de dados local para armazenamento do histórico.  
- **Geocoding**: Converte endereços em coordenadas geográficas.  
- **Map Launcher**: Abre aplicativos de mapas para traçar rotas.  

---

## 📋 Pré-requisitos
- **Git** – Para clonar o repositório.
- **Flutter** – Com o ambiente de desenvolvimento configurado.  
- **Emulador Android ou iPhone** – Ou um dispositivo físico conectado.

---

## 📥 Clonar o Repositório

Abra o terminal em seu computador e use o comando:

```bash
git clone https://github.com/23Aline/aplicativo.git
```

Em seguida:

```bash
cd fastlocation
```

---

## 📦 Instalar as Dependências

O projeto utiliza várias bibliotecas. Para instalá-las, rode:

```bash
flutter pub get
```

---

## ⚡ Gerar os Arquivos MobX

O projeto usa o MobX para gerenciar o estado.  
É necessário gerar alguns arquivos para que ele funcione corretamente:

```bash
flutter pub run build_runner build
```

---

## ▶️ Executar o Aplicativo

1. Inicie o emulador ou conecte seu dispositivo físico.  
   Para ver os emuladores disponíveis:

```bash
flutter emulators
```

2. Para iniciar um emulador específico:

```bash
flutter emulators --launch <id_do_emulador>
```

3. Execute o aplicativo:

```bash
flutter run
```

O aplicativo será compilado e instalado. 🚀
