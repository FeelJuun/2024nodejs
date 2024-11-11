const express = require('express');
const path = require('path');
const cookieParser = require('cookie-parser');

const app = express();

// 사용자 정보를 저장할 데이터베이스
const db = new Map();
// KEY=VALUE 형태로 브라우저에 저장되는 쿠키의 KEY
const USER_COOKIE_KEY = 'USER';

// 위에서 작성한 html을 클라이언트에 제공하기 위한 미들웨어
app.use(express.static(path.join(__dirname, 'public')));
// 쿠키를 파싱하기 위한 미들웨어
app.use(cookieParser());
// x-www-form-urlencoded 타입의 form 데이터를 파싱하기 위한 미들웨어
app.use(express.urlencoded({ extended: true }));

app.listen(3000, () => {
    console.log('server is running at 3000');
});