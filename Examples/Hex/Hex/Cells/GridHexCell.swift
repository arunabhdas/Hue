import UIKit
import Sugar
import Spots
import Hue

class GridHexCell: UICollectionViewCell, Itemble {

  var size = CGSize(width: 125, height: 160)

  lazy var label: UILabel = { [unowned self] in
    let label = UILabel(frame: CGRectZero)
    label.font = UIFont.boldSystemFontOfSize(11)
    label.numberOfLines = 4
    label.textAlignment = .Center
    label.textColor = UIColor.whiteColor()

    return label
    }()

  override init(frame: CGRect) {
    super.init(frame: frame)
    contentView.addSubview(label)
  }

  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  func configure(inout item: ListItem) {
    backgroundColor = UIColor.hex(item.title)

    label.attributedText = NSAttributedString(string: item.title,
      attributes: nil)
    label.frame.size.height = 44
    label.frame.size.width = contentView.frame.size.width - 7.5

    item.size.height = 155
  }
}
