{
  pkgs,
  ...
}:{
  hardware.graphics = {
    enable = true;
    enable32Bit = true; # TODO is it just steam that needs this?
      extraPackages = with pkgs; [
      mesa
      libva
      libvdpau-va-gl
      vulkan-loader
      vulkan-validation-layers
      vulkan-extension-layer
      vulkan-tools
      mesa.opencl  # Enables Rusticl (OpenCL) support
      rocmPackages.clr.icd
      libGL
      libdrm
    ];
  };
}
