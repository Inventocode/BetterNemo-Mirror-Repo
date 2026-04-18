.class public final Lcom/codemao/toolssdk/constant/CMTStatus$Companion;
.super Ljava/lang/Object;
.source "CMTStatus.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/toolssdk/constant/CMTStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/codemao/toolssdk/constant/CMTStatus$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDescription(I)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x7d0

    if-eq p1, v0, :cond_83

    const/16 v0, 0xfa1

    if-eq p1, v0, :cond_80

    packed-switch p1, :pswitch_data_86

    packed-switch p1, :pswitch_data_90

    packed-switch p1, :pswitch_data_a0

    packed-switch p1, :pswitch_data_b2

    packed-switch p1, :pswitch_data_c8

    packed-switch p1, :pswitch_data_d2

    const-string p1, "未知错误"

    return-object p1

    :pswitch_1d  #0x1bf3
    const-string p1, "摄像头关闭失败"

    return-object p1

    :pswitch_20  #0x1bf2
    const-string p1, "摄像头切换失败"

    return-object p1

    :pswitch_23  #0x1bf1
    const-string p1, "摄像头拍照失败"

    return-object p1

    :pswitch_26  #0x1bf0
    const-string p1, "摄像头启动失败"

    return-object p1

    :pswitch_29  #0x1bef
    const-string p1, "摄像头权限被拒绝"

    return-object p1

    :pswitch_2c  #0x1bdc
    const-string p1, "zip config接口请求失败"

    return-object p1

    :pswitch_2f  #0x1bdb
    const-string p1, "zip包解压失败"

    return-object p1

    :pswitch_32  #0x1bda
    const-string p1, "zip下载失败"

    return-object p1

    :pswitch_35  #0x1bd8
    const-string p1, "本地不存在该文件"

    return-object p1

    :pswitch_38  #0x1bd7
    const-string p1, "无法读取图片"

    return-object p1

    :pswitch_3b  #0x1bd6
    const-string p1, "设备不支持"

    return-object p1

    :pswitch_3e  #0x1bd5
    const-string p1, "参数错误"

    return-object p1

    :pswitch_41  #0x1bd4
    const-string p1, "当前有任务在执行"

    return-object p1

    :pswitch_44  #0x1bd3
    const-string p1, "图片转data失败"

    return-object p1

    :pswitch_47  #0x1bd2
    const-string p1, "图片写入本地失败"

    return-object p1

    :pswitch_4a  #0x1bd1
    const-string p1, "用户取消"

    return-object p1

    :pswitch_4d  #0x1bd0
    const-string p1, "相册权限被拒"

    return-object p1

    :pswitch_50  #0x1bc2
    const-string p1, "录音参数无效"

    return-object p1

    :pswitch_53  #0x1bc1
    const-string p1, "获取音频时长错误"

    return-object p1

    :pswitch_56  #0x1bc0
    const-string p1, "录音文件丢失"

    return-object p1

    :pswitch_59  #0x1bbf
    const-string p1, "录音文件路径url为nil"

    return-object p1

    :pswitch_5c  #0x1bbe
    const-string p1, "录音权限被拒绝"

    return-object p1

    :pswitch_5f  #0x1bbd
    const-string p1, "删除文件失败"

    return-object p1

    :pswitch_62  #0x1bbc
    const-string p1, "当前正在录音"

    return-object p1

    :pswitch_65  #0x1b8f
    const-string p1, "jsConfigSDK超时"

    return-object p1

    :pswitch_68  #0x1b8e
    const-string p1, "js方法的回调处理异常"

    return-object p1

    :pswitch_6b  #0x1b8d
    const-string p1, "调用js参数非json格式"

    return-object p1

    :pswitch_6e  #0x1b8c
    const-string p1, "调用js方法超时"

    return-object p1

    :pswitch_71  #0x1b8b
    const-string p1, "不存在js方法"

    return-object p1

    :pswitch_74  #0x1b8a
    const-string p1, "调用js方法返回非预期数据结构"

    return-object p1

    :pswitch_77  #0x1b5a
    const-string p1, "无效的webview数据"

    return-object p1

    :pswitch_7a  #0x1b59
    const-string p1, "无效url参数"

    return-object p1

    :pswitch_7d  #0x1b58
    const-string p1, "请初始化工具"

    return-object p1

    :cond_80
    const-string p1, "初始化未完成"

    return-object p1

    :cond_83
    const-string p1, "成功"

    return-object p1

    :pswitch_data_86
    .packed-switch 0x1b58
        :pswitch_7d  #00001b58
        :pswitch_7a  #00001b59
        :pswitch_77  #00001b5a
    .end packed-switch

    :pswitch_data_90
    .packed-switch 0x1b8a
        :pswitch_74  #00001b8a
        :pswitch_71  #00001b8b
        :pswitch_6e  #00001b8c
        :pswitch_6b  #00001b8d
        :pswitch_68  #00001b8e
        :pswitch_65  #00001b8f
    .end packed-switch

    :pswitch_data_a0
    .packed-switch 0x1bbc
        :pswitch_62  #00001bbc
        :pswitch_5f  #00001bbd
        :pswitch_5c  #00001bbe
        :pswitch_59  #00001bbf
        :pswitch_56  #00001bc0
        :pswitch_53  #00001bc1
        :pswitch_50  #00001bc2
    .end packed-switch

    :pswitch_data_b2
    .packed-switch 0x1bd0
        :pswitch_4d  #00001bd0
        :pswitch_4a  #00001bd1
        :pswitch_47  #00001bd2
        :pswitch_44  #00001bd3
        :pswitch_41  #00001bd4
        :pswitch_3e  #00001bd5
        :pswitch_3b  #00001bd6
        :pswitch_38  #00001bd7
        :pswitch_35  #00001bd8
    .end packed-switch

    :pswitch_data_c8
    .packed-switch 0x1bda
        :pswitch_32  #00001bda
        :pswitch_2f  #00001bdb
        :pswitch_2c  #00001bdc
    .end packed-switch

    :pswitch_data_d2
    .packed-switch 0x1bef
        :pswitch_29  #00001bef
        :pswitch_26  #00001bf0
        :pswitch_23  #00001bf1
        :pswitch_20  #00001bf2
        :pswitch_1d  #00001bf3
    .end packed-switch
