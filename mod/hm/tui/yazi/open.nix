{
  programs.yazi.settings = {
    open = {
      rules = [
      {
        name = "*.gif";
        use = [ "image" "play" "reveal" ];
      }

      {
        name = "*.png";
        use = [ "image" "krita" "reveal" ];
      }

      {
        name = "*.jpg";
        use = [ "image" "krita" "reveal" ];
      }

      {
        name = "*.jpeg";
        use = [ "image" "krita" "reveal" ];
      }

      {
        name = "*.svg";
        use = [ "image" "inkscape" "edit" "reveal" ];
      }

      {
        name = "*.kra*";
        use = [ "krita" "reveal" ];
      }

      # directory
      {
        name = "*/";
        use = [];
      }

      {
        mime = "text/*";
        use = [ "edit" "reveal" ];
      }

      {
        mime = "image/*";
        use = [ "open" "reveal" ];
      }

      # media
      {
        mime = "{audio; ideo}/*";
        use = [ "play" "reveal" ];
      }

      # archive
      {
        mime = "application/{zip,rar,7z*,tar,gzip,xz,zstd,bzip*,lzma,compress,archive,cpio,arj,xar,ms-cab*}";
        use = [ "extract" "reveal" ];
      }

      # json
      {
        mime = "application/{json, djson}";
        use = [ "edit" "reveal" ];
      }

      {
        mime = "*/javascript";
        use = [ "edit" "reveal" ];
      }

      {
        name = "*.sc";
        use = [ "sc" "nvim" ];
      }
      {
        name = "*.csv";
        use = [ "sc" "nvim" ];
      }

      # empty file
      {
        mime = "inode/empty";
        use = [ "edit" "reveal" ];
      }

      # fallback
      {
        name = "*";
        use = [ "open" "reveal" ];
      }
      ];
    };
  };
}
