<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="initial-scale=1">
    <title>KTaNE Base Calculator -Hatosable's KTaNE Page-</title>
    <link rel="shortcut icon" href="./favicon.ico" >
  <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/cssfile.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <style>
   .gray{
    background: rgb(213, 213, 213);
    width: 30%;
   }
  </style>
</head>
<body>
  <br/><a href="/index"><button type="button" class="reset" style="border-radius: 10px;padding:10px;font-size:100%;font:#fff;">BACK</button></a><br>
                <h1>KTaNE Base Calculator</h1>
<div class="sheet">
<form name="sheet" >
<p>
 <input type="text" id="inputbase" pattern="^[0-9]+$" value="10" minlength="1">進数表記の<input type="text" id="inputnumber" pattern="^[0-9a-zA-Z]+$" value="0" minlength="1">を進数変換
</p>
10進数：<input readonly id="base10" class="gray"><br>
２ 進数：<input readonly id="base2" class="gray"><br>
16進数：<input readonly id="base16" class="gray"><br>
36進数：<input readonly id="base36" class="gray"><br>
<input type="text" id="inputN" pattern="^[0-9]+$" value="6" minlength="1">進数：<input readonly id="baseother" class="gray"><br>
<p>※52進数は「Abyss」仕様(A=0,B=1,...a=26,b=27,...)</p>

 <script type="text/javascript" src="/js/base.js"></script>



</html>


