//
//  ImageHelper.swift
//  AppleCore
//
//  Created by Richard Torcato on 2022-10-24.
//

import Foundation
import SwiftUI

final class ImageHelper {
    
    static let instance = ImageHelper() // Singleton
    
    static func createThumbnail(){
//        var thumbnail: UIImage? {
//        get async {
//        let size = CCSize(width: 40, height: 40)
//        return await self.byPreparingThumbnail(ofSize: size)
    }
        
//    static func fetchThumbnail(for id: String, completion: @escaping (UIImage?, Error?) -> Void) {
//        let request = thumbnailURLRequest(for: id)
//        let task = URLSession.shared.dataTask(with: request) { data, response, error in
//            if let error = error {
//                completion(nil, error)
//            } else if (response as? HTTPURLResponse)?.statusCode != 200 {
//                completion(nil, FetchError.badID)
//            } else {
//                guard let image = UIImage (data: data!) else {
//                    completion(nil, FetchError.badImage)
//                    return
//                    image.prepareThumbnail(of: CGSize (width: 40, height: 40)) ‹ thumbnail in
//                    guard let thumbnail = thumbnail else {
//                        completion(nil, FetchError.badImage)
//                        return
//                        completion(thumbnail, nil)
//                        task.resume ()
//                    }
//                }
//            }
//        }
//    }
}

