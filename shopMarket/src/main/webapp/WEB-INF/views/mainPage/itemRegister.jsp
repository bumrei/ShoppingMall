<%@include file="../includes/header.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!-- Header -->
<header class="bg-dark py-5">
    <div class="container px-4 px-lg-5 my-5">
        <div class="text-center text-white" style="margin-top: 30px">
            <h1 class="display-4 fw-bolder">Shop in style</h1>
            <p class="lead fw-normal text-white-50 mb-0">With this shop hompeage template</p>
            <p> you searched ${searchInfo}. How is it? Do you like it? </p>
        </div>
    </div>
</header>
<!-- / Header -->

<div class="card-header">
    <h3 class="card-title">General</h3>
</div>
<div class="card-body">

    <div class="form-group">
        <label for="inputName">제품 이미지</label>
    </div>
    <input type="file" name="uploadFiles1" multiple>
    <button id="uploadBtn1">UPLOAD</button>

    <div class="uploadResult1">

    </div>

    <br>
    <br>

    <form action="/mainPage/itemRegister" method="post" id="form1">

        <div id="temp"></div>

        <div class="form-group">
            <label for="sellerNo">Seller No.</label>
            <input type="text" name="sellerNo" id="sellerNo" class="form-control">
        </div>

        <div class="form-group">
            <label for="inputName">Item Name</label>
            <input type="text" name="itemNm" id="inputName" class="form-control">
        </div>
        <!--Ajax 사용해서 만약 A 를 선택하면 소분류가 A 에 맞게 바뀌게끔 만들자.-->
        <!--여기서 그 CLM 에 있는 common-code 테이블 같은 기능을 사용하면 될듯 하다.-->
        <div class="form-group">
            <label for="inputStatus">Item 대분류</label>
            <select id="inputStatus" name="itemCateB" class="form-control custom-select">
                <option selected disabled>Select one</option>
                <option>A</option>
                <option>B</option>
                <option>C</option>
            </select>
        </div>
        <div class="form-group">
            <label for="inputStatus1">Item 소분류</label>
            <select id="inputStatus1" name="itemCateS" class="form-control custom-select">
                <option selected disabled>Select one</option>
                <option>a</option>
                <option>b</option>
                <option>c</option>
            </select>
        </div>

        <div class="form-group">
            <label for="inputStatus3">Item 판매 상태</label>
            <select id="inputStatus3" name="itemStatus" class="form-control custom-select">
                <option selected>판매</option>
                <option>품절</option>
            </select>
        </div>


        <button type="submit" id="submitBtn" class="btn btn-primary">Submit</button>

    </form>

    <div class="form-group">
        <label>제품 소개 미리보기 (image)</label>
    </div>
    <input type="file" name="uploadFiles2" multiple>
    <button id="uploadBtn2">UPLOAD</button>
    <div class="uploadResult2">

    </div>


</div>
<!-- /.card-body -->

<%@include file="../includes/footer.jsp" %>

