.class public final Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$download$1$onSuccess$1;
.super Ljava/lang/Object;
.source "VCSAssistInfoPop.kt"

# interfaces
.implements Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$download$1;->onSuccess(Lcom/codemao/creativecenter/vcs/bean/RecoverInfoBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$download$1;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$download$1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 384
    iput-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$download$1$onSuccess$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$download$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .registers 4

    .line 396
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$download$1$onSuccess$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$download$1;

    iget-object p1, p1, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$download$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    invoke-static {p1}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->access$getMRecoverProgressPop$p(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;

    move-result-object p1

    if-eqz p1, :cond_13

    const-string/jumbo v0, "恢复最初作品版本失败"

    const-string/jumbo v1, "重试"

    invoke-virtual {p1, v0, v1}, Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;->setupTxt(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method public onSuccess(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V
    .registers 5

    .line 387
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/codemao/creativecenter/vcs/events/ReloadBcmEvent;

    iget-object v1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$download$1$onSuccess$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$download$1;

    iget-object v1, v1, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$download$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    invoke-virtual {v1}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->getOriginBcm()Lcom/codemao/creativestore/bean/WorksEvent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/WorksEvent;->getWorkUid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "originBcm.workUid"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/codemao/creativecenter/vcs/events/ReloadBcmEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 389
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$download$1$onSuccess$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$download$1;

    iget-object p1, p1, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$download$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    invoke-static {p1}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->access$getMRecoverProgressPop$p(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;

    move-result-object p1

    if-eqz p1, :cond_2a

    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    .line 390
    :cond_2a
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$download$1$onSuccess$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$download$1;

    iget-object p1, p1, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$download$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->access$setMRecoverProgressPop$p(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;)V

    .line 391
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$download$1$onSuccess$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$download$1;

    iget-object p1, p1, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$download$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    return-void
.end method
