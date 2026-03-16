{ ... }:

{
  virtualisation.oci-containers = {
    backend = "podman";
    containers = {
      nginx = {
        podman.user = "user";
        image = "nginx:stable-alpine3.23-perl";
        autoStart = true;
        ports = [ "8080:80" ];
      };
    };
  };
}
