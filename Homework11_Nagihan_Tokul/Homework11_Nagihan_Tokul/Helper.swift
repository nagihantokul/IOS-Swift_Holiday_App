/*
 ## Homework 11
    Name: Nagihan Tokul
    Date: 10/27/2025
 
Helper.swift
 */





import Foundation

extension Bundle {
    func decode<T: Decodable>(_ file: String) -> T {
        guard let url = url(forResource: file, withExtension: nil) else {
            fatalError("Could not find \(file) in bundle.")
        }
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Could not load \(file) from bundle.")
        }
        guard let decoded = try? JSONDecoder().decode(T.self, from: data) else {
            fatalError("Could not decode \(file).")
        }
        return decoded
    }
}
