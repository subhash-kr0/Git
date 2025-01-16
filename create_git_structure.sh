#!/bin/bash

# Define the folder structure and file names
declare -A structure=(
  ["Getting Started"]="1.1 About Version Control
1.2 A Short History of Git
1.3 What is Git?
1.4 The Command Line
1.5 Installing Git
1.6 First-Time Git Setup
1.7 Getting Help
1.8 Summary"
  ["Git Basics"]="2.1 Getting a Git Repository
2.2 Recording Changes to the Repository
2.3 Viewing the Commit History
2.4 Undoing Things
2.5 Working with Remotes
2.6 Tagging
2.7 Git Aliases
2.8 Summary"
  ["Git Branching"]="3.1 Branches in a Nutshell
3.2 Basic Branching and Merging
3.3 Branch Management
3.4 Branching Workflows
3.5 Remote Branches
3.6 Rebasing
3.7 Summary"
  ["Git on the Server"]="4.1 The Protocols
4.2 Getting Git on a Server
4.3 Generating Your SSH Public Key
4.4 Setting Up the Server
4.5 Git Daemon
4.6 Smart HTTP
4.7 GitWeb
4.8 GitLab
4.9 Third Party Hosted Options
4.10 Summary"
  ["Distributed Git"]="5.1 Distributed Workflows
5.2 Contributing to a Project
5.3 Maintaining a Project
5.4 Summary"
  ["GitHub"]="6.1 Account Setup and Configuration
6.2 Contributing to a Project
6.3 Maintaining a Project
6.4 Managing an organization
6.5 Scripting GitHub
6.6 Summary"
  ["Git Tools"]="7.1 Revision Selection
7.2 Interactive Staging
7.3 Stashing and Cleaning
7.4 Signing Your Work
7.5 Searching
7.6 Rewriting History
7.7 Reset Demystified
7.8 Advanced Merging
7.9 Rerere
7.10 Debugging with Git
7.11 Submodules
7.12 Bundling
7.13 Replace
7.14 Credential Storage
7.15 Summary"
  ["Customizing Git"]="8.1 Git Configuration
8.2 Git Attributes
8.3 Git Hooks
8.4 An Example Git-Enforced Policy
8.5 Summary"
  ["Git and Other Systems"]="9.1 Git as a Client
9.2 Migrating to Git
9.3 Summary"
  ["Git Internals"]="10.1 Plumbing and Porcelain
10.2 Git Objects
10.3 Git References
10.4 Packfiles
10.5 The Refspec
10.6 Transfer Protocols
10.7 Maintenance and Data Recovery
10.8 Environment Variables
10.9 Summary"
  ["Appendix A: Git in Other Environments"]="A1.1 Graphical Interfaces
A1.2 Git in Visual Studio
A1.3 Git in Visual Studio Code
A1.4 Git in IntelliJ / PyCharm / WebStorm / PhpStorm / RubyMine
A1.5 Git in Sublime Text
A1.6 Git in Bash
A1.7 Git in Zsh
A1.8 Git in PowerShell
A1.9 Summary"
  ["Appendix B: Embedding Git in your Applications"]="A2.1 Command-line Git
A2.2 Libgit2
A2.3 JGit
A2.4 go-git
A2.5 Dulwich"
  ["Appendix C: Git Commands"]="A3.1 Setup and Config
A3.2 Getting and Creating Projects
A3.3 Basic Snapshotting
A3.4 Branching and Merging
A3.5 Sharing and Updating Projects
A3.6 Inspection and Comparison
A3.7 Debugging
A3.8 Patching
A3.9 Email
A3.10 External Systems
A3.11 Administration
A3.12 Plumbing Commands"
)

# Create folders and files
for folder in "${!structure[@]}"; do
  mkdir -p "$folder"
  while IFS= read -r file; do
    touch "$folder/$file.md"
  done <<< "${structure[$folder]}"
done

echo "Folders and files created successfully."
