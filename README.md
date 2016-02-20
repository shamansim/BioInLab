BioInLab
========

Also shortly called BIL, it is an RStudio tool to provide a laboratory notebook designed for computer scientists (bioinformaticians ...). It does not claim to be a replacement of knitr (for R) and other packages like this. It allows one to register other metadata which could not fit in the knitr-style document.

==============

About the name
--------------
Pun intended, it makes reference to the japanese word for hospital : 病院 (pronounced byouin). As in a hospital, when something is wrong you can go there and check what is wrong. In our case, laboratory notes are usefull to monitor what has been done wrong in the process. And of course, it refers to "bioinformatics".

Ideas of development
--------------------

- an R package which provides easy-to-go functions to deploy the journal and further to add entries in it
- for instance : 
    - initBioInLab(<name_of_the_folder_where_we_want_to_deploy>)
    - newentry(<type_of_entry>,<content>)
        - <type_of_entry> could be TEXT, FIGURE (the program will then copy the figure in the correct folder), ...
- inherit from book class instead of article ?
