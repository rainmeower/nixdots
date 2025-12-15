(final: prev: {
  gurk-rs = prev.gurk-rs.overrideAttrs {
    prePatch = ''
      substituteInPlace src/ui/draw.rs --replace-fail \
      '.title("Channels")' \
      ""
      substituteInPlace src/ui/draw.rs --replace-fail \
      '.title("Messages")' \
      ""
      substituteInPlace src/ui/draw.rs --replace-fail \
      '=> "Input"' \
      '=> ""'
    '';
  };
})
