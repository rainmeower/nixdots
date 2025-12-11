{
  username,
  ...
}: let
  hd = "/home/${username}";
in {
  hm.home.username = username;
  hm.home.homeDirectory = hd;
  users.users.${username}.home = hd;
}
