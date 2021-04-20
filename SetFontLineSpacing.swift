protocol SetFontLineSpacing {
    func setLineSpacing(
        attributedText: inout NSAttributedString?,
        lineSpacing: CGFloat,
        lineHeightMultiple: CGFloat,
        font: UIFont,
        text: String
    )
}

extension SetFontLineSpacing {
    func setLineSpacing(
        attributedText: inout NSAttributedString?,
        lineSpacing: CGFloat = 0.0,
        lineHeightMultiple: CGFloat = 0.0,
        font: UIFont,
        text: String
    ) {
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = lineSpacing
        paragraphStyle.lineHeightMultiple = lineHeightMultiple

        let attributedString: NSMutableAttributedString
        if let labelattributedText = attributedText {
            attributedString = NSMutableAttributedString(attributedString: labelattributedText)
        } else {
            attributedString = NSMutableAttributedString(string: text)
        }
        // Line spacing attribute
        let range = NSRange(location: 0, length: attributedString.length)
        attributedString.addAttribute(NSAttributedString.Key.paragraphStyle, value: paragraphStyle, range: range)
        attributedString.addAttribute(NSAttributedString.Key.font, value: font, range: range)
        attributedText = attributedString
    }
}
