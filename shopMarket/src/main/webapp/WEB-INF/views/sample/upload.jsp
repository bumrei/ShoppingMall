<%--
  Created by IntelliJ IDEA.
  User: bumre
  Date: 2022-01-23
  Time: 오후 5:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

    <input type="file" name="uploadFiles" multiple>
    <button id="uploadBtn">UPLOAD</button>

    <div class="uploadResult">

    </div>




<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
<script>

    const uploadResultDiv = document.querySelector(".uploadResult");

    document.querySelector("#uploadBtn").addEventListener("click", (e) => {

        // FormData => Ajax form 전송을 가능하게 하는 객체를 생성함으로 메모리상에 공간을 만든다.
        const formData = new FormData()
        const fileInput = document.querySelector("input[name='uploadFiles']")

        for (let i = 0; i < fileInput.files.length; i++) {
            // ★★★ 여기 주는 이름이 컨트롤러에서 받는 파람의 이름이 됨 ★★★
            formData.append("uploadFiles", fileInput.files[i])
        }

        console.dir(fileInput)
        console.log(formData)

        const headerObj = { headers: {'Content-Type':'multipart/form-data'} }

        //결과값이 배열로 나올거같지만 안나옴
        axios.post("/upload", formData, headerObj).then((response) => {
            const arr = response.data;
            console.log(arr);

            let str = ""

            for (let i = 0; i < arr.length; i++) {
                // spread 사용
                const {uuid, fileName, uploadPath, image, thumbnail, fileLink} = {...arr[i]}

                console.log("fileLink " , fileLink)
                if(image) {
                    //이미지인 경우
                    //=> 경로 문제 (보안 - 접근제한 필요) / 특정 경로에 이미지 쌓아도 안보임
                    //실제로 톰캣이 돌아갈때랑 워크스페이스가 돌아갈때랑 결과가 다름

                    //[해결방법]
                    //  1. 이미지 서버 분리 (Nginx 간단한 웹서버)
                    //  2. aws 등 클라우드 서비스 이용 - 이미지용 경로 따로 제공
                    //  3. 이미지 볼 수 있게 직접 코드 만들어야함
                    str += `<div data-uuid='\${uuid}'>
                            	<img src='/viewFile?file=\${fileLink}'><span>\${fileName}</span>
                                    <button onclick="javascript:removeFile('\${fileLink}', this)">x</button></div>`
                    //http://localhost:8080/viewFile?file=2021/09/08/aaa.jpg
                    //여기서 this 는 <button>을 의미함
                }else {
                    str += `<div data-uuid='\${uuid}'><a href='/downFile?file=\${fileLink}'> \${fileName}</a></div>`
                    // str += `<div data-uuid='\${uuid}'><a href='/downFile?file=\${fileLink}'>\${fileName}</a></div>`
                    // 다운로드
                    // fileLink -> 파일 위치 경로
                }//if end

            }

            uploadResultDiv.innerHTML += str
        })

    }, false)

    function removeFile(fileLink, ele) {
        console.log("fileLink ", fileLink)

        axios.post("/removeFile" , {fileName : fileLink}).then(response => {
            const targetDiv = ele.parentElement

            targetDiv.remove()
        })
    }

</script>

</body>
</html>
