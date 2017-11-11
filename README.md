# UITableView-ios10-crash
Project shows the crash up to **iOS 10** related to ```estimatedHeightForRowAtIndexPath```.
It will be a crash if return *greater than* **0.0** and *less than or equal to* **1.0** from method of ```UITableViewDelegate```:
```sh
tableView: estimatedHeightForRowAtIndexPath:
```
