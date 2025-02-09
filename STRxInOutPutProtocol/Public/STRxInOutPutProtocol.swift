//
//  STRxInOutPutProtocol.swift
//  Pod
//
//  Created by defualt_author on 2025/02/10.
//
// @_exported import XXXXXX //这个是为了对外暴露下层依赖的Pod

@_exported import RxSwift

public protocol STViewModelProtocol {
    associatedtype T
    associatedtype B
    
    var disposeBag: DisposeBag {get set}
    
    func transformInput(_ input: T) -> B
}

public protocol HYMvvmProtocol {
    associatedtype ViewModelType: STViewModelProtocol
    var vm: ViewModelType {get set}
    
    func bindData()
}
