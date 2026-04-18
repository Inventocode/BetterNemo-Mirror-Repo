.class public final Lcom/codemao/creativecenter/NewBcmFragment$downloadAndLoadNewBcmWork$1;
.super Ljava/lang/Object;
.source "NewBcmFragment.kt"

# interfaces
.implements Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/NewBcmFragment;->downloadAndLoadNewBcmWork(Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $callback:Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;

.field final synthetic $workId:Ljava/lang/String;

.field final synthetic this$0:Lcom/codemao/creativecenter/NewBcmFragment;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/NewBcmFragment;Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;",
            ")V"
        }
    .end annotation

    .line 3488
    iput-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment$downloadAndLoadNewBcmWork$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    iput-object p2, p0, Lcom/codemao/creativecenter/NewBcmFragment$downloadAndLoadNewBcmWork$1;->$workId:Ljava/lang/String;

    iput-object p3, p0, Lcom/codemao/creativecenter/NewBcmFragment$downloadAndLoadNewBcmWork$1;->$callback:Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .registers 3

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3504
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment$downloadAndLoadNewBcmWork$1;->$callback:Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;

    if-eqz v0, :cond_c

    invoke-interface {v0, p1}, Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;->onError(Ljava/lang/String;)V

    :cond_c
    return-void
.end method

.method public onSuccess(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V
    .registers 6

    const-string v0, "createData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3490
    new-instance v0, Lcom/codemao/creativestore/bean/WorksEvent;

    invoke-direct {v0}, Lcom/codemao/creativestore/bean/WorksEvent;-><init>()V

    const/4 v1, 0x1

    .line 3491
    iput v1, v0, Lcom/codemao/creativestore/bean/WorksEvent;->type:I

    .line 3492
    iget-object v2, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->worksName:Ljava/lang/String;

    iput-object v2, v0, Lcom/codemao/creativestore/bean/WorksEvent;->name:Ljava/lang/String;

    .line 3493
    iget v2, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishStatus:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_17

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    iput-boolean v1, v0, Lcom/codemao/creativestore/bean/WorksEvent;->havePublished:Z

    .line 3494
    iget-boolean v1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->have_published_status:Z

    iput-boolean v1, v0, Lcom/codemao/creativestore/bean/WorksEvent;->havePublishStatus:Z

    .line 3495
    iget-object v1, p0, Lcom/codemao/creativecenter/NewBcmFragment$downloadAndLoadNewBcmWork$1;->$workId:Ljava/lang/String;

    iput-object v1, v0, Lcom/codemao/creativestore/bean/WorksEvent;->workId:Ljava/lang/String;

    .line 3497
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->getPrefixPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".bcm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/codemao/creativestore/bean/WorksEvent;->srcPath:Ljava/lang/String;

    .line 3498
    iget-boolean v1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->isLandscape:Z

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/bean/WorksEvent;->setLandscapeStage(Z)V

    .line 3499
    iget-object v1, p0, Lcom/codemao/creativecenter/NewBcmFragment$downloadAndLoadNewBcmWork$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-virtual {v1, v0}, Lcom/codemao/creativecenter/NewBcmFragment;->changeBcm(Lcom/codemao/creativestore/bean/WorksEvent;)V

    .line 3500
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment$downloadAndLoadNewBcmWork$1;->$callback:Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;

    if-eqz v0, :cond_4c

    invoke-interface {v0, p1}, Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;->onSuccess(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    :cond_4c
    return-void
.end method
