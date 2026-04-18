.class Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$13;
.super Ljava/lang/Object;
.source "CreativeBcmHelper.java"

# interfaces
.implements Lcom/codemao/creativecenter/utils/bcm/listener/UploadFileCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->uploadImageList(ZLcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Ljava/lang/String;Ljava/util/List;Lcom/codemao/creativestore/bean/UserImgDictVO;Lcom/codemao/creativestore/bean/BcmVO;Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$BcmCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$bcmVO:Lcom/codemao/creativestore/bean/BcmVO;

.field final synthetic val$callBack:Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$BcmCallBack;

.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$imgs:Ljava/util/List;

.field final synthetic val$needPublishProgress:Z

.field final synthetic val$uploadImg:Lcom/codemao/creativestore/bean/StyleVO;


# direct methods
.method constructor <init>(Lcom/codemao/creativestore/bean/StyleVO;Ljava/lang/String;Lcom/codemao/creativestore/bean/BcmVO;ZLcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$BcmCallBack;Ljava/util/List;)V
    .registers 7

    .line 1773
    iput-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$13;->val$uploadImg:Lcom/codemao/creativestore/bean/StyleVO;

    iput-object p2, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$13;->val$filePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$13;->val$bcmVO:Lcom/codemao/creativestore/bean/BcmVO;

    iput-boolean p4, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$13;->val$needPublishProgress:Z

    iput-object p5, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$13;->val$callBack:Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$BcmCallBack;

    iput-object p6, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$13;->val$imgs:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .registers 5

    .line 1799
    invoke-static {}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->access$1800()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1800
    invoke-static {}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->access$1800()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_38

    .line 1802
    :try_start_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$13;->val$filePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".bcm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v2, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$13;->val$bcmVO:Lcom/codemao/creativestore/bean/BcmVO;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->writeToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_33} :catch_33

    .line 1806
    :catch_33
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$13;->val$callBack:Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$BcmCallBack;

    invoke-interface {v0, p1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$BcmCallBack;->onError(Ljava/lang/String;)V

    :cond_38
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1778
    :try_start_0
    iget-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$13;->val$uploadImg:Lcom/codemao/creativestore/bean/StyleVO;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->access$1500()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/codemao/creativestore/bean/StyleVO;->setUrl(Ljava/lang/String;)V

    .line 1779
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$13;->val$filePath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".bcm"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$13;->val$bcmVO:Lcom/codemao/creativestore/bean/BcmVO;

    invoke-virtual {p2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->writeToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1780
    invoke-static {}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->access$1400()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1781
    iget-boolean p1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$13;->val$needPublishProgress:Z

    if-eqz p1, :cond_60

    .line 1782
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/codemao/creativecenter/utils/bcm/events/UploadProgressEvent;

    invoke-static {}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->access$1300()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->access$1400()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-direct {p2, v0, v1}, Lcom/codemao/creativecenter/utils/bcm/events/UploadProgressEvent;-><init>(II)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_60} :catch_76

    .line 1790
    :cond_60
    invoke-static {}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->access$1400()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    iget-object p2, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$13;->val$imgs:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ne p1, p2, :cond_75

    .line 1793
    iget-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$13;->val$callBack:Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$BcmCallBack;

    invoke-interface {p1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$BcmCallBack;->onSuccess()V

    :cond_75
    return-void

    :catch_76
    nop

    .line 1785
    invoke-static {}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->access$1800()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1786
    invoke-static {}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->access$1800()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_91

    .line 1787
    iget-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$13;->val$callBack:Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$BcmCallBack;

    const-string/jumbo p2, "图片上传失败"

    invoke-interface {p1, p2}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$BcmCallBack;->onError(Ljava/lang/String;)V

    :cond_91
    return-void
.end method
