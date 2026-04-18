.class Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$10;
.super Ljava/lang/Object;
.source "CreativeBcmHelper.java"

# interfaces
.implements Lcom/codemao/creativecenter/utils/bcm/listener/UploadFileCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->uploadBcmAndCover(ZZLcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Ljava/lang/String;IZLjava/lang/String;Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$bcmName:Ljava/lang/String;

.field final synthetic val$callBack:Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;

.field final synthetic val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$keepStatus:Z

.field final synthetic val$needBindWorkId:Z

.field final synthetic val$needPublishProgress:Z

.field final synthetic val$type:I

.field final synthetic val$workVO:Lcom/codemao/creativecenter/utils/bcm/bean/WorkVO;


# direct methods
.method public static synthetic $r8$lambda$6EqjuDduZuOqcLX4F93NjRg-j2g(Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$10;->lambda$onError$0(Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(ZLcom/codemao/creativecenter/utils/bcm/bean/WorkVO;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;ZLcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;IZLjava/lang/String;Ljava/lang/String;)V
    .registers 10

    .line 1606
    iput-boolean p1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$10;->val$needPublishProgress:Z

    iput-object p2, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$10;->val$workVO:Lcom/codemao/creativecenter/utils/bcm/bean/WorkVO;

    iput-object p3, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$10;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iput-boolean p4, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$10;->val$needBindWorkId:Z

    iput-object p5, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$10;->val$callBack:Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;

    iput p6, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$10;->val$type:I

    iput-boolean p7, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$10;->val$keepStatus:Z

    iput-object p8, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$10;->val$filePath:Ljava/lang/String;

    iput-object p9, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$10;->val$bcmName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic lambda$onError$0(Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;Ljava/lang/String;)V
    .registers 2

    .line 1642
    invoke-interface {p0, p1}, Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;->onError(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .registers 4

    .line 1642
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$10;->val$callBack:Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;

    new-instance v1, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$10$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$10$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->access$1100(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    .line 1610
    iget-boolean p1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$10;->val$needPublishProgress:Z

    if-eqz p1, :cond_22

    .line 1611
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/codemao/creativecenter/utils/bcm/events/UploadProgressEvent;

    invoke-static {}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->access$1300()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-static {}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->access$1400()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/codemao/creativecenter/utils/bcm/events/UploadProgressEvent;-><init>(II)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1613
    :cond_22
    iget-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$10;->val$workVO:Lcom/codemao/creativecenter/utils/bcm/bean/WorkVO;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->access$1500()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/creativecenter/utils/bcm/bean/WorkVO;->setWork_url(Ljava/lang/String;)V

    .line 1614
    iget-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$10;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->access$1500()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->bcm_url:Ljava/lang/String;

    .line 1615
    iget-boolean p1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$10;->val$needBindWorkId:Z

    if-nez p1, :cond_61

    .line 1616
    iget-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$10;->val$callBack:Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;

    iget-object p2, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$10;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-object p2, p2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->bcm_url:Ljava/lang/String;

    const-string v0, ""

    invoke-interface {p1, v0, v0, p2}, Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;->onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1620
    :cond_61
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$10;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-object v0, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_86

    .line 1621
    iget-boolean v0, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$10;->val$needPublishProgress:Z

    const/4 v1, 0x0

    iget v2, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$10;->val$type:I

    iget-boolean v3, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$10;->val$keepStatus:Z

    iget-object v4, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$10;->val$filePath:Ljava/lang/String;

    iget-object v5, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$10;->val$bcmName:Ljava/lang/String;

    iget-object v6, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$10;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-object v7, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$10;->val$workVO:Lcom/codemao/creativecenter/utils/bcm/bean/WorkVO;

    iget-object v9, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$10;->val$callBack:Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;

    move-object v8, p2

    invoke-static/range {v0 .. v9}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->access$1600(ZZIZLjava/lang/String;Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/bean/WorkVO;Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;)V

    return-void

    .line 1624
    :cond_86
    iget-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$10;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-object p2, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$10;->val$filePath:Ljava/lang/String;

    const/4 v0, 0x2

    new-instance v1, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$10$1;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$10$1;-><init>(Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$10;)V

    invoke-static {p1, p2, v0, v1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->access$1700(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Ljava/lang/String;ILcom/codemao/creativecenter/utils/bcm/listener/UploadFileCallBack;)V

    return-void
.end method
