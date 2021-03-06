(in-package :cl-user)
(defpackage crane-test
  (:use :cl :crane :fiveam))
(in-package :crane-test)

(crane:setup
 :debug t
 :migrations-directory
 (merge-pathnames
  #p"t/migrations/"
  (asdf:system-source-directory :crane-test))
 :databases
 '(:main
   (:type :postgres
    :name "crane_test_db"
    :user "crane_test_user"
    :pass "crane_test_user")
   :interface
   (:type :sqlite3
    :name ":memory:")))
