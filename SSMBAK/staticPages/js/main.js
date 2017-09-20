/**
 *
 * 适当调节参数360 260
 *
 */

document.getElementById("btn-html2canvas").onclick = function(){

    // 将 id 为 content 的 div 渲染成 canvas
    html2canvas(document.getElementById("doc_content"), {

        // 渲染完成时调用，获得 canvas
        onrendered: function(canvas) {

            // 从 canvas 提取图片数据
            var imgData = canvas.toDataURL('image/jpeg');

            var content = document.getElementById("content-main");



            var inputLength = canvas.height/5;

            if (inputLength < 297)
            {
                inputLength = canvas.height/4;
            }

            var inputWidth = canvas.width / 5;


            var doc = new jsPDF("p", "mm",  [inputWidth, inputLength]);
            //                               |
            // |—————————————————————————————|                     
            // A0 841×1189                           
            // A1 594×841                            
            // A2 420×594                            
            // A3 297×420                            
            // A4 210×297                            
            // A5 148×210                            
            // A6 105×148                            
            // A7 74×105                             
            // A8 52×74                              
            // A9 37×52                              
            // A10 26×37             
            //     |——|———————————————————————————|
            //                                 |——|——|
            //                                 |     |      
            doc.addImage(imgData, 'JPEG', 0, 0,inputWidth,inputLength);

            doc.save('content.pdf');
        }
    });

}
