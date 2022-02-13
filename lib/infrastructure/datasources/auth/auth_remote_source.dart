// import 'package:flutter_architecture_template/core/enums/http_types.dart';
// import 'package:flutter_architecture_template/core/exceptions/exceptions.dart';
// import 'package:injectable/injectable.dart';

// import 'package:flutter_architecture_template/domain/models/user.dart';
// import 'package:flutter_architecture_template/domain/network/i_core_dio.dart';

// abstract class IAuthRemoteSource {
//   Future<User> login({required String phoneNumber});
// }


// @Injectable(as: IAuthRemoteSource)
// class AuthRemoteSource implements IAuthRemoteSource {
//   ICoreDio coreDio;
//   AuthRemoteSource({
//     required this.coreDio,
//   });

//   @override
//   Future<User> login({required String phoneNumber}) async {
//     var response = await coreDio.send(
//       "path",
//       type: HttpTypes.POST,
//       data: {
//         "phoneNumber": phoneNumber,
//       },
//     );

//     if(response.statusCode == 200) {
//       return User.fromJson(response.data);
//     } else {
//       throw ServerException();
//     }
//   }
// }
