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

struct Colors {
    struct LoginVC {
        struct Buttons {
            static func loginButtonColor() -> UIColor { return UIColor(red: 75.0 / 255.0, green: 205.0 / 255.0, blue: 237.0 / 255.0, alpha: 1.0) }
            static func signupButtonColor() -> UIColor { return UIColor(red: 75.0 / 255.0, green: 205.0 / 255.0, blue: 237.0 / 255.0, alpha: 1.0) }
        }
        struct Labels {
            static func errorLabelTextColor() -> UIColor { return UIColor(red: 254 / 255.0, green: 40 / 255.0, blue: 81 / 255.0, alpha: 0.5) }
        }
    }
    struct HomeVC {
        struct View {
            static func homeTableViewBackgroundColor() -> UIColor { return UIColor(red: 248 / 255.0, green: 250 / 255.0, blue: 252 / 255.0, alpha: 1) }
            static func topicBriefTableViewCellShadowColor() -> UIColor { return UIColor(red: 217/255.0, green: 225/255.0, blue: 239/255.0, alpha: 1) }
        }
        struct FilterView {
            static func filterLabelTextColor() -> UIColor { return UIColor(red: 75.0 / 255.0, green: 205.0 / 255.0, blue: 237.0 / 255.0, alpha: 1.0) }
            static func filterSelectionTextColor() -> UIColor { return UIColor(red: 74.0 / 255.0, green: 74.0 / 255.0, blue: 74.0 / 255.0, alpha: 1.0) }
            static func filterCheckboxColor() -> UIColor { return UIColor(red: 15.0 / 255.0, green: 189.0 / 255.0, blue: 232.0 / 255.0, alpha: 1.0) }
        }
    }
    struct CommonVC {
        struct TagListView {
            static func tagLabelTextColor() -> UIColor { return UIColor(red: 75/255.0, green: 205/255.0, blue: 237/255.0, alpha: 1) }
            static func tagLabelBackgroundColor() -> UIColor { return UIColor(red: 232/255.0, green: 248/255.0, blue: 253/255.0, alpha: 1) }
            static func closeButtonColor() -> UIColor { return UIColor(red: 75/255.0, green: 205/255.0, blue: 237/255.0, alpha: 1) }
        }
        struct NavBar {
            static func tintColor() -> UIColor { return UIColor(red: 248 / 255.0, green: 250 / 255.0, blue: 252 / 255.0, alpha: 1) }
            static func barTintColor() -> UIColor { return UIColor.white }
            static func borderColor() -> UIColor { return barTintColor() }
            static func tftTitleColor() -> UIColor { return UIColor(red: 75.0 / 255.0, green: 205.0 / 255.0, blue: 237.0 / 255.0, alpha: 1.0) }
            static func shadowColor() -> UIColor { return UIColor(red: 217/255.0, green: 225/255.0, blue: 239/255.0, alpha: 1) }
        }
    }
    struct TopicDetailVC {
        struct NavBar {
            static func tintColor() -> UIColor { return UIColor(red: 164.0 / 255.0, green: 170.0 / 255.0, blue: 179.0 / 255.0, alpha: 1.0) }
        }
        struct View {
            static func backgroundColor() -> UIColor { return UIColor(red: 248 / 255.0, green: 250 / 255.0, blue: 252 / 255.0, alpha: 1) }
        }
        struct Buttons {
            static func skipButtonTextColor() -> UIColor { return UIColor(red: 164/255.0, green: 170/255.0, blue: 179/255.0, alpha: 1) }
            static func postButtonColor() -> UIColor { return UIColor(red: 75/255.0, green: 205/255.0, blue: 237/255.0, alpha: 1) }
            static func shadowColor() -> UIColor { return UIColor(red: 217/255.0, green: 225/255.0, blue: 239/255.0, alpha: 1) }
        }
        struct TopicView {
            static func shadowColor() -> UIColor { return UIColor(red: 217/255.0, green: 225/255.0, blue: 239/255.0, alpha: 1) }
        }
        struct Labels {
            static func timeLabelTextColor() -> UIColor { return UIColor(red: 164/255.0, green: 170/255.0, blue: 179/255.0, alpha: 1) }
            static func answererNameLabelTextColor() -> UIColor { return UIColor(red: 74.0 / 255.0, green: 74.0 / 255.0, blue: 74.0 / 255.0, alpha: 1.0) }
            static func answerTimeLabelTextColor() -> UIColor { return UIColor(red: 155/255.0, green: 155/255.0, blue: 155/255.0, alpha: 1) }
            static func audioTimeLabelTextColor() -> UIColor { return UIColor(red: 202/255.0, green: 202/255.0, blue: 202/255.0, alpha: 1) }
            static func likeCountLabelTextColor() -> UIColor { return UIColor(red: 74.0 / 255.0, green: 74.0 / 255.0, blue: 74.0 / 255.0, alpha: 1.0) }
            static func commentCountLabelTextColor() -> UIColor { return UIColor(red: 74.0 / 255.0, green: 74.0 / 255.0, blue: 74.0 / 255.0, alpha: 1.0) }
            static func rewardLabelTextColor() -> UIColor { return UIColor(red: 164 / 255.0, green: 170 / 255.0, blue: 179 / 255.0, alpha: 1) }
        }
    }
    struct AnswerDetailVC {
        struct NavBar {
            static func tintColor() -> UIColor { return UIColor(red: 164.0 / 255.0, green: 170.0 / 255.0, blue: 179.0 / 255.0, alpha: 1.0) }
        }
        struct View {
            static func backgroundColor() -> UIColor { return UIColor(red: 248 / 255.0, green: 250 / 255.0, blue: 252 / 255.0, alpha: 1) }
        }
        struct Buttons {
            static func skipButtonTextColor() -> UIColor { return UIColor(red: 164/255.0, green: 170/255.0, blue: 179/255.0, alpha: 1) }
            static func postButtonColor() -> UIColor { return UIColor(red: 75/255.0, green: 205/255.0, blue: 237/255.0, alpha: 1) }
            static func shadowColor() -> UIColor { return UIColor(red: 217/255.0, green: 225/255.0, blue: 239/255.0, alpha: 1) }
        }
        struct TopicView {
            static func shadowColor() -> UIColor { return UIColor(red: 217/255.0, green: 225/255.0, blue: 239/255.0, alpha: 1) }
        }
        struct Labels {
            static func sectionHeaderLabelTextColor() -> UIColor { return UIColor(red: 74.0 / 255.0, green: 74.0 / 255.0, blue: 74.0 / 255.0, alpha: 1.0) }
            static func commenterNameLabelTextColor() -> UIColor { return UIColor(red: 74.0 / 255.0, green: 74.0 / 255.0, blue: 74.0 / 255.0, alpha: 1.0) }
            static func commentTimeLabelTextColor() -> UIColor { return UIColor(red: 155/255.0, green: 155/255.0, blue: 155/255.0, alpha: 1) }
            static func audioTimeLabelTextColor() -> UIColor { return UIColor(red: 202/255.0, green: 202/255.0, blue: 202/255.0, alpha: 1) }
            static func likeCountLabelTextColor() -> UIColor { return UIColor(red: 74.0 / 255.0, green: 74.0 / 255.0, blue: 74.0 / 255.0, alpha: 1.0) }
        }
    }
}

