Terraform infrastructure updates are managed using Git feature branches.

The workflow used for changes is:

Create a feature branch from main.
Make and validate the Terraform change.
Commit the change locally.
Push the feature branch to GitHub.
Raise a Pull Request.
Review and merge the Pull Request into main.
This workflow keeps the main infrastructure branch stable and provides a reviewable history of all changes.