# _Life Cycle of a StatefulWidget_

## O que é o ciclo de vida de um _StatefulWidget_?

É a sequência de etapas pelas quais um widget com estado (_StatefulWidget_) passa: desde a criação, atualização e destruição.
Este exemplo de aplicação mostra o ciclo de vida do _StatefulWidget_, você o rodará e ao interagir poderá ver no log os passos do ciclo de vida.

| Ordem | Método                    | Quando acontece?                                             |
| ----- | ------------------------- | ------------------------------------------------------------ |
| 1️⃣   | `createState()`           | Quando o widget é criado (chama a classe `State`).           |
| 2️⃣   | `initState()`             | Uma vez só, na inicialização — ótimo p/ animações, APIs.     |
| 3️⃣   | `didChangeDependencies()` | Sempre que algo no `context` muda, ex: `InheritedWidget`.    |
| 4️⃣   | `build()`                 | Sempre que o estado muda (chamou `setState()` por ex).       |
| 5️⃣   | `didUpdateWidget()`       | Quando o widget pai é recriado e passa novos parâmetros.     |
| 6️⃣   | `dispose()`               | Quando o widget sai da tela — ótimo p/ limpar controladores. |
