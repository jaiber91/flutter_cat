# flutter_cat
App para listar gatos


## Estructura de carpetas

```bash
.
└── lib/
    ├── main.dart
    └── src/
        ├── adapters/
        │   └── lib/
        │       ├── shared/
        │       │   └── http
        │       └── cat_adapter/
        │           ├── adapter
        │           ├── datasource
        │           └── mappers
        |    
        ├── business/
        │   ├── domain/
        │   │   └── lib/
        │   │       └── cat_doamin
        │   ├── ports/
        │   │   ├── in_ports/
        │   │   │   └── lib/
        │   │   │       └── cats_in_ports
        │   │   └── out_ports/
        │   │       └── lib/
        │   │           └── cats_out_ports
        │   └── use_cases/
        │       └── lib/
        │           └── cats_use_cases
        |
        ├── configs/
        │   ├── getIt
        │   └── router_config
        |
        ├── di/
        │   └── lib/
        │       ├── adapters_di.dart
        │       ├── business_di.dart
        │       └── setup_di.dart
        |
        └── presentation/
            └── lib/
                ├── modules/
                │   └── cats_module/
                │       ├── pages
                │       ├── widgets
                │       ├── package.dart
                │       └── router.dart
                ├── providers
                └── shared/
                    └── utils

```

## Paso para ejecutar el proyecto
 * Clonar el repositorio
 * Abrir el proyecto desde el editor de código
 * Abrir la terminal y ubicarse en la raiz del proyecto
 * Ejecutar el **flutter pub get** de los yaml con el siguiente comando:
```shell
 find . -name "pubspec.yaml" -execdir flutter pub get \;
```
:warning: **Advertencia**: ⚠️
## ¿Que se debe hacer si el comando anterior no funciona?
Debes ingresar a cada capa y ejecutar el **flutter pub get** en cada pubspec.yaml
 ### A continuación te muestro la ruta a dónde debes ir
 * flutter_cat/pubspeck.yaml
 * flutter_cat/lib/src/adapters/pubspeck.yaml
 * flutter_cat/lib/src/business/domain/pubspeck.yaml
 * flutter_cat/lib/src/business/ports/in_ports/pubspeck.yaml
 * flutter_cat/lib/src/business/ports/out_ports/pubspeck.yaml
 * flutter_cat/lib/src/business/use_cases/pubspeck.yaml

## Serilización de modelos
Es necesario serializar el modelo del reponse en la capa  **ADAPTERS**.
Para ello, se debe navegar a la siguiente ruta:
```shell
 flutter_cat/lib/src/adapters/pubspeck.yaml
```

Una vez se está ubicado en la capa de **ADAPTERS** se debe ejecutar el 
comando el siguiente comando para serilizar 
```shell
flutter pub run build_runner build --delete-conflicting-outputs
```

