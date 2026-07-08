{ lib, pkgs, ... }:
{
  postgres = {
    postgres.package = pkgs.postgresql;
    imports = [
      (lib.modules.importApply ./postgres.nix { })
    ];
  };
  redis = {
    redis.package = pkgs.redis;
    imports = [
      (lib.modules.importApply ./redis.nix { })
    ];
  };
}
