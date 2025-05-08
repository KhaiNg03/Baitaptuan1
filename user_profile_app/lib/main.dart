import 'package:flutter/material.dart';

void main() {
  runApp(UserProfileApp());
}

class UserProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get the width and height of the screen
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // Set the height to be twice the width
    double adjustedHeight = screenWidth * 3;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          height: adjustedHeight,
          width: screenWidth,
          child: Stack(
            children: [
              // Nút quay lại
              Positioned(
                top: 16,
                left: 16,
                child: IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  onPressed: () {
                    // Thêm chức năng quay lại nếu cần
                  },
                ),
              ),

              // Nút chỉnh sửa
              Positioned(
                top: 16,
                right: 16,
                child: IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: () {
                    // Thêm chức năng chỉnh sửa nếu cần
                  },
                ),
              ),

              // Nội dung chính giữa
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Ảnh đại diện
                    CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage('assets/avt.jpg'),
                    ),
                    SizedBox(height: 16),

                    // Tên
                    Text(
                      'Johan Smith',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    // Địa điểm
                    Text(
                      'California, USA',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
