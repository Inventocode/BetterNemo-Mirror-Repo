.class Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$11;
.super Ljava/lang/Object;
.source "CreativeBcmHelper.java"

# interfaces
.implements Lcom/codemao/creativecenter/utils/bcm/listener/UploadFileCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->uploadSounds(ZLcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Ljava/lang/String;Ljava/util/List;Lcom/codemao/creativestore/bean/UserImgDictVO;Lcom/codemao/creativestore/bean/BcmVO;Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$BcmCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$bcmVO:Lcom/codemao/creativestore/bean/BcmVO;

.field final synthetic val$callBack:Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$BcmCallBack;

.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$needPublishProgress:Z

.field final synthetic val$soundVO:Lcom/codemao/creativestore/bean/SoundVO;


# direct methods
.method constructor <init>(Lcom/codemao/creativestore/bean/SoundVO;Ljava/lang/String;Lcom/codemao/creativestore/bean/BcmVO;ZLcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$BcmCallBack;)V
    .registers 6

    .line 1653
    iput-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$11;->val$soundVO:Lcom/codemao/creativestore/bean/SoundVO;

    iput-object p2, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$11;->val$filePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$11;->val$bcmVO:Lcom/codemao/creativestore/bean/BcmVO;

    iput-boolean p4, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$11;->val$needPublishProgress:Z

    iput-object p5, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$11;->val$callBack:Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$BcmCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .registers 5

    .line 1678
    invoke-static {}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->access$1800()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1679
    invoke-static {}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->access$1800()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_38

    .line 1681
    :try_start_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$11;->val$filePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".bcm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v2, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$11;->val$bcmVO:Lcom/codemao/creativestore/bean/BcmVO;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->writeToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_33} :catch_33

    .line 1685
    :catch_33
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$11;->val$callBack:Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$BcmCallBack;

    invoke-interface {v0, p1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$BcmCallBack;->onError(Ljava/lang/String;)V

    :cond_38
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1657
    :try_start_0
    iget-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$11;->val$soundVO:Lcom/codemao/creativestore/bean/SoundVO;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->access$1500()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/codemao/creativestore/bean/SoundVO;->setUrl(Ljava/lang/String;)V

    .line 1658
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$11;->val$filePath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".bcm"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$11;->val$bcmVO:Lcom/codemao/creativestore/bean/BcmVO;

    invoke-virtual {p2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->writeToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1659
    invoke-static {}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->access$1400()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1660
    iget-boolean p1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$11;->val$needPublishProgress:Z

    if-eqz p1, :cond_60

    .line 1661
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
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_60} :catch_7a

    .line 1669
    :cond_60
    invoke-static {}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->access$1400()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    invoke-static {}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->access$1300()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    add-int/lit8 p2, p2, -0x2

    if-ne p1, p2, :cond_79

    .line 1672
    iget-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$11;->val$callBack:Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$BcmCallBack;

    invoke-interface {p1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$BcmCallBack;->onSuccess()V

    :cond_79
    return-void

    :catch_7a
    nop

    .line 1664
    invoke-static {}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->access$1800()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1665
    invoke-static {}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->access$1800()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_95

    .line 1666
    iget-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$11;->val$callBack:Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$BcmCallBack;

    const-string/jumbo p2, "语音上传失败"

    invoke-interface {p1, p2}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$BcmCallBack;->onError(Ljava/lang/String;)V

    :cond_95
    return-void
.end method
