package com.denny.shopmarket.common.controller;

import com.denny.shopmarket.common.dto.UploadResponseDTO;
import lombok.extern.log4j.Log4j2;
import net.coobird.thumbnailator.Thumbnailator;
import org.springframework.http.HttpHeaders;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;


import java.io.File;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.*;

@Controller
@Log4j2
public class UploadController {

    @GetMapping("/sample/upload")
    public void uploadGet() {
        log.info("--------------------------");
    }

    @GetMapping("/downFile")
    public ResponseEntity<byte[]> download(@RequestParam("file") String fileName) throws Exception {

        // path 따고
        String upPath = "C:\\Users\\bumre\\Personal Project\\upload";

        // file 지정하고
        File file = new File(upPath + File.separator + fileName);

        String originalFileName = fileName.substring(fileName.indexOf("_") + 1);

        // header 에 Content-Type 정의하고
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/octet-stream");
        headers.add("Content-Disposition", "attachment; fileName=" + new String(originalFileName.getBytes(StandardCharsets.UTF_8), "ISO-8859-1"));
        // Content-Disposition 을 attachment 와 함께 사용했을때는 body 에 있는 data 를 fileName 으로 다운받으라!!! 라는 뜻이다. 그래서 이름을 OriginalName 으로 지정한 것이다.
        // 즉 Body 에 있는 Data 는 데이터데로 다운 되는 거고 그것에 대한 이름을 지정해주는 것이다.

        // 지정된 file 을 byte[] 데이터로 만들어서 다운로드 준비 시킨다.
        byte[] data = FileCopyUtils.copyToByteArray(file);

        // 위에 만들어 놓은 header 정보와 다운로드 대기중인 file 의 byte data 를 리턴하여 다운로드 진행한다.
        return ResponseEntity.ok().headers(headers).body(data);
    }

    @GetMapping("/viewFile")
    @ResponseBody
    public ResponseEntity<byte[]> viewFile(@RequestParam("file") String fileName) throws Exception {

        String upPath = "C:\\Users\\bumre\\Personal Project\\upload";

        // 위에 있는 path 와 fileName path 가 합쳐저 그 끝에 있는 file 을 path 경로에 맞게 폴더들을 뒤져서 이미지 파일 지정.
        File file = new File(upPath + File.separator + fileName);

        // file 존재 여부 확인
        log.info(file);

        ResponseEntity<byte[]> result = null;

        // File 객체에 들어간 file 을 byte[] 배열로 데이터화 시킴
        byte[] data = FileCopyUtils.copyToByteArray(file);

        String mimeType = Files.probeContentType(file.toPath());

        result = ResponseEntity.ok().header("Content-Type", mimeType).body(data);

        log.info("mimetype =" + mimeType);
        log.info("result = " + result);

        return result;

    }

    @ResponseBody
    @PostMapping("/removeFile")
    public ResponseEntity<String> removeFile(@RequestBody Map<String, String> data) throws Exception {
        // 여기서는 결과가 그냥 문자열이면 된다. "삭제 되었다." 면 되니까 문자열로 반환한다.
        // ResponseEntity 는 사용자의 HttpRequest 에 대한 응답 데이터를 포함하는 클래스.
        // 그러니까 요청에 대해서 저 String 데이터를 가지고 응답을 한다는 뜻 인것 같다.
        // 즉 String 으로 웹에 반환한다는 뜻 같음.

        String upPath = "C:\\Users\\bumre\\Personal Project\\upload";

        // 위에 있는 path 와 fileName path 가 합쳐저 그 끝에 있는 file 을 지정.
        File file = new File(upPath + File.separator + data.get("fileName"));

        // file 이 image 파일인지 확인
        boolean checkImage = Files.probeContentType(file.toPath()).startsWith("image");

        // 원본 파일 삭제
        file.delete();

        if (checkImage) {
            File thumbnail = new File(file.getParent(), "s_" + file.getName());
            // file.getParent 는 폴더를 가리킨다. file.getName 은 원본 파일의 이름이고 거기에 s_ 가 붙으면 그것이 바로
            // 그 원본 파일의 썸네일이다. 그래서 위에서 지정된 원본 파일의 썸네일 파일도 같이 지정한 것이다.
            log.info(thumbnail);
            // 원본 파일과 함께 썸네일 파일도 삭제
            thumbnail.delete();
        }

        return ResponseEntity.ok().body("delete complete");
    }


    @ResponseBody
    @PostMapping("/upload")
    public List<UploadResponseDTO> uploadPost(MultipartFile[] uploadFiles ) {
        log.info("------------------------------");

        if (uploadFiles != null && uploadFiles.length > 0) {

            List<UploadResponseDTO> uploadList = new ArrayList<>();

            for (MultipartFile multipartFile : uploadFiles) {
                try {
                    uploadList.add(uploadProcess(multipartFile));
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            return uploadList;
        }
        return null;
    }

    private UploadResponseDTO uploadProcess(MultipartFile multipartFile) throws Exception {

        String uploadPath = "C:\\Users\\bumre\\Personal Project\\upload";

        String folderName = makeFolder(uploadPath);

        String fileName = multipartFile.getOriginalFilename();

        String uuid = UUID.randomUUID().toString();

        String originalName = multipartFile.getOriginalFilename();

        fileName = uuid+"_"+fileName;

        File saveFile = new File(uploadPath + File.separator + folderName, fileName);


        FileCopyUtils.copy(multipartFile.getBytes(), saveFile);

        // Thumbnail 처리
        String mimeType = multipartFile.getContentType();
        boolean checkImage = mimeType.startsWith("image");
        if(mimeType.startsWith("image")) {
            File thumnailFile = new File(uploadPath + File.separator + folderName, "s_"+fileName);
            Thumbnailator.createThumbnail(saveFile, thumnailFile,100,100);
        }

        return UploadResponseDTO.builder()
                .uuid(uuid)
                .uploadPath(folderName.replace(File.separator, "/"))
                .fileName(originalName)
                .image(checkImage)
                .build();
    }

    private String makeFolder(String uploadPath) {

        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");

        Date date = new Date();
        String str = simpleDateFormat.format(date);
        String folderName = str.replace("-", File.separator);
        File uploadFolder = new File(uploadPath, folderName);
        if (uploadFolder.exists() == false) {
            uploadFolder.mkdirs();
        }

        return folderName;
    }

}
