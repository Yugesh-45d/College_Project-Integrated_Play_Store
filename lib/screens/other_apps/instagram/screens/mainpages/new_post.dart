// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:play_store_app/config/helper_func.dart';

// import 'package:provider/provider.dart';

// class InstaNewPostPage extends StatefulWidget {
//   const InstaNewPostPage({super.key});

//   @override
//   State<InstaNewPostPage> createState() => _InstaNewPostPageState();
// }

// class _InstaNewPostPageState extends State<InstaNewPostPage> {
//   Uint8List? image;

//   void selectImage() async {
//     Uint8List im = await AppFunc.pickImage(ImageSource.gallery);
//     setState(() {
//       image = im;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Consumer<ImageDataProvider>(
//       builder: (context, value, child) => Center(
//         child: GestureDetector(
//           onTap: () {
//             selectImage();
//             if (image != null) {
//               value.addImageToList(image!);
//             }
//           },
//           child: Icon(
//             Icons.upload,
//             size: 32,
          // ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class InstaNewPostPage extends StatelessWidget {
  const InstaNewPostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}