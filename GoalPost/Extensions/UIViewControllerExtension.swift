import UIKit


extension UIViewController {

	func presentDetail (_ viewControllerToPresent: UIViewController) {
		self.view.window?.layer.add(makeTransition(), forKey: kCATransition)
		
		present(viewControllerToPresent, animated: false, completion: nil)
	}
	
	
	func presentSecondaryDetail (_ viewControllerToPresent: UIViewController) {
		guard let presentedVC = presentedViewController
			else { return }
		
		presentedVC.dismiss(animated: false) {
			self.view.window?.layer.add(self.makeTransition(), forKey: kCATransition)
			
			self.present(viewControllerToPresent, animated: false, completion: nil)
		}
	}
	
	
	func dismissDetail () {
		self.view.window?.layer.add(makeTransition(), forKey: kCATransition)
		
		dismiss(animated: false, completion: nil)
	}
	
	
	private func makeTransition () -> CATransition {
		let transition = CATransition()
		transition.duration = 0.3
		transition.type = kCATransitionPush
		transition.subtype = kCATransitionFromLeft
		
		return transition
	}
	
}