<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
<script>

    const uploadResultDiv1 = document.querySelector(".uploadResult1");
    const uploadResultDiv2 = document.querySelector(".uploadResult2");
    const form1 = document.querySelector("#form1")
    const temp = document.querySelector("#temp")

    document.querySelector("#submitBtn").addEventListener("click", (e) => {
        e.stopPropagation()
        e.preventDefault()

        const fileDivArr1 = uploadResultDiv1.querySelectorAll("div")
        const fileDivArr2 = uploadResultDiv2.querySelectorAll("div")

        // 제품 대표 이미지
        let str = ""
        let i;
        for (i = 0; i < fileDivArr1.length; i++) {
            console.log("i=" , i)
            const target = fileDivArr1[i]
            const uuid = target.getAttribute("data-uuid")
            const fileName = target.getAttribute("data-filename")
            const uploadPath = target.getAttribute("data-uploadpath")
            const image = target.getAttribute("data-image")

            str += `<input type= 'hidden' name='files[\${i}].uuid' value='\${uuid}'>`
            str += `<input type= 'hidden' name='files[\${i}].fileName' value='\${fileName}'>`
            str += `<input type= 'hidden' name='files[\${i}].uploadPath' value='\${uploadPath}'>`
            str += `<input type= 'hidden' name='files[\${i}].image' value='\${image}'>`

            if (i == 0) {
                str += `<input type= 'hidden' name='files[\${i}].imageUsage' value='itemMain'>`
            } else {
                str += `<input type= 'hidden' name='files[\${i}].imageUsage' value='item'>`
            }

        }

        console.log("i pass to J" , i)
        console.log("total = " , fileDivArr2.length + fileDivArr1.length)
        let index = 0;
        for (let j = i ; j < (fileDivArr2.length + fileDivArr1.length); j++) {
            console.log("j = " , j)


            console.log("index1 = " , index)
            const target = fileDivArr2[index++]

            console.log("arr2 = ", target)

            const uuid = target.getAttribute("data-uuid")
            const fileName = target.getAttribute("data-filename")
            const uploadPath = target.getAttribute("data-uploadpath")
            const image = target.getAttribute("data-image")

            str += `<input type= 'hidden' name='files[\${j}].uuid' value='\${uuid}'>`
            str += `<input type= 'hidden' name='files[\${j}].fileName' value='\${fileName}'>`
            str += `<input type= 'hidden' name='files[\${j}].uploadPath' value='\${uploadPath}'>`
            str += `<input type= 'hidden' name='files[\${j}].image' value='\${image}'>`
            str += `<input type= 'hidden' name='files[\${j}].imageUsage' value='explanation'>`


        }


        temp.innerHTML += str

        form1.submit()
    }, false)

    document.querySelector("#uploadBtn1").addEventListener("click", (e) => {

        // FormData => Ajax form 전송을 가능하게 하는 객체를 생성함으로 메모리상에 공간을 만든다.
        const formData = new FormData()
        const fileInput = document.querySelector("input[name='uploadFiles1']")

        for (let i = 0; i < fileInput.files.length; i++) {
            // ★★★ 여기 주는 이름이 컨트롤러에서 받는 파람의 이름이 됨 ★★★
            formData.append("uploadFiles", fileInput.files[i])
        }

        console.dir(fileInput)
        console.log(formData)

        const headerObj = {headers: {'Content-Type': 'multipart/form-data'}}

        //결과값이 배열로 나올거같지만 안나옴
        axios.post("/upload", formData, headerObj).then((response) => {
            const arr = response.data;
            console.log(arr);

            let str = ""

            for (let i = 0; i < arr.length; i++) {
                // spread 사용
                const {uuid, fileName, uploadPath, image, thumbnail, fileLink} = {...arr[i]}

                console.log("fileLink ", fileLink)
                if (image) {
                    //이미지인 경우
                    //=> 경로 문제 (보안 - 접근제한 필요) / 특정 경로에 이미지 쌓아도 안보임
                    //실제로 톰캣이 돌아갈때랑 워크스페이스가 돌아갈때랑 결과가 다름

                    //[해결방법]
                    //  1. 이미지 서버 분리 (Nginx 간단한 웹서버)
                    //  2. aws 등 클라우드 서비스 이용 - 이미지용 경로 따로 제공
                    //  3. 이미지 볼 수 있게 직접 코드 만들어야함
                    str += `<div data-uuid='\${uuid}' data-filename='\${fileName}' data-uploadpath='\${uploadPath}' data-image='\${image}'>
                            	<img src='/viewFile?file=\${thumbnail}'><span>\${fileName}</span>
                                    <button onclick="javascript:removeFile('\${fileLink}', this)">x</button></div>`
                    //http://localhost:8080/viewFile?file=2021/09/08/aaa.jpg
                    //여기서 this 는 <button>을 의미함
                } else {
                    str += `<div data-uuid='\${uuid}' data-filename='\${fileName}' data-uploadpath='\${uploadPath}' data-image='\${image}'>
                                <a href='/downFile?file=\${fileLink}'> \${fileName}</a></div>`
                    // str += `<div data-uuid='\${uuid}'><a href='/downFile?file=\${fileLink}'>\${fileName}</a></div>`
                    // 다운로드
                    // fileLink -> 파일 위치 경로
                }//if end

            }

            uploadResultDiv1.innerHTML += str
        })

    }, false)

    document.querySelector("#uploadBtn2").addEventListener("click", (e) => {

        // FormData => Ajax form 전송을 가능하게 하는 객체를 생성함으로 메모리상에 공간을 만든다.
        const formData = new FormData()
        const fileInput = document.querySelector("input[name='uploadFiles2']")

        for (let i = 0; i < fileInput.files.length; i++) {
            // ★★★ 여기 주는 이름이 컨트롤러에서 받는 파람의 이름이 됨 ★★★
            formData.append("uploadFiles", fileInput.files[i])
        }

        console.dir(fileInput)
        console.log(formData)

        const headerObj = {headers: {'Content-Type': 'multipart/form-data'}}

        //결과값이 배열로 나올거같지만 안나옴
        axios.post("/upload", formData, headerObj).then((response) => {
            const arr = response.data;
            console.log(arr);

            let str = ""

            for (let i = 0; i < arr.length; i++) {
                // spread 사용
                const {uuid, fileName, uploadPath, image, thumbnail, fileLink} = {...arr[i]}

                console.log("fileLink ", fileLink)
                if (image) {
                    //이미지인 경우
                    //=> 경로 문제 (보안 - 접근제한 필요) / 특정 경로에 이미지 쌓아도 안보임
                    //실제로 톰캣이 돌아갈때랑 워크스페이스가 돌아갈때랑 결과가 다름

                    //[해결방법]
                    //  1. 이미지 서버 분리 (Nginx 간단한 웹서버)
                    //  2. aws 등 클라우드 서비스 이용 - 이미지용 경로 따로 제공
                    //  3. 이미지 볼 수 있게 직접 코드 만들어야함
                    str += `<div data-uuid='\${uuid}' data-filename='\${fileName}' data-uploadpath='\${uploadPath}' data-image='\${image}'>
                            	<img src='/viewFile?file=\${fileLink}'><span>\${fileName}</span>
                                    <button onclick="javascript:removeFile('\${fileLink}', this)">x</button></div>`
                    //http://localhost:8080/viewFile?file=2021/09/08/aaa.jpg
                    //여기서 this 는 <button>을 의미함
                } else {
                    str += `<div data-uuid='\${uuid}' data-filename='\${fileName}' data-uploadpath='\${uploadPath}' data-image='\${image}'>
                                <a href='/downFile?file=\${fileLink}'> \${fileName}</a></div>`
                    // str += `<div data-uuid='\${uuid}'><a href='/downFile?file=\${fileLink}'>\${fileName}</a></div>`
                    // 다운로드
                    // fileLink -> 파일 위치 경로
                }//if end

            }

            uploadResultDiv2.innerHTML += str
        })

    }, false)

    function removeFile(fileLink, ele) {
        console.log("fileLink ", fileLink)

        axios.post("/removeFile", {fileName: fileLink}).then(response => {
            const targetDiv = ele.parentElement

            targetDiv.remove()
        })
    }

</script>


</body>
</html>
