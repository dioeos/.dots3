pragma Singleton
import QtQuick

Item {
  // ==========
  // SPECIAL FONTS
  // ==========
  FontLoader {
    id: ndot57
    source: "./assets/Ndot57-Regular.otf"
  }
  property string nothingFontFamily: ndot57.name

  property int fontSmall: 12
  property int fontNormal: 16
  property int fontLarge: 24
}
