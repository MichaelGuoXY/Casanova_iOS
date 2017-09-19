//
//  Constants.swift
//  Casanova
//
//  Created by Xiaoyu Guo on 8/6/17.
//  Copyright © 2017 Xiaoyu Guo. All rights reserved.
//

import Foundation
import UIKit

struct Errors {
    public static let usernameNotValid = "At least provide a username, ok?"
    public static let emailNotValid = "Come on, your email is not valid"
    public static let passwordNotValid = "What's your password, bro?"
    public static let usernameOrEmailNotValid = "Dude, please enter your username or email!"
}

struct Tags {
    struct HomeVC {
        static let homeTableViewTag = 100
        static let tpoTableViewTag = 101
        static let levelTableViewTag = 102
        static let catTableViewTag = 103
    }
    struct SavedVC {
        
    }
}

struct ReuseIDs {
    struct HomeVC {
        struct View {
            static let topicBriefTableViewCell = "TopicBriefTableViewCell"
            static let loadMoreTableViewCell = "LoadMoreTableViewCell"
        }
        struct FilterView {
            static let filterTableViewCell = "FilterTableViewCell"
        }
    }
    struct SavedVC {
        struct View {
            static let topicBriefAppendTableViewCell = "TopicBriefAppendTableViewCell"
            static let separatorLineTableViewCell = "SeparatorLineTableViewCell"
        }
    }
    struct TopicDetailVC {
        struct View {
            static let answerDefaultCell = "AnswerDefaultCell"
            static let answerWithoutTextCell = "AnswerWithoutTextCell"
            static let answerWithoutAudioCell = "AnswerWithoutAudioCell"
        }
    }
    struct AnswerDetailVC {
        static let commentTableViewCell = "CommentDefaultCell"
    }
    struct ProfileVC {
        static let profileTableViewCell = "ProfileTableViewCell"
    }
}

struct Duration {
    struct HomeVC {
        struct FilterView {
            static let fadeInOrOutDuration: Double = 0.2
        }
    }
    struct TopicDetailVC {
        struct View {
            static let fadeInOrOutDuration: Double = 0.2
            static let rewardFadeInDuration: Double = 1
            static let rewardFadeOutDuration: Double = 2
        }
    }
    struct AnswerDetailVC {
        static let fadeInOrOutDuration: Double = 0.3
    }
}

struct AttrString {
    static func paragraphStyle(lineSpacing: CGFloat) -> NSParagraphStyle {
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = lineSpacing
        return paragraphStyle
    }
    
    static func paragraphStyle(alignment: NSTextAlignment) -> NSParagraphStyle {
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = alignment
        return paragraphStyle
    }
    
    static func topicAttrString(_ string: String) -> NSAttributedString {
        let attrString = NSMutableAttributedString(string: string)
        attrString.addAttribute(NSParagraphStyleAttributeName, value: paragraphStyle(lineSpacing: 0), range: NSMakeRange(0, attrString.length))
        attrString.addAttribute(NSFontAttributeName, value: UIFont(name: "Muli-Light", size: 17)!, range: NSMakeRange(0, attrString.length))
        attrString.addAttribute(NSKernAttributeName, value: -0.2, range: NSMakeRange(0, attrString.length))
        attrString.addAttribute(NSForegroundColorAttributeName, value: UIColor.bodyTextColor, range: NSMakeRange(0, attrString.length))
        return attrString
    }
    
    static func smallTopicAttrString(_ string: String) -> NSAttributedString {
        let attrString = NSMutableAttributedString(string: string)
        attrString.addAttribute(NSParagraphStyleAttributeName, value: paragraphStyle(lineSpacing: 0), range: NSMakeRange(0, attrString.length))
        attrString.addAttribute(NSFontAttributeName, value: UIFont(name: "Muli-Light", size: 14)!, range: NSMakeRange(0, attrString.length))
        attrString.addAttribute(NSKernAttributeName, value: -0.2, range: NSMakeRange(0, attrString.length))
        attrString.addAttribute(NSForegroundColorAttributeName, value: UIColor.bodyTextColor, range: NSMakeRange(0, attrString.length))
        return attrString
    }
    
    static func answerAttrString(_ string: String) -> NSAttributedString {
        let attrString = NSMutableAttributedString(string: string)
        attrString.addAttribute(NSParagraphStyleAttributeName, value: paragraphStyle(lineSpacing: 4), range: NSMakeRange(0, attrString.length))
        attrString.addAttribute(NSFontAttributeName, value: UIFont(name: "MerriweatherLight", size: 16)!, range: NSMakeRange(0, attrString.length))
        attrString.addAttribute(NSKernAttributeName, value: -0.4, range: NSMakeRange(0, attrString.length))
        attrString.addAttribute(NSForegroundColorAttributeName, value: UIColor.bodyTextColor, range: NSMakeRange(0, attrString.length))
        return attrString
    }
    
    static func titleAttrString(_ string: String, textColor: UIColor) -> NSAttributedString {
        let attrString = NSMutableAttributedString(string: string)
        attrString.addAttribute(NSParagraphStyleAttributeName, value: paragraphStyle(alignment: .center), range: NSMakeRange(0, attrString.length))
        attrString.addAttribute(NSFontAttributeName, value: UIFont(name: "PingFangSC-Regular", size: 17)!, range: NSMakeRange(0, attrString.length))
        attrString.addAttribute(NSForegroundColorAttributeName, value: textColor, range: NSMakeRange(0, attrString.length))
        return attrString
    }
    
    static func normalLabelAttrString(_ string: String) -> NSAttributedString {
        let attrString = NSMutableAttributedString(string: string)
        attrString.addAttribute(NSFontAttributeName, value: UIFont(name: "PingFangSC-Regular", size: 14)!, range: NSMakeRange(0, attrString.length))
        attrString.addAttribute(NSForegroundColorAttributeName, value: UIColor.nonBodyTextColor, range: NSMakeRange(0, attrString.length))
        return attrString
    }
    
    static func smallLabelAttrString(_ string: String) -> NSAttributedString {
        let attrString = NSMutableAttributedString(string: string)
        attrString.addAttribute(NSParagraphStyleAttributeName, value: paragraphStyle(alignment: .center), range: NSMakeRange(0, attrString.length))
        attrString.addAttribute(NSFontAttributeName, value: UIFont(name: "PingFangSC-Regular", size: 12)!, range: NSMakeRange(0, attrString.length))
        attrString.addAttribute(NSForegroundColorAttributeName, value: UIColor.nonBodyTextColor, range: NSMakeRange(0, attrString.length))
        return attrString
    }
}

