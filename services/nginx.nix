{ ... }:

{
  virtualisation.oci-containers = {
    backend = "podman";
    containers = {
      nginx = {
        podman.user = "user";
	podman.sdnotify = "conmon";
        image = "nginx:stable-alpine3.23-perl";
        autoStart = true;
        ports = [ "8080:80" ];
      };
    };
  };
}
