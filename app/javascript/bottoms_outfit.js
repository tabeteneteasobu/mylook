document.addEventListener('DOMContentLoaded', function(){
  console.log("bottoms投稿機能を実装");
  // 新規投稿・編集ページのフォームを取得
  const postForm2 = document.getElementById('new_bottoms');
   // プレビューを表示するためのスペースを取得
   const previewList2 = document.getElementById('previews2');
 
   // 新規投稿・編集ページのフォームがないならここで終了。「!」は論理否定演算子。
   if (!postForm2) return null;
 
   // input要素を取得
   const fileField2 = document.querySelector('input[type="file"][name="outfit[image]"]');
   // input要素で値の変化が起きた際に呼び出される関数
   fileField2.addEventListener('change', function(e){

     // 古いプレビューが存在する場合は削除
     const alreadyPreview2 = document.querySelector('.preview2');
     if (alreadyPreview2) {
       alreadyPreview2.remove();
     };
     const file2 = e.target.files[0];
     const blob2 = window.URL.createObjectURL(file2);
     // 画像を表示するためのdiv要素を生成
     const previewWrapper2 = document.createElement('div');
     previewWrapper2.setAttribute('class', 'preview2');
     
     // 表示する画像を生成
     const previewImage2 = document.createElement('img2');
     previewImage2.setAttribute('class', 'preview-image2');
     previewImage2.setAttribute('src', blob2);
     console.log(previewImage2)
     // 生成したHTMLの要素をブラウザに表示させる
     previewWrapper2.appendChild(previewImage2);
     previewList2.appendChild(previewWrapper2);
     console.log(previewWrapper2)
   });
 });
 