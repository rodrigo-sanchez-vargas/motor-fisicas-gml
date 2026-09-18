# Motor de Físicas 2D, desarrollo de juegos mediante GameMaker utilizando lenguaje GML.

Este repositorio contiene la lógica base para el control de personaje y sistema de colisiones en dos dimensiones.

## Características Principales

* **Físicas independientes:** Movimiento en ejes X e Y.
* **Colisiones Píxel a Píxel:** Detección predictiva mediante `place_meeting` y ajuste mediante bucles `while` con la función `sign()`, evitando que el personaje se entierre y se traspase en superficies.
* **Soporte de Entradas:** Configuración integrada para teclas de dirección (WASD, Flechas) y salto (`vk_space`).
* **Código Modular:** Diseñado para adaptarse fácilmente a cualquier objeto o entidad dentro del juego.

