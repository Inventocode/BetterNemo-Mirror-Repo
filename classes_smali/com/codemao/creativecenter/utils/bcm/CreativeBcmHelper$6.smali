.class Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$6;
.super Ljava/lang/Object;
.source "CreativeBcmHelper.java"

# interfaces
.implements Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$BcmCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->justDownloadImg(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;Lcom/codemao/creativestore/bean/UserImgDictVO;Lcom/codemao/creativestore/bean/BcmVO;Ljava/util/Map;Ljava/lang/String;Lcom/codemao/creativestore/bean/StyleVO;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$bcmVO:Lcom/codemao/creativestore/bean/BcmVO;

.field final synthetic val$callBack:Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;

.field final synthetic val$createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$oldData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

.field final synthetic val$styleVO:Lcom/codemao/creativestore/bean/StyleVO;

.field final synthetic val$userImgDictVO:Lcom/codemao/creativestore/bean/UserImgDictVO;

.field final synthetic val$userMap:Ljava/util/Map;

.field final synthetic val$uuid:Ljava/lang/String;

.field final synthetic val$workDetailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;


# direct methods
.method constructor <init>(Lcom/codemao/creativestore/bean/StyleVO;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/codemao/creativestore/bean/UserImgDictVO;Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativestore/bean/BcmVO;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;)V
    .registers 12

    .line 1058
    iput-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$6;->val$styleVO:Lcom/codemao/creativestore/bean/StyleVO;

    iput-object p2, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$6;->val$uuid:Ljava/lang/String;

    iput-object p3, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$6;->val$key:Ljava/lang/String;

    iput-object p4, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$6;->val$userMap:Ljava/util/Map;

    iput-object p5, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$6;->val$userImgDictVO:Lcom/codemao/creativestore/bean/UserImgDictVO;

    iput-object p6, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$6;->val$filePath:Ljava/lang/String;

    iput-object p7, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$6;->val$createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iput-object p8, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$6;->val$oldData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iput-object p9, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$6;->val$bcmVO:Lcom/codemao/creativestore/bean/BcmVO;

    iput-object p10, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$6;->val$workDetailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    iput-object p11, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$6;->val$callBack:Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .registers 4

    .line 1087
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$6;->val$createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-object v1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$6;->val$callBack:Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;

    invoke-static {v0, v1, p1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->access$100(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess()V
    .registers 10

    .line 1061
    invoke-static {}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->access$400()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1062
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/codemao/creativecenter/utils/bcm/events/DownloadProgressEvent;

    invoke-static {}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->access$500()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-static {}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->access$400()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/codemao/creativecenter/utils/bcm/events/DownloadProgressEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1064
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$6;->val$styleVO:Lcom/codemao/creativestore/bean/StyleVO;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/StyleVO;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6f

    .line 1065
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->USER_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "user_material"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$6;->val$uuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".webp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1066
    new-instance v1, Lcom/codemao/creativestore/bean/ImgDictVO;

    invoke-direct {v1}, Lcom/codemao/creativestore/bean/ImgDictVO;-><init>()V

    .line 1067
    iget-object v2, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$6;->val$key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/codemao/creativestore/bean/ImgDictVO;->setId(Ljava/lang/String;)V

    .line 1068
    invoke-virtual {v1, v0}, Lcom/codemao/creativestore/bean/ImgDictVO;->setPath(Ljava/lang/String;)V

    .line 1069
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$6;->val$userMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$6;->val$key:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1070
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$6;->val$userImgDictVO:Lcom/codemao/creativestore/bean/UserImgDictVO;

    iget-object v1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$6;->val$userMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/bean/UserImgDictVO;->setUser_img_dict(Ljava/util/Map;)V

    .line 1073
    :cond_6f
    :try_start_6f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$6;->val$filePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".userimg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$6;->val$userImgDictVO:Lcom/codemao/creativestore/bean/UserImgDictVO;

    invoke-virtual {v1, v2}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->toJsonStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->writeToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    invoke-static {}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->access$500()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->access$400()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ne v0, v1, :cond_cf

    .line 1075
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$6;->val$createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-static {v0}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->removeDownloadData(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    .line 1076
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$6;->val$createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    const/4 v1, 0x2

    iput v1, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->downloadStatus:I

    .line 1077
    iget-object v0, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->worksName:Ljava/lang/String;

    invoke-static {v0}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->access$700(Ljava/lang/String;)V

    .line 1078
    iget-object v1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$6;->val$oldData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-object v6, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$6;->val$createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-object v2, v6, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->worksName:Ljava/lang/String;

    iget-object v3, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$6;->val$filePath:Ljava/lang/String;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$6;->val$bcmVO:Lcom/codemao/creativestore/bean/BcmVO;

    iget-object v7, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$6;->val$workDetailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    iget-object v8, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$6;->val$callBack:Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;

    invoke-static/range {v1 .. v8}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->access$800(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Ljava/lang/String;Ljava/lang/String;ZLcom/codemao/creativestore/bean/BcmVO;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;)V
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_c2} :catch_c3

    goto :goto_cf

    :catch_c3
    move-exception v0

    .line 1081
    iget-object v1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$6;->val$createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-object v2, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$6;->val$callBack:Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->access$100(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;Ljava/lang/String;)V

    :cond_cf
    :goto_cf
    return-void
.end method
