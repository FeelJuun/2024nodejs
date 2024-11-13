import 'package:flutter/material.dart';

void main() {
  runApp(chulseokcheck());
}

class chulseokcheck extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(Duration(seconds: 3), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => HomeScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF007F4E),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.network(
              'https:///645c/a680/fdf8809697d18a28f92dda18caee3b84?Expires=1731283200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=itbwQbUCJoVCmvnlOS9s6oxxGE7A5DJdDrVXBEcsPOd13w1fj3inaLcugSTEs3T1ET6Z4jzpJSnINEWGb7fASUVpHLYeMClFSjmSvH8oF~QjpOkNGf2Yll931dnyGroYwT2BiUjQDwvAJaWYYqR0dv3Hj7kuJprhkzWPoHV8FLNFpnKokPhS4QlV2AiwjS1uegHbb5ar7ILErYL7bZZ8zdVJlTm3ka~bUxk~yrtkz-5XOQE7B8rpg3VFLtpZYOj1CGGc-JgAuUe6WfpGOrGIe3oMpknm1IlReaZcUSk2MdlI0dO8vvzYmT8Xk8RJEWWx5NLu3az6hw8YoBMamXQbMw__',
              height: 300,
              width: 300,
            ),
          ],
        ),
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isStudentSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF007F4E),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 50.0, 16.0, 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.network(
              'https://s3-alpha-sig.figma.com/img/645c/a680/fdf8809697d18a28f92dda18caee3b84?Expires=1731283200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=itbwQbUCJoVCmvnlOS9s6oxxGE7A5DJdDrVXBEcsPOd13w1fj3inaLcugSTEs3T1ET6Z4jzpJSnINEWGb7fASUVpHLYeMClFSjmSvH8oF~QjpOkNGf2Yll931dnyGroYwT2BiUjQDwvAJaWYYqR0dv3Hj7kuJprhkzWPoHV8FLNFpnKokPhS4QlV2AiwjS1uegHbb5ar7ILErYL7bZZ8zdVJlTm3ka~bUxk~yrtkz-5XOQE7B8rpg3VFLtpZYOj1CGGc-JgAuUe6WfpGOrGIe3oMpknm1IlReaZcUSk2MdlI0dO8vvzYmT8Xk8RJEWWx5NLu3az6hw8YoBMamXQbMw__',
              height: 300,
              width: 300,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      isStudentSelected = true;
                    });
                  },
                  child: Text('학생',
                      style: TextStyle(fontFamily: 'SF', fontSize: 18)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                    isStudentSelected ? Colors.orange : Colors.white,
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      isStudentSelected = false;
                    });
                  },
                  child: Text('학부모',
                      style: TextStyle(fontFamily: 'SF', fontSize: 18)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                    !isStudentSelected ? Colors.yellow : Colors.grey[300],
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                hintText: '휴대전화번호 입력',
                hintStyle: TextStyle(fontSize: 18),
                filled: true,
                fillColor: Color.fromARGB(255, 165, 203, 207),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide.none,
                ),
              ),
              style: TextStyle(fontFamily: 'SF'),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                hintText: '비밀번호 입력',
                hintStyle: TextStyle(fontSize: 18),
                filled: true,
                fillColor: Color.fromARGB(255, 165, 203, 207),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide.none,
                ),
              ),
              obscureText: true,
              style: TextStyle(fontFamily: 'SF'),
            ),
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {},
              child: Text('로그인',
                  style: TextStyle(fontFamily: 'SF', fontSize: 18)),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
                backgroundColor: Color.fromARGB(255, 165, 203, 207),
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text('비밀번호 찾기',
                      style: TextStyle(
                          fontFamily: 'SF',
                          color: Colors.black,
                          fontSize: 18)),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => isStudentSelected
                              ? StudentSignUpScreen()
                              : ParentSignUpScreen()),
                    );
                  },
                  child: Text('회원가입',
                      style: TextStyle(
                          fontFamily: 'SF',
                          color: Colors.black,
                          fontSize: 18)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class StudentSignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('학생 회원가입'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '학생 회원가입',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text(
                '이름 *',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: '본인 이름을 24자 이내로 입력',
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
              SizedBox(height: 10),
              Text(
                '비밀번호 *',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: '영문자/숫자/특수문자 