### 概要
JavaフレームワークStruts1.3において<logic:iterate>タグを利用しての入力フォームの動的な作成のデモ

### フォルダ構成
.
├── WebContent
│   ├── META-INF
│   │   └── MANIFEST.MF
│   ├── WEB-INF
│   │   ├── classes
│   │   │   ├── MessageResources.properties
│   │   │   └── filters
│   │   │       └── SetCharacterEncodingFilter.class
│   │   ├── jsp
│   │   │   └── ★DynamicInputResult.jsp
│   │   ├── lib
│   │   │   ├── antlr-2.7.2.jar
│   │   │   ├── commons-beanutils-1.8.0.jar
│   │   │   ├── commons-chain-1.2.jar
│   │   │   ├── commons-digester-1.8.jar
│   │   │   ├── commons-logging-1.0.4.jar
│   │   │   ├── commons-validator-1.3.1.jar
│   │   │   ├── oro-2.0.8.jar
│   │   │   ├── struts-core-1.3.10.jar
│   │   │   ├── struts-taglib-1.3.10.jar
│   │   │   └── struts-tiles-1.3.10.jar
│   │   ├── src
│   │   │   ├── README.txt
│   │   │   ├── build.xml
│   │   │   └── java
│   │   │       └── MessageResources.properties
│   │   ├── struts-config.xml
│   │   ├── validation.xml
│   │   └── web.xml
│   ├── css
│   │   ├── style.css
│   │   └── style.css.map
│   ├── favicon.ico
│   ├── img
│   │   └── bookshelf.jpg
│   ├── ★index.jsp
│   └── scss
│       ├── _elastic.scss
│       ├── destyle.css
│       └── style.scss
├── build
│   └── classes
│       └── someapp
│           ├── SomeAction.class
│           ├── SomeForm.class
│           └── SomeObject.class
└── src
    └── someapp
        ├── ★SomeAction.java
        ├── ★SomeForm.java
        └── ★SomeObject.java
