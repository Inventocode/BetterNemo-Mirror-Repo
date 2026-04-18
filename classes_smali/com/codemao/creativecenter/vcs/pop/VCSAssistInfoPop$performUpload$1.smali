.class public final Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$performUpload$1;
.super Ljava/lang/Object;
.source "VCSAssistInfoPop.kt"

# interfaces
.implements Lcom/codemao/creativestore/listener/SaveBcmCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->performUpload(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $needDismissRoot:Z

.field final synthetic this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 540
    iput-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$performUpload$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    iput-boolean p2, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$performUpload$1;->$needDismissRoot:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .registers 4

    .line 599
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$performUpload$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    invoke-static {p1}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->access$getProgressPop$p(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;

    move-result-object p1

    if-eqz p1, :cond_10

    const-string v0, "上传失败"

    const-string/jumbo v1, "重试"

    invoke-virtual {p1, v0, v1}, Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;->setupTxt(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    :cond_10
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$performUpload$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->access$setCurAssistMode$p(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;Z)V

    .line 601
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$performUpload$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    invoke-static {p1}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->access$setupMode(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .registers 8

    .line 542
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 545
    :cond_7
    invoke-static {p1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->getBcmByUuid(Ljava/lang/String;)Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    move-result-object p1

    .line 546
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$performUpload$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    invoke-static {v0}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->access$getProgressPop$p(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;

    move-result-object v0

    const-string/jumbo v1, "取消上传"

    const-string/jumbo v2, "作品上传中"

    if-nez v0, :cond_2e

    .line 547
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$performUpload$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    sget-object v3, Lcom/codemao/creativecenter/vcs/utils/VCSProgressPopManager;->INSTANCE:Lcom/codemao/creativecenter/vcs/utils/VCSProgressPopManager;

    .line 548
    invoke-virtual {v0}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->getCtx()Landroid/content/Context;

    move-result-object v4

    .line 551
    new-instance v5, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$performUpload$1$onSuccess$1;

    invoke-direct {v5, p0, p1}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$performUpload$1$onSuccess$1;-><init>(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$performUpload$1;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    .line 547
    invoke-virtual {v3, v4, v2, v1, v5}, Lcom/codemao/creativecenter/vcs/utils/VCSProgressPopManager;->showPop(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/codemao/creativecenter/vcs/listener/IBcmProgressPopListener;)Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->access$setProgressPop$p(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;)V

    goto :goto_6b

    .line 590
    :cond_2e
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$performUpload$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    invoke-static {v0}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->access$getProgressPop$p(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;

    move-result-object v0

    if-nez v0, :cond_39

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_39
    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->isDismiss()Z

    move-result v0

    if-nez v0, :cond_4f

    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$performUpload$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    invoke-static {v0}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->access$getProgressPop$p(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;

    move-result-object v0

    if-eqz v0, :cond_4a

    iget-object v0, v0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupStatus:Lcom/nemo/commonui/xpopup/enums/PopupStatus;

    goto :goto_4b

    :cond_4a
    const/4 v0, 0x0

    :goto_4b
    sget-object v3, Lcom/nemo/commonui/xpopup/enums/PopupStatus;->Dismissing:Lcom/nemo/commonui/xpopup/enums/PopupStatus;

    if-ne v0, v3, :cond_6b

    .line 591
    :cond_4f
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$performUpload$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    invoke-static {v0}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->access$getProgressPop$p(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;

    move-result-object v0

    if-nez v0, :cond_5a

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5a
    invoke-virtual {v0, v2, v1}, Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;->setupTxt(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$performUpload$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    invoke-static {v0}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->access$getProgressPop$p(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;

    move-result-object v0

    if-nez v0, :cond_68

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_68
    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    .line 595
    :cond_6b
    :goto_6b
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$performUpload$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    const-string v1, "createData"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->access$upload(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    return-void
.end method