struct Fonts {
    struct SignupVC {
        struct Labels {
            static func errorLabelFont() -> UIFont { return UIFont(name: "Montserrat-Light", size: 14)! }
        }
    }
    struct HomeVC {
        struct FilterView {
            static func filterLabelTextFont() -> UIFont { return UIFont(name: "Montserrat-Light", size: 14.0)! }
            static func filterSelectionTextFont() -> UIFont { return UIFont(name: "Montserrat-Light", size: 17.0)! }
        }
    }
    struct CommonVC {
        struct TagListView {
            static func tagLabelTextFont() -> UIFont { return UIFont(name: "Avenir-Medium", size: 12.0)! }
        }
        struct NavBar {
            static func tftTitleTextFont() -> UIFont { return UIFont(name: "Montserrat-Regular", size: 18.0)! }
        }
    }
    struct TopicDetailVC {
        struct NavBar {
            static func titleTextFont() -> UIFont { return UIFont(name: "Montserrat-Light", size: 18.0)! }
        }
        struct Buttons {
            static func skipButtonFont() -> UIFont { return UIFont(name: "Avenir-Medium", size: 18.0)! }
            static func postButtonFont() -> UIFont { return UIFont(name: "Montserrat-Light", size: 17.0)! }
        }
        struct Labels {
            static func timeLabelFont() -> UIFont { return UIFont(name: "Avenir-Medium", size: 14.0)! }
            static func answererNameLabelFont() -> UIFont { return UIFont(name: "Montserrat-Regular", size: 14.0)! }
            static func answerTimeLabelFont() -> UIFont { return UIFont(name: "Montserrat-Light", size: 10.0)! }
            static func audioTimeLabelFont() -> UIFont { return UIFont(name: "Avenir-Medium", size: 10.0)! }
            static func likeCountLabelFont() -> UIFont { return UIFont(name: "Avenir-Medium", size: 14.0)! }
            static func commentCountLabelFont() -> UIFont { return UIFont(name: "Avenir-Medium", size: 14.0)! }
            static func rewardLabelFont() -> UIFont { return UIFont(name: "Montserrat-Light", size: 17.0)! }
        }
    }
    struct AnswerDetailVC {
        struct NavBar {
            static func titleTextFont() -> UIFont { return UIFont(name: "Montserrat-Light", size: 18.0)! }
        }
        struct Labels {
            static func sectionHeaderLabelFont() -> UIFont { return UIFont(name: "Avenir-Medium", size: 14.0)! }
            static func commenterNameLabelFont() -> UIFont { return UIFont(name: "Montserrat-Regular", size: 14.0)! }
            static func commentTimeLabelFont() -> UIFont { return UIFont(name: "Montserrat-Light", size: 10.0)! }
            static func audioTimeLabelFont() -> UIFont { return UIFont(name: "Avenir-Medium", size: 10.0)! }
            static func likeCountLabelFont() -> UIFont { return UIFont(name: "Avenir-Medium", size: 14.0)! }
        }
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
}
