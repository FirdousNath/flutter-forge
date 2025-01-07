abstract class {{name.pascalCase()}}State {}

class {{name.pascalCase()}}Initial extends {{name.pascalCase()}}State {}
class {{name.pascalCase()}}Loading extends {{name.pascalCase()}}State {}
class {{name.pascalCase()}}Loaded extends {{name.pascalCase()}}State {}
class {{name.pascalCase()}}Error extends {{name.pascalCase()}}State {}