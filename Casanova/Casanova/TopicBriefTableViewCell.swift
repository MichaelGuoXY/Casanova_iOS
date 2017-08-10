//
//  TopicBriefTableViewCell.swift
//  Casanova
//
//  Created by Xiaoyu Guo on 7/18/17.
//  Copyright © 2017 Xiaoyu Guo. All rights reserved.
//

import UIKit
import TagListView

class TopicBriefTableViewCell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var tagListView: TagListView!
    @IBOutlet weak var difficultyView: UIView!
    @IBOutlet weak var difficultyLabel: UILabel!
    @IBOutlet weak var numOfAnswersLabel: UILabel!
    @IBOutlet weak var starButton: UIButton!
    @IBOutlet weak var numOfStarsLabel: UILabel!
    
    let difficulties: [String] = ["Beginner", "Easy", "Medium", "Hard", "Ridiculous"]
    
    var topic: Topic! {
        didSet {
            updateUI()
        }
    }
    
    func updateUI() {
        // Update UI
        starButton.setBackgroundImage(#imageLiteral(resourceName: "star-h"), for: .normal)
        titleLabel.text = topic.title
        difficultyLabel.text = difficulties[topic.level - 1]
        numOfAnswersLabel.text = "\(topic.answersCount) answers"
        let diffView = DifficultyView(frame: difficultyView.bounds, level: topic.level)
        diffView.tag = 101
        diffView.backgroundColor = UIColor.clear
        for subView in difficultyView.subviews {
            if subView.tag == 101 {
                subView.removeFromSuperview()
            }
        }
        difficultyView.addSubview(diffView)
        
        // tag list view config
        tagListView.removeAllTags()
        for tag in topic.tags.components(separatedBy: ",") {
            let newTag = "#\(tag.uppercased())"
            tagListView.addTag(newTag)
        }
        tagListView.textFont = UIFont(name: "Avenir-Medium", size: 12)!
        
        // substring answer to 300 chars
//        let answer = topic.answerTitle
//        answerLabel.text = answer.components(separatedBy: " ")[0...50].joined(separator: " ") + " ..."
//        answererNameLabel.text = topic.userName
//        answerTimeLabel.text = TimeManager.shared.elapsedDateString(fromString: topic.updatedAt)
//        numOfLikesLabel.text = "\(topic.likeCount)"
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        
        selectionStyle = .none
        // Initialization code
//        likeButton.setBackgroundImage(#imageLiteral(resourceName: "heart"), for: .normal)
//        profileButton.setBackgroundImage(#imageLiteral(resourceName: "tftProfile"), for: .normal)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
