defmodule HelloOperator.MetadataInjector do

  def add_owner_references(resource, owner) do
    put_in(resource, ["metadata", "ownerReferences"], [owner_reference(owner)])
  end

  def owner_reference(resource) do
    %{
      "apiVersion" => get_in(resource, ["apiVersion"]),
      "kind"       => get_in(resource, ["kind"]),
      "name"       => get_in(resource, ["metadata", "name"]),
      "uid"        => get_in(resource, ["metadata", "uid"]),
      # foreground deletion => true
      # background deletion => false
      "blockOwnerDeletion" => false,
      # seems to work without too, but internet says we should add it ...
      "controller" => true,
    }
  end

end
