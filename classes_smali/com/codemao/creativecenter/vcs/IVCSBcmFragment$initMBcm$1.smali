.class public final Lcom/codemao/creativecenter/vcs/IVCSBcmFragment$initMBcm$1;
.super Ljava/lang/Object;
.source "IVCSBcmFragment.kt"

# interfaces
.implements Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;->initMBcm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 170
    iput-object p1, p0, Lcom/codemao/creativecenter/vcs/IVCSBcmFragment$initMBcm$1;->this$0:Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .registers 6

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 183
    sput-boolean v0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->HAS_BCM_DOWNLOAD:Z

    const/4 v0, 0x0

    .line 184
    sput-object v0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->DOWNLOADING_BCM_ID:Ljava/lang/String;

    .line 185
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/IVCSBcmFragment$initMBcm$1;->this$0:Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Assist works download failed.\n "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;->onLoadBcmError(Ljava/lang/Exception;)V

    return-void
.end method

.method public onSuccess(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V
    .registers 9

    const-string v0, "createData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 172
    sput-boolean v0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->HAS_BCM_DOWNLOAD:Z

    const/4 v0, 0x0

    .line 173
    sput-object v0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->DOWNLOADING_BCM_ID:Ljava/lang/String;

    .line 174
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/IVCSBcmFragment$initMBcm$1;->this$0:Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/NewBcmFragment;->getWorksEvent()Lcom/codemao/creativestore/bean/WorksEvent;

    move-result-object v0

    if-eqz v0, :cond_27

    iget-object v1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    const-string v2, "createData.coverPath"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, ".cover"

    const-string v3, ".bcm"

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/codemao/creativestore/bean/WorksEvent;->srcPath:Ljava/lang/String;

    .line 178
    :cond_27
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/IVCSBcmFragment$initMBcm$1;->this$0:Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/NewBcmFragment;->getWorksEvent()Lcom/codemao/creativestore/bean/WorksEvent;

    move-result-object v0

    if-eqz v0, :cond_34

    iget-boolean p1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->isLandscape:Z

    invoke-virtual {v0, p1}, Lcom/codemao/creativestore/bean/WorksEvent;->setLandscapeStage(Z)V

    .line 179
    :cond_34
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/IVCSBcmFragment$initMBcm$1;->this$0:Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;

    invoke-static {p1}, Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;->access$init(Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;)V

    return-void
.end method
