package work.pcdd.qndxx.entity.dto;

import lombok.Data;
import org.springframework.web.multipart.MultipartFile;

/**
 * @author pcdd
 */
@Data
public class FileUploadDTO {

    private MultipartFile file;
    private String userId;
    private String username;
    private String organizeName;
    /**
     * 图片类型：upload1、upload2 分别表示朋友圈截图，首页截图
     */
    private String type;

}
