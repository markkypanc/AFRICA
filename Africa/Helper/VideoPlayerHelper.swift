//
//  VideoPlayerHelper.swift
//  Africa
//
//  Created by Mark Rachapoom on 21/3/21.
//

import Foundation
import AVKit

var videoPlayer: AVPlayer?

// MARK: - METHODS

func playVideo(fileName: String, fileFormat: String) -> AVPlayer {
    if Bundle.main.url(forResource: fileName, withExtension: fileFormat) != nil {
        videoPlayer = AVPlayer(url: Bundle.main.url(forResource: fileName, withExtension: fileFormat)!)
        videoPlayer?.play()
    }
    return videoPlayer!
}
