package ccs.rbac.policy

default allow = false

# Allow admins to do anything
allow {
	user_is_admin
}

user_is_admin {
	some i
  data.users[input.user].roles[i] == "admin"
}
