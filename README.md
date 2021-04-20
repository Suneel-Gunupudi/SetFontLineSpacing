# SetFontLineSpacing

SetFontLineSpacing is use for extend your attributedText for UILabel, UITextField, UITextView to SetFontLineSpacing.

Configure the SetFontLineSpacing is so easy

extension UITextView: SetFontLineSpacing {

}

Ex:
let textView = UITextView()
        textView.setLineSpacing(attributedText: &textView.attributedText, lineSpacing: 1.0, lineHeightMultiple: 1.28, font: UIFont.systemFont(ofSize: 18), text: textView.text)
