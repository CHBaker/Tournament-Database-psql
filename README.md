# Tournament Database psql

  A Swiss style pairing tournament database with python, psql
  Test suite and comments provided by Udacity
  
  
# INSTALLATION 
  
  1. Download Vagrant and Virtual Box
  2. Download or clone Github Repo
  3. Make sure your command line has python, if not download python to your terminal
  
# CONFIGURATION
  1. All files in repo must be nested within a file conaining a Vagrant file like so:
      /vagrant_folder/tournament_folder/tournament.py
                                       /tournament_test.py
                                       /etc.
                     /vagrant.file
                     
  2. CD into root directory of vagrant file
  3. run ```vagrant up``` followed by ```vagrant ssh```
  4. CD to ```/vagrant/tournament_folder```

# OPERATING INSTRUCTIONS
  
  1. First creat the database and tables by running ```psql```
      then in psql run ```\i tournament.sql```
      
      1b. When running the tournament multiple times under different circumstances
          you may run into errors regaurding the deletion of data in tables. To overcome
          this, manually remove data by navigating to psql and running ```DROP
          (tablename) CASCADE``` for all tables
          
  2. To run the test suite run ```python tournament_test.py```
  3. To edit database and table, edit the file ```tournament.sql```
  
# FILE MANIFEST

  tournament.py , tournament_test.py , tournament.sql , tournament.pyc , README.md
