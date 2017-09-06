//  Created by Oleg Gnidets on 8/31/17.
//  Copyright © 2017 Oleg Gnidets. All rights reserved.
//

import UIKit
import AVKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
	}

	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
		let url = URL(string: "https://devstreaming-cdn.apple.com/videos/streaming/examples/bipbop_16x9/bipbop_16x9_variant.m3u8")

		let player = AVPlayer(url: url!)
		let playerController = AVPlayerViewController()

		playerController.player = player
		addChildViewController(playerController)
		view.addSubview(playerController.view)
		playerController.view.frame = view.frame

		let label = UILabel()
		label.textAlignment = .center
		label.text = Bundle.main.bundleIdentifier!
		label.textColor = .white
		label.font = UIFont.boldSystemFont(ofSize: 32)

		label.translatesAutoresizingMaskIntoConstraints = false
		playerController.contentOverlayView?.addSubview(label)

		label.leadingAnchor.constraint(equalTo: playerController.contentOverlayView!.leadingAnchor).isActive = true
		label.trailingAnchor.constraint(equalTo: playerController.contentOverlayView!.trailingAnchor).isActive = true
		label.bottomAnchor.constraint(equalTo: playerController.contentOverlayView!.bottomAnchor, constant: 12).isActive = true
		label.topAnchor.constraint(equalTo: playerController.contentOverlayView!.topAnchor, constant: 12).isActive = true

		player.play()
	}
}

