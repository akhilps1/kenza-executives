// import 'package:dartz/dartz.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:injectable/injectable.dart';
// import 'package:kenza_user/domain/core/failures/failures.dart';
// import 'package:kenza_user/domain/core/utils/typedefs/typedefs.dart';

// @lazySingleton
// class ImagePickerServeice {
//   ImagePickerServeice(this._picker);

//   final ImagePicker _picker;

//   ResultFuture<XFile> selectImageFromGallery() async {
//     XFile? file =
//         await _picker.pickImage(source: ImageSource.gallery, imageQuality: 10);
//     if (file != null) {
//       return right(file);
//     } else {
//       return left(
//         const MainFailure.pickFailed(errorMsg: 'Failed to pick image'),
//       );
//     }
//   }

// //
//   ResultFuture<XFile> selectImageFromCamera() async {
//     XFile? file =
//         await _picker.pickImage(source: ImageSource.camera, imageQuality: 10);
//     if (file != null) {
//       return right(file);
//     } else {
//       return left(
//         const MainFailure.pickFailed(errorMsg: 'Failed to pick image'),
//       );
//     }
//   }
// }
