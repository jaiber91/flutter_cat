# flutter_cat

App para listar gatos

## Tecnologías y/o paquetes del proyecto

- Flutter: 3.22.0
- get_it: 8.0.3
- dio: 5.8.0
- go_router: 14.8.1
- flutter_riverpod: 2.6.1
- url_launcher: 6.3.1
- cupertino_icons: 1.0.8
- freezed: 2.4.7
- json_serializable: ^6.8.0
- build_runner: ^2.4.9

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

- Clonar el repositorio
- Abrir el proyecto desde el editor de código
- Abrir la terminal y ubicarse en la raiz del proyecto
- Ejecutar el **flutter pub get** de los yaml con el siguiente comando:

```shell
 find . -name "pubspec.yaml" -execdir flutter pub get \;
```

## ⚠️ ¿Que se debe hacer si el comando anterior no funciona?

Debes ingresar a cada capa y ejecutar el **flutter pub get** en cada pubspec.yaml

### A continuación te muestro la ruta a dónde debes ir

- flutter_cat/pubspeck.yaml
- flutter_cat/lib/src/adapters/pubspeck.yaml
- flutter_cat/lib/src/business/domain/pubspeck.yaml
- flutter_cat/lib/src/business/ports/in_ports/pubspeck.yaml
- flutter_cat/lib/src/business/ports/out_ports/pubspeck.yaml
- flutter_cat/lib/src/business/use_cases/pubspeck.yaml

## Serilización de modelos

Es necesario serializar el modelo del reponse en la capa **ADAPTERS**.
Para ello, se debe navegar a la siguiente ruta:

```shell
 flutter_cat/lib/src/adapters/pubspeck.yaml
```

Una vez se está ubicado en la capa de **ADAPTERS** se debe ejecutar el
comando el siguiente comando para serilizar

```shell
flutter pub run build_runner build --delete-conflicting-outputs
```

## Manejo de estado de la aplicación.

El paquete para manejar el estaso es **Riverpod**, la forma en como se propone usar es como un "puente"
entre los el puerto de entrada y la capa de presentción, ejemplo:

```shell
final getCatProvider = FutureProvider<List<CatDomain>>((ref) async {
  final getListCast = getIt<GetCatsInPort>();
  return await getListCast.getCat();
});
```

si se necesita guardar un dato de forma global se recomienda tener un porvider para ello de la siguiente forma

```shell
final selectedCatProvider = StateProvider<CatDomain?>((ref) => null);
```

y en la capa de presentación dichos providers se debe usar de acuerdo a la necesidad particular, ejemplo:

```shell
        CatCard(
            imageUrl: cat.imageUrl ?? '',
            breedName: cat.name,
            country: cat.origin,
            intelligence: cat.intelligence,
            onTap: () {
              ref.read(selectedCatProvider.notifier).state = cat;
              context.go(RouteNames.detailPage.path);
            },
          );
```
## Manejo de las rutas
El manejo de las rutas esta gestionado con el paquete **GoRouter**
y se hace bajo la idea de tener en cada modulo un archivo de rutas y dicho **"router_module"** se debe llamar en el archivo de rutas de la app.

### Configurar la ruta de una vista

en el archivo **router_names** se debe crear el nombre y el path de la ruta, de la siguiente forma:

```shell
    static RouterNameModel get detailPage => _rute(
        '/detail_page',
        '/detail_page',
      );
```
Una vez se tiene el paso anterior completado, se debe ir al modulo creado en la capa de **presentación** y dentro del archivo **router.dart** se debe agregar un metodo estaticom, en el cual se llama el path del ruta,
el widget que va a estar asociado a dicha ruta y si tiene rutas anidades se agregan en un array. Ejmplo:

```shell
class RouterHomeModule {
  static get homePage => GoRouteApp(
        path: RouteNames.main.path,
        builder: (context, state) => const HomePage(),
        routes: [
          detailPage,
        ],
      );
}
```

### Navegación desde los componentes
Desde los componentes, por ejemplo un botón, se necesita navegar hacia otra vista se deben hacer los pasos anteriores y desde el componente solo se llama el nombre de la ruta hacia dónde se quiere navegar, ejemplo:
```shell
onTap: () {context.go(RouteNames.detailPage.path)},
```