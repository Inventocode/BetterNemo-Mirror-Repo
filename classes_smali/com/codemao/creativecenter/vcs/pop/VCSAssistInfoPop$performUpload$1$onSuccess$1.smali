.class public final Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$performUpload$1$onSuccess$1;
.super Ljava/lang/Object;
.source "VCSAssistInfoPop.kt"

# interfaces
.implements Lcom/codemao/creativecenter/vcs/listener/IBcmProgressPopListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$performUpload$1;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

.field final synthetic this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$performUpload$1;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$performUpload$1;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;",
            ")V"
        }
    .end annotation

    .line 551
    iput-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$performUpload$1$onSuccess$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$performUpload$1;

    iput-object p2, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$performUpload$1$onSuccess$1;->$createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;Ljava/lang/String;)V
    .registers 4

    const-string v0, "pop"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "btnStr"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "取消上传"

    .line 570
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_50

    .line 571
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$performUpload$1$onSuccess$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$performUpload$1;

    iget-object p1, p1, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$performUpload$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->access$setCancelUpload$p(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;Z)V

    .line 572
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$performUpload$1$onSuccess$1;->$createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-static {p1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->cancelUploadBcm(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    .line 573
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$performUpload$1$onSuccess$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$performUpload$1;

    iget-object p1, p1, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$performUpload$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->access$setCurAssistMode$p(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;Z)V

    .line 574
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$performUpload$1$onSuccess$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$performUpload$1;

    iget-object p1, p1, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$performUpload$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    invoke-static {p1}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->access$getProgressPop$p(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;

    move-result-object p1

    if-eqz p1, :cond_35

    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    .line 575
    :cond_35
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$performUpload$1$onSuccess$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$performUpload$1;

    iget-object p1, p1, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$performUpload$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->access$setProgressPop$p(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;)V

    .line 577
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$performUpload$1$onSuccess$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$performUpload$1;

    iget-object p1, p1, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$performUpload$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    invoke-static {p1}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->access$setupMode(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)V

    .line 579
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$performUpload$1$onSuccess$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$performUpload$1;

    iget-boolean p2, p1, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$performUpload$1;->$needDismissRoot:Z

    if-eqz p2, :cond_6e

    .line 580
    iget-object p1, p1, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$performUpload$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    goto :goto_6e

    .line 583
    :cond_50
    iget-object p2, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$performUpload$1$onSuccess$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$performUpload$1;

    iget-object p2, p2, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$performUpload$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    invoke-static {p2}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->access$getProgressPop$p(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;

    move-result-object p2

    if-eqz p2, :cond_60

    const-string/jumbo v0, "作品上传中"

    invoke-virtual {p2, v0, p1}, Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;->setupTxt(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    :cond_60
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$performUpload$1$onSuccess$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$performUpload$1;

    iget-object p1, p1, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$performUpload$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    iget-object p2, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$performUpload$1$onSuccess$1;->$createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    const-string v0, "createData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->access$upload(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    :cond_6e
    :goto_6e
    return-void
.end method

.method public onClose(Ljava/lang/String;)V
    .registers 4

    const-string v0, "btnStr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 554
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$performUpload$1$onSuccess$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$performUpload$1;

    iget-object v0, v0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$performUpload$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    invoke-static {v0}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->access$getProgressPop$p(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    .line 555
    :cond_12
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$performUpload$1$onSuccess$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$performUpload$1;

    iget-object v0, v0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$performUpload$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->access$setProgressPop$p(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;)V

    const-string/jumbo v0, "取消上传"

    .line 557
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4a

    .line 558
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$performUpload$1$onSuccess$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$performUpload$1;

    iget-object p1, p1, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$performUpload$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->access$setCancelUpload$p(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;Z)V

    .line 559
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$performUpload$1$onSuccess$1;->$createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-static {p1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->cancelUploadBcm(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    .line 560
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$performUpload$1$onSuccess$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$performUpload$1;

    iget-object p1, p1, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$performUpload$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->access$setCurAssistMode$p(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;Z)V

    .line 561
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$performUpload$1$onSuccess$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$performUpload$1;

    iget-object p1, p1, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$performUpload$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    invoke-static {p1}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->access$setupMode(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)V

    .line 562
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$performUpload$1$onSuccess$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$performUpload$1;

    iget-boolean v0, p1, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$performUpload$1;->$needDismissRoot:Z

    if-eqz v0, :cond_4a

    .line 563
    iget-object p1, p1, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$performUpload$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    :cond_4a
    return-void
.end method
