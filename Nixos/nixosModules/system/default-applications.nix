{
  ...
}:
{
  xdg.mime = {
    enable = true;
    defaultApplications = {
      # File Explorer
      "inode/directory" = [
        "org.gnome.Nautilus.desktop"
        "org.kde.dolphin.desktop"
      ];

      "x-scheme-handler/tel" = "org.kde.plasma.browser_integration.host.desktop";

      # Default For All Files
      "text/plain" = [
        "org.kde.kate.desktop"
        "code.desktop"
        "arduino-ide.desktop"
      ];
      "application/octet-stream" = [

      ];

      # PDF / e-Books
      "application/pdf" = [
        "okularApplication_pdf.desktop"
        "firefox.desktop"
        "pdfarranger.desktop"
        "google-chrome.desktop"
        "onlyoffice-desktopeditors.desktop"
      ];
      "application/epub+zip" = [
        "okularApplication_pdf.desktop"
        "calibre-ebook-viewer.desktop"
      ];
      "application/vnd.amazon.ebook" = [
        "okularApplication_pdf.desktop"
        "calibre-ebook-viewer.desktop"
      ];

      # Documents
      "application/msword" = [
        "onlyoffice-desktopeditors.desktop"
        "writer.desktop"
      ];
      "application/vnd.openxmlformats-officedocument.wordprocessingml.document" = [
        "onlyoffice-desktopeditors.desktop"
        "writer.desktop"
      ];
      # Presentation
      "application/vnd.ms-powerpoint" = [
        "onlyoffice-desktopeditors.desktop"
        "impress.desktop"
      ];
      "application/vnd.openxmlformats-officedocument.presentationml.presentation" = [
        "onlyoffice-desktopeditors.desktop"
        "impress.desktop"
      ];
      # Spreadsheet
      "application/vnd.ms-excel" = [
        "onlyoffice-desktopeditors.desktop"
        "calc.desktop"
      ];
      "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" = [
        "onlyoffice-desktopeditors.desktop"
        "calc.desktop"
      ];
      # LibreOffice
      "application/vnd.oasis.opendocument.presentation" = "impress.desktop";
      "application/vnd.oasis.opendocument.spreadsheet" = "calc.desktop";
      "application/vnd.oasis.opendocument.text" = "writer.desktop";

      # Images
      "image/png" = [
        "org.kde.gwenview.desktop"
        "gimp.desktop"
        "org.kde.krita.desktop"
        "org.inkscape.Inkscape.desktop"
      ];
      "image/bmp" = [
        "org.kde.gwenview.desktop"
        "gimp.desktop"
        "org.kde.krita.desktop"
        "org.inkscape.Inkscape.desktop"
      ];
      "image/gif" = [
        "org.kde.gwenview.desktop"
        "gimp.desktop"
        "org.kde.krita.desktop"
        "org.inkscape.Inkscape.desktop"
      ];
      "image/jpeg" = [
        "org.kde.gwenview.desktop"
        "gimp.desktop"
        "org.kde.krita.desktop"
        "org.inkscape.Inkscape.desktop"
      ];
      "image/tiff" = [
        "org.kde.gwenview.desktop"
        "gimp.desktop"
        "org.kde.krita.desktop"
        "org.inkscape.Inkscape.desktop"
      ];
      "image/svg+xml" = [
        "org.kde.gwenview.desktop"
        "org.inkscape.Inkscape.desktop"
        "gimp.desktop"
        "org.kde.krita.desktop"
      ];
      "image/webp" = [
        "org.kde.gwenview.desktop"
        "gimp.desktop"
        "org.kde.krita.desktop"
        "org.inkscape.Inkscape.desktop"
      ];

      # Audio
      "audio/aac" = [
        "com.sayonara-player.Sayonara.desktop"
        "vlc.desktop"
        "org.kde.haruna.desktop"
        "org.kde.elisa.desktop"
        "ardour8.desktop"
      ];
      "audio/mpeg" = [
        "com.sayonara-player.Sayonara.desktop"
        "vlc.desktop"
        "org.kde.haruna.desktop"
        "org.kde.elisa.desktop"
        "ardour8.desktop"
      ];
      "audio/ogg" = [
        "com.sayonara-player.Sayonara.desktop"
        "vlc.desktop"
        "org.kde.haruna.desktop"
        "org.kde.elisa.desktop"
        "ardour8.desktop"
      ];
      "audio/opus" = [
        "com.sayonara-player.Sayonara.desktop"
        "vlc.desktop"
        "org.kde.haruna.desktop"
        "org.kde.elisa.desktop"
        "ardour8.desktop"
      ];
      "audio/waw" = [
        "com.sayonara-player.Sayonara.desktop"
        "vlc.desktop"
        "org.kde.haruna.desktop"
        "org.kde.elisa.desktop"
        "ardour8.desktop"
      ];
      "audio/webm" = [
        "com.sayonara-player.Sayonara.desktop"
        "vlc.desktop"
        "org.kde.haruna.desktop"
        "org.kde.elisa.desktop"
        "ardour8.desktop"
      ];

      # Video
      "video/x-msvideo" = [
        "org.kde.haruna.desktop"
        "org.kde.gwenview.desktop"
        "vlc.desktop"
        "org.kde.kdenlive.desktop"
      ];
      "video/webm" = [
        "org.kde.haruna.desktop"
        "org.kde.gwenview.desktop"
        "vlc.desktop"
        "org.kde.kdenlive.desktop"
      ];
      "video/mpeg" = [
        "org.kde.haruna.desktop"
        "org.kde.gwenview.desktop"
        "vlc.desktop"
        "org.kde.kdenlive.desktop"
      ];
      "video/ogg" = [
        "org.kde.haruna.desktop"
        "org.kde.gwenview.desktop"
        "vlc.desktop"
        "org.kde.kdenlive.desktop"
      ];
      "video/mp2t" = [
        "org.kde.haruna.desktop"
        "org.kde.gwenview.desktop"
        "vlc.desktop"
        "org.kde.kdenlive.desktop"
      ];

      # Archives
      "application/x-bzip" = [
        "org.kde.ark.desktop"
        "peazip.desktop"
      ];
      "application/x-bzip2" = [
        "org.kde.ark.desktop"
        "peazip.desktop"
      ];
      "application/x-freearc" = [
        "org.kde.ark.desktop"
        "peazip.desktop"
      ];
      "application/gzip" = [
        "org.kde.ark.desktop"
        "peazip.desktop"
      ];
      "application/vnd.rar" = [
        "org.kde.ark.desktop"
        "peazip.desktop"
      ];
      "application/x-tar" = [
        "org.kde.ark.desktop"
        "peazip.desktop"
      ];
      "application/zip" = [
        "org.kde.ark.desktop"
        "peazip.desktop"
      ];
      "application/x-7z-compressed" = [
        "org.kde.ark.desktop"
        "peazip.desktop"
      ];

    };

  };
}
