class EndPoints {
  static const String baseUrl = 'https://expenses-tracker-jghv.onrender.com/';
  static const String loginUrl = 'api/auth/login';
  static const String registerUrl = 'api/auth/register';
  static const String usersUrl = 'api/users/profile';
  static const String categoriesUrl = 'api/categories';
  static const String expensesUrl = 'api/expenses';
  static String getUserId(String userAuthId) {
    return 'Bearer ${ApiKeys.userAuthId}';
  }
}

class ApiKeys {
  static const String userAuthId = '_id';
  static const String userAuthName = 'name';
  static const String userAuthEmail = 'email';
  static const String userAuthPassword = 'password';
  static const String userAuthProfilePhoto = 'profilePhoto';
  static const String userAuthBio = 'bio';
  static const String userCheckAdmin = 'isAdmin';
  static const String userCheckVerified = 'isAccountVerified';
  static const String userCreatedDate = 'createdAt';
  static const String userUpdatedDate = 'updatedAt';
  static const String userAuthToken = 'token';
  static const String userAuthMessage = 'message';
}