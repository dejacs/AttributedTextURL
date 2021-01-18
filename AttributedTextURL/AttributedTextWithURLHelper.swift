//
//  AttributedTextWithURLHelper.swift
//  AttributedTextURL
//
//  Created by Jade Silveira on 17/01/21.
//

import Foundation
import UIKit

public enum AttributedTextWithURLHelper {
    public static func getAttributedStringWithSingleURL(
        text: String,
        styleAttributes: [NSAttributedString.Key: Any],
        link: LinkInfo
    ) -> NSMutableAttributedString {
        let attributedText = NSMutableAttributedString(string: text, attributes: styleAttributes)
        let linkRange = NSString(string: text).range(of: link.text)
        attributedText.addAttribute(.link, value: link.urlAddress, range: linkRange)
        return attributedText
    }
    
    public static func getAttributedStringWithMultipleURLs(
        text: String,
        styleAttributes: [NSAttributedString.Key: Any],
        multipleLinks: [LinkInfo]
    ) -> NSMutableAttributedString {
        let attributedText = NSMutableAttributedString(string: text, attributes: styleAttributes)
        for link in multipleLinks {
            let linkRange = NSString(string: text).range(of: link.text)
            attributedText.addAttribute(.link, value: link.urlAddress, range: linkRange)
        }
        return attributedText
    }
}
