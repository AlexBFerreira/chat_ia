# chat_ia

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

Esta será la documentación base del proyecto y como funciona la estructura del mismo

Lo primero es entender que funciona con el gestor de estados Riverpod y de clean code que representa una recompilación de buenas prácticas y patrón de diseño

Las carpeta principal es /lib la cual contiene la estructura del proyecto y la estructura con su explicación superficial seria

 -- /lib -> carpeta principal donde modificamos el código

    -- domain -> Es donde se encuentra la lógica de negocio pero no se debe confundir con la logica de la vista
        -- use_cases -> Es donde crean la lógica de negocio de los posibles casos de uso
        -- entities -> Es donde se estructura la lógica, puede interpretarse como el intermediario entre la data y la presentación

    -- data -> Esta carpeta engloba todos los posibles proveedores de data cruda
        -- datasources -> Engloba tipos de origenes de data
            -- remote -> Esto contiene toda la data que proviene fuera de la aplicación (servicios, apis y etc...)
            -- local -> Esto contiene toda la data que proviene dentro de la aplicación (cache, DB local y etc...)
            
        -- repositories -> Es quien gestiona la data que recibe datasource
        -- models -> Son los modelos para gestionar la estructura/transformacion de la data cruda

    -- presentation -> esto engloba todo lo que representa visualmente la aplicación (vistas, pantallas, elementos, etc...)
        -- pages -> la vista de cada pantalla
        -- widgets -> elementos independiente y reutilizables que se utilizan en la vista
