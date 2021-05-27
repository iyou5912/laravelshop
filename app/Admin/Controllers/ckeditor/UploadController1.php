<?php

namespace App\Admin\Controllers\ckeditor;

use Encore\Admin\Admin;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class UploadController extends Controller
{
    public function image(Request $request) {
        $ck = $request->get('CKEditorFuncNum');
        // upload为ckeditor默认的file提交ID
        if ($request->hasFile('upload')) {
            // 从请求数据内容中取出图片的内容
            $file = $request->file('upload');
            //允许的图片后缀
            $allowed_extensions = ["png", "jpg", "gif", 'jpeg'];

            if ($file->getClientOriginalExtension() && !in_array($file->getClientOriginalExtension(), $allowed_extensions)) {
                $mes = json_encode(["message" => "请上传正确的图片类型，支持jpg, png, gif, jpeg类型"]);
                $res = ["uploaded" => 0, "error" => json_decode($mes)];
                return $res;
            }
            //图片存放路径 $destinationPath = getenv('UPLOAD_FILE_PATH')
            $filePath = 'uploads/images/' . date('Ym') . '/';
            // 获得文件后缀
            $extension = $file->getClientOriginalExtension();
            // 创建图片名字
            $fileName = md5(time()) . '.' . $extension;
            //存储图片到路径
            $result = $file->move($filePath, $fileName);
            // 输出图片网站中浏览路径
            $url = '/' . $filePath . $fileName;
            //echo $url;
            $res = ["uploaded" => 1, "fileName" => $fileName, "url" => $url];
            return $res;
        }
    }
}
