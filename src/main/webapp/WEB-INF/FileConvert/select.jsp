<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
 <% String nothtml=(String)request.getAttribute("nothtml"); %>

<!DOCTYPE html>
<html lang="ja">
  <head>
    <meta charset="utf-8" />
    <link rel="shortcut icon" href="./favicon.ico" >
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/cssfile.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <title>日本語マニュアル変換ツール　 -Hatosable's KTaNE Page-</title>
    </head>
    <body>
      <br/><a href="/index"><button type="button" class="reset" style="border-radius: 10px;padding:10px;font-size:100%;font:#fff;">BACK</button></a><br>
      <h1>日本語マニュアル変換ツール</h1>
      <form action="./Converter" method="post"enctype="multipart/form-data">
        <input type="file" name="select" class="btn btn--red btn--radius btn--cubic" required accept=".html"/><a style="color: red;">*</a>
        <% if(nothtml!=null){%>
          <p style="color: red;">拡張子が.htmlのファイルを読み込ませてください</p>
        <%}
        %>
        <p>モジュール和名：<input type="text" name="name" required/><a style="color: red;"> *</a></p>
        <p>翻訳者：<input type="text" name="creator" required/><a style="color: red;"> *</a></p>

        <input type="checkbox" id="manualcheck" name="checkbox" onclick="valueChange();" value="on"> 差分マニュアル作成時はここにチェック
        <span id="interactive" style="visibility: hidden;">
        <p>オリジナルマニュアル名(英語)：<input type="text" name="original"/><a style="color: red;"> *</a></p>
        <p>差分名：<input type="text" name="subtitle"/><span style="font-size: small;">(インタラクティブ等オリジナルからさらに改変を行う場合、説明を記入)</span></p> 
       </span>
        <input type="submit" class="btn btn--orange btn--cubic btn--shadow" value="変換！">
          </form>
      <h2>使い方</h2>
      <p>1.変換元のマニュアルを選択</p>
      <p>2.和名を入力</p>
      <p>3.翻訳者名を入力</p>
      <p>4.変換ボタンを押す</p>
      <p>5.日本語マニュアル形式に変換されたhtml(原名 translated (日本語 — 和名) (翻訳者名).html)がダウンロードされます！</p>

      <h2>どこが変わるの？</h2>
    <p>・<code>&lt;html lang="ja"&gt;</code>の追加</p>
  <p> ・<code>&lt;link rel="stylesheet" type="text/css" href="css/font-japanese.css"&gt;</code>の追加</p>
<p>  ・ページタイトル&セクションタイトル&タイトルh2タグ(モジュール詳細：〇〇)の自動和名置換</p>
<p>     ・ページ数の自動変換 Page 1 of 1 → ページ 1/1</p>

<p>マニュアルを読み取ってもらえない場合、ファイルの末尾にある改行を削除することで読み取れる場合があります。</p>
    </body>
    <script type="text/javascript" src="/js/interactive.js"></script>

  </html>
