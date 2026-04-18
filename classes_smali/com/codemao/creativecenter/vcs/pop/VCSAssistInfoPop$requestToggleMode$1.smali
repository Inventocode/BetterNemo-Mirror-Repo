.class public final Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$requestToggleMode$1;
.super Lcom/codemao/creativecenter/http/CommonSubcriber;
.source "VCSAssistInfoPop.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->requestToggleMode(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/creativecenter/http/CommonSubcriber<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $isOpen:Z

.field final synthetic this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 453
    iput-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$requestToggleMode$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    iput-boolean p2, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$requestToggleMode$1;->$isOpen:Z

    invoke-direct {p0}, Lcom/codemao/creativecenter/http/CommonSubcriber;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 482
    iget-boolean p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$requestToggleMode$1;->$isOpen:Z

    if-eqz p1, :cond_14

    .line 483
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$requestToggleMode$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    invoke-static {p1}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->access$getProgressPop$p(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;

    move-result-object p1

    if-eqz p1, :cond_14

    const-string p2, "上传失败"

    const-string/jumbo v0, "重试"

    invoke-virtual {p1, p2, v0}, Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;->setupTxt(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    :cond_14
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$requestToggleMode$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    iget-boolean p2, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$requestToggleMode$1;->$isOpen:Z

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->access$setCurAssistMode$p(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;Z)V

    .line 487
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$requestToggleMode$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    invoke-static {p1}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->access$setupMode(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)V

    return-void
.end method

.method protected onNetError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 492
    invoke-virtual {p0, p1, p2}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$requestToggleMode$1;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 453
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$requestToggleMode$1;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method protected onSuccess(Ljava/lang/String;)V
    .registers 4

    .line 455
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$requestToggleMode$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    invoke-static {p1}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->access$getProgressPop$p(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    .line 456
    :cond_b
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$requestToggleMode$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->access$setProgressPop$p(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;)V

    .line 457
    iget-boolean p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$requestToggleMode$1;->$isOpen:Z

    if-eqz p1, :cond_5e

    .line 459
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$requestToggleMode$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    invoke-static {p1}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->access$getMAssistorInfos$p(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 460
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$requestToggleMode$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    invoke-static {p1}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->access$getMAdapter$p(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    const/4 p1, 0x0

    const-string v0, "KEY_HAS_SHOW_ASSIST_REMIND"

    .line 462
    invoke-static {v0, p1}, Lcom/codemao/creativecenter/utils/CreativeSprefUtil;->getValue(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_65

    .line 467
    new-instance p1, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$requestToggleMode$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->getCtx()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    .line 468
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnTouchOutside(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    .line 469
    invoke-virtual {p1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnBackPressed(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    .line 470
    sget-object v0, Lcom/nemo/commonui/xpopup/enums/PopupAnimation;->NoAnimation:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    invoke-virtual {p1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupAnimation(Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    .line 471
    new-instance v0, Lcom/codemao/creativecenter/vcs/pop/AssistModeRemindPop;

    iget-object v1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$requestToggleMode$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    invoke-virtual {v1}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->getCtx()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/codemao/creativecenter/vcs/pop/AssistModeRemindPop;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object p1

    .line 472
    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    goto :goto_65

    .line 475
    :cond_5e
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$requestToggleMode$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    const-string v0, ""

    invoke-static {p1, v0}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->access$setAssistCode$p(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;Ljava/lang/String;)V

    .line 477
    :cond_65
    :goto_65
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$requestToggleMode$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    iget-boolean v0, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$requestToggleMode$1;->$isOpen:Z

    invoke-static {p1, v0}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->access$setCurAssistMode$p(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;Z)V

    .line 478
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$requestToggleMode$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    invoke-static {p1}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->access$setupMode(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)V

    return-void
.end method
