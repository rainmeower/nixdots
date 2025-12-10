# TODO
{
  if_theme,
  p,
  ...
}: if_theme "kanso" {
  home.file.".config/btop/themes/btop.theme".text = /* ini */ ''

    # Main background, empty for terminal default, need to be empty if you want transparent background
    theme[main_bg]=""

    # Main text color
    theme[main_fg]="${p.fg}"

    # Title color for boxes
    theme[title]="${p.blue}"

    # Highlight color for keyboard shortcuts
    theme[hi_fg]="${p.green}"

    # Background color of selected item in processes box
    theme[selected_bg]="${p.blue}"

    # Foreground color of selected item in processes box
    theme[selected_fg]="${p.bg}"

    # Color of inactive/disabled text
    theme[inactive_fg]="${p.grey}"

    # Color of text appearing on top of graphs, i.e uptime and current network graph scaling
    theme[graph_text]="${p.fg}"

    # Background color of the percentage meters
    theme[meter_bg]="${p.button}"

    # Misc colors for processes box including mini cpu graphs, details memory graph and details status text
    theme[proc_misc]="${p.blue}"

    # Cpu box outline color
    theme[cpu_box]="${p.blue}"

    # Memory/disks box outline color
    theme[mem_box]="${p.blue}"

    # Net up/down box outline color
    theme[net_box]="${p.blue}"

    # Processes box outline color
    theme[proc_box]="${p.blue}"

    # Box divider line and small boxes line color
    theme[div_line]=""

    # Temperature graph colors
    theme[temp_start]="${p.violet}"
    theme[temp_mid]="#b37c9b"
    theme[temp_end]="${p.red}"

    # CPU graph colors
    theme[cpu_start]="${p.blue}"
    theme[cpu_mid]="#8a98b0"
    theme[cpu_end]="${p.violet}"

    # Mem/Disk free meter
    theme[free_start]="${p.violet}"
    theme[free_mid]="${p.violet}"
    theme[free_end]="${p.violet}"

    # Mem/Disk cached meter
    theme[cached_start]="${p.aqua}"
    theme[cached_mid]="${p.aqua}"
    theme[cached_end]="${p.aqua}"

    # Mem/Disk available meter
    theme[available_start]="${p.yellow}"
    theme[available_mid]="${p.yellow}"
    theme[available_end]="${p.yellow}"

    # Mem/Disk used meter
    theme[used_start]="${p.green}"
    theme[used_mid]="${p.green}"
    theme[used_end]="${p.green}"

    # Download graph colors
    theme[download_start]="${p.blue}"
    theme[download_mid]="#8a98b0"
    theme[download_end]="${p.violet}"

    # Upload graph colors
    theme[upload_start]="${p.blue}"
    theme[upload_mid]="#8a98b0"
    theme[upload_end]="${p.violet}"

    # Process box color gradient for threads, mem and cpu usage
    theme[process_start]="${p.blue}"
    theme[process_mid]="#74818b"
    theme[process_end]="${p.gray5}"

  '';
}
