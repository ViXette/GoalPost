import UIKit
import CoreData


let appDelegate = UIApplication.shared.delegate as? AppDelegate


class GoalsVC: UIViewController {

	@IBOutlet weak var goalsTable: UITableView!
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		goalsTable.delegate = self
		goalsTable.dataSource = self
		
		goalsTable.isHidden = false
	}

	
	@IBAction func addGoalTapped(_ sender: UIButton) {
		guard let createGoalVC = storyboard?.instantiateViewController(withIdentifier: "CreateGoalVC") else { return }
		
		presentDetail(createGoalVC)
	}
	
}



extension GoalsVC: UITableViewDelegate, UITableViewDataSource {
	
	func numberOfSections(in tableView: UITableView) -> Int {
		return 1
	}
	
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 3
	}
	
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		guard let cell = goalsTable.dequeueReusableCell(withIdentifier: "goalCell") as? GoalCell else { return UITableViewCell () }
		
		cell.configureCell(goalDescription: "Eat Salad", goalType: .shortTerm, goalProgress: 2)
		
		return cell
	}
	
}
