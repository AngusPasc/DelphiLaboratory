unit Business.Context;

interface

uses
  Spring.Container;

procedure RegisterTypes(const container: TContainer);

implementation

uses
  Produto.Service, Produto.Service.Impl;

procedure RegisterTypes(const container: TContainer);
begin
  container.RegisterType<IProdutoService, TProdutoService>;

  container.Build;
end;

end.
