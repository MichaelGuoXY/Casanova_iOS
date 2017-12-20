//
//  TopicDetailViewControllerViewModel.swift
//  Casanova
//
//  Created by Xiaoyu Guo on 12/18/17.
//  Copyright © 2017 Xiaoyu Guo. All rights reserved.
//

import Foundation

class TopicDetailViewControllerViewModel {
    // MARK: - Private
    // TODO: Make topic public for now, private once MVVM architecture migration is done
    let topic: Topic
    
    // MARK: - Lifecycle
    init(topic: Topic) {
        self.topic = topic
    }
    
    // MARK: - Events
    var didError: ((Error) -> Void)?
    var didUpdate: ((TopicDetailViewControllerViewModel) -> Void)?
    // MARK: - Events Topic
    var didWannaAnswer: (() -> Void)?
    // MARK: - Events Answer
    var didSelectAnswer: ((Topic, Answer) -> Void)?
    var didDeleteAnswer: ((Answer) -> Void)?
    
    // MARK: - Properties
    let cellViewModelsTypes: [CellRepresentable.Type] = [TopicHeaderTableViewCellViewModel.self, AnswerBriefTableViewCellViewModel.self]
    lazy var topicHeaderTableViewCellViewModel: TopicHeaderTableViewCellViewModel = {
        let vm = TopicHeaderTableViewCellViewModel(topic: self.topic)
        vm.didWannaAnswer = { [unowned self] _ in
            self.didWannaAnswer?()
        }
        return vm
    }()
    var answersTableViewCellModels: [CellRepresentable]!
    var isUpdating: Bool = false {
        didSet {
            self.didUpdate?(self)
        }
    }
    
    // MARK: - Actions
    func reloadData() {
        self.isUpdating = true
        TopicManager.shared.fetchTopicDetail(for: topic, withCompletion: { (error, topic) in
            if error == nil {
                // success
                // body answers cells
                self.answersTableViewCellModels = topic!.answers.map { self.viewModelFor(answer: $0) }
            }
            self.isUpdating = false
        })
    }
    
    func deleteAnswer(_ answer: Answer) {
        AnswerManager.shared.deleteAnswer(topicId: topic.id, answerId: answer.id, withCompletion: { error in
            self.topic.answers.removeAnswer(answer.id)
            Environment.shared.removeAnswer(answer.id)
            self.answersTableViewCellModels = self.topic.answers.map { self.viewModelFor(answer: $0) }
            self.didUpdate?(self)
        })
    }
    
    func addAnswer(_ answer: Answer) {
        topic.answers.append(answer)
        answersTableViewCellModels = self.topic.answers.map { self.viewModelFor(answer: $0) }
        didUpdate?(self)
    }
    
    //MARK: - Helpers
    private func viewModelFor(answer: Answer) -> CellRepresentable {
        let viewModel = AnswerBriefTableViewCellViewModel(answer: answer)
        viewModel.didSelect = { [unowned self] answer in
            self.didSelectAnswer?(self.topic, answer)
        }
        viewModel.didError = { [unowned self] error in
            self.didError?(error)
        }
        viewModel.didDeleteAnswer = { [unowned self] answer in
            self.didDeleteAnswer?(answer)
        }
        return viewModel
    }
    
}
