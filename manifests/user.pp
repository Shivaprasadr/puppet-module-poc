class poc::user (
  $username,
  $password,
) {
  user { $username:
    ensure     => present,
    password => $password,
  }
}