.end method

.method public final getLoadErrorStr(I)Lcom/codemao/toolssdk/constant/ErrorLoadModel;
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_36

    .line 216
    new-instance v0, Lcom/codemao/toolssdk/constant/ErrorLoadModel;

    const-string v2, "意外发生啦，请点击重试"

    invoke-direct {v0, p1, v2, v1}, Lcom/codemao/toolssdk/constant/ErrorLoadModel;-><init>(ILjava/lang/String;Z)V

    return-object v0

    .line 213
    :pswitch_d  #0x7b7f
    new-instance v1, Lcom/codemao/toolssdk/constant/ErrorLoadModel;

    const-string v2, "无权限打开该作品"

    invoke-direct {v1, p1, v2, v0}, Lcom/codemao/toolssdk/constant/ErrorLoadModel;-><init>(ILjava/lang/String;Z)V

    return-object v1

    .line 210
    :pswitch_15  #0x7b7e
    new-instance v1, Lcom/codemao/toolssdk/constant/ErrorLoadModel;

    const-string v2, "该作品不存在"

    invoke-direct {v1, p1, v2, v0}, Lcom/codemao/toolssdk/constant/ErrorLoadModel;-><init>(ILjava/lang/String;Z)V

    return-object v1

    .line 207
    :pswitch_1d  #0x7b7d
    new-instance v1, Lcom/codemao/toolssdk/constant/ErrorLoadModel;

    const-string v2, "登录态失效，请先登录"

    invoke-direct {v1, p1, v2, v0}, Lcom/codemao/toolssdk/constant/ErrorLoadModel;-><init>(ILjava/lang/String;Z)V

    return-object v1

    .line 204
    :pswitch_25  #0x7b7c
    new-instance v0, Lcom/codemao/toolssdk/constant/ErrorLoadModel;

    const-string v2, "加载超时，请重试"

    invoke-direct {v0, p1, v2, v1}, Lcom/codemao/toolssdk/constant/ErrorLoadModel;-><init>(ILjava/lang/String;Z)V

    return-object v0

    .line 201
    :pswitch_2d  #0x7b7b
    new-instance v0, Lcom/codemao/toolssdk/constant/ErrorLoadModel;

    const-string v2, "网络异常，请重试"

    invoke-direct {v0, p1, v2, v1}, Lcom/codemao/toolssdk/constant/ErrorLoadModel;-><init>(ILjava/lang/String;Z)V

    return-object v0

    nop

    :pswitch_data_36
    .packed-switch 0x7b7b
        :pswitch_2d  #00007b7b
        :pswitch_25  #00007b7c
        :pswitch_1d  #00007b7d
        :pswitch_15  #00007b7e
        :pswitch_d  #00007b7f
    .end packed-switch
.end method
