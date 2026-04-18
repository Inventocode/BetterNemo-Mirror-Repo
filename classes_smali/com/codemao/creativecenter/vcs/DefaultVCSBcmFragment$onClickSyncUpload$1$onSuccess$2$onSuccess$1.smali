.class public final Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1$onSuccess$2$onSuccess$1;
.super Lcom/codemao/creativecenter/http/CommonSubcriber;
.source "DefaultVCSBcmActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1$onSuccess$2;->onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultVCSBcmActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultVCSBcmActivity.kt\ncom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1$onSuccess$2$onSuccess$1\n*L\n1#1,518:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1$onSuccess$2;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1$onSuccess$2;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 315
    iput-object p1, p0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1$onSuccess$2$onSuccess$1;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1$onSuccess$2;

    invoke-direct {p0}, Lcom/codemao/creativecenter/http/CommonSubcriber;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string p2, "40205005"

    .line 332
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2a

    const-string v0, "40205001"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2a

    .line 333
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1$onSuccess$2$onSuccess$1;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1$onSuccess$2;

    iget-object p1, p1, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1$onSuccess$2;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1;

    iget-object p1, p1, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;

    invoke-static {p1}, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;->access$getMSyncWorkProgressPop$p(Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;)Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;

    move-result-object p1

    if-eqz p1, :cond_29

    const-string/jumbo p2, "同步作品失败"

    const-string/jumbo v0, "重试"

    invoke-virtual {p1, p2, v0}, Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;->setupTxt(Ljava/lang/String;Ljava/lang/String;)V

    :cond_29
    return-void

    .line 336
    :cond_2a
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1$onSuccess$2$onSuccess$1;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1$onSuccess$2;

    iget-object v0, v0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1$onSuccess$2;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1;

    iget-object v0, v0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;

    invoke-static {v0}, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;->access$getMSyncWorkProgressPop$p(Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;)Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;

    move-result-object v0

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    .line 338
    :cond_39
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_43

    const-string/jumbo p1, "求助者关闭了协作模式，无法同\n步作品，可以联系求助者"

    goto :goto_46

    :cond_43
    const-string/jumbo p1, "协助作品已满，无法同步作品，\n可以联系求助者"

    .line 341
    :goto_46
    iget-object p2, p0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1$onSuccess$2$onSuccess$1;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1$onSuccess$2;

    iget-object p2, p2, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1$onSuccess$2;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1;

    iget-object p2, p2, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_af

    .line 343
    new-instance p2, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1$onSuccess$2$onSuccess$1;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1$onSuccess$2;

    iget-object v0, v0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1$onSuccess$2;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1;

    iget-object v0, v0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_63

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_63
    invoke-direct {p2, v0}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "取消"

    .line 345
    invoke-virtual {p2, v0}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->leftBtnStr(Ljava/lang/String;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    const-string/jumbo v0, "退出协作"

    .line 346
    invoke-virtual {p2, v0}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->rightBtnStr(Ljava/lang/String;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    .line 347
    invoke-virtual {p2, p1}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->titleStr(Ljava/lang/String;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    const-string v0, ""

    .line 348
    invoke-virtual {p2, v0}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->contentStr(Ljava/lang/String;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    .line 349
    new-instance v0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1$onSuccess$2$onSuccess$1$onFailure$pop$1$1;

    invoke-direct {v0, p2}, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1$onSuccess$2$onSuccess$1$onFailure$pop$1$1;-><init>(Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;)V

    invoke-virtual {p2, v0}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->setLeftClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    .line 352
    new-instance v0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1$onSuccess$2$onSuccess$1$onFailure$$inlined$apply$lambda$1;

    invoke-direct {v0, p2, p0, p1}, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1$onSuccess$2$onSuccess$1$onFailure$$inlined$apply$lambda$1;-><init>(Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1$onSuccess$2$onSuccess$1;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->setRightClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    .line 361
    new-instance p1, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1$onSuccess$2$onSuccess$1;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1$onSuccess$2;

    iget-object v0, v0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1$onSuccess$2;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1;

    iget-object v0, v0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_9b

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_9b
    invoke-direct {p1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    .line 362
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnTouchOutside(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    .line 363
    invoke-virtual {p1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnBackPressed(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    .line 364
    invoke-virtual {p1, p2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object p1

    .line 365
    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    :cond_af
    return-void
.end method

.method protected onNetError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 370
    invoke-virtual {p0, p1, p2}, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1$onSuccess$2$onSuccess$1;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 315
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1$onSuccess$2$onSuccess$1;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method protected onSuccess(Ljava/lang/String;)V
    .registers 5

    .line 317
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1$onSuccess$2$onSuccess$1;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1$onSuccess$2;

    iget-object p1, p1, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1$onSuccess$2;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1;

    iget-object p1, p1, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;->setHasSyncUpload(Z)V

    .line 318
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1$onSuccess$2$onSuccess$1;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1$onSuccess$2;

    iget-object p1, p1, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1$onSuccess$2;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1;

    iget-object p1, p1, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;->setHasEdit(Z)V

    .line 320
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1$onSuccess$2$onSuccess$1;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1$onSuccess$2;

    iget-object p1, p1, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1$onSuccess$2;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1;

    iget-object p1, p1, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;

    invoke-static {p1}, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;->access$getMSyncWorkProgressPop$p(Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;)Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;

    move-result-object p1

    if-eqz p1, :cond_23

    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    .line 321
    :cond_23
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1$onSuccess$2$onSuccess$1;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1$onSuccess$2;

    iget-object p1, p1, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1$onSuccess$2;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1;

    iget-object p1, p1, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_73

    .line 322
    new-instance p1, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1$onSuccess$2$onSuccess$1;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1$onSuccess$2;

    iget-object v0, v0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1$onSuccess$2;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1;

    iget-object v0, v0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_40

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_40
    invoke-direct {p1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    .line 323
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnTouchOutside(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    .line 324
    invoke-virtual {p1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnBackPressed(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    .line 325
    sget-object v0, Lcom/nemo/commonui/xpopup/enums/PopupAnimation;->NoAnimation:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    invoke-virtual {p1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupAnimation(Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    .line 326
    new-instance v0, Lcom/codemao/creativecenter/vcs/pop/AssistorSyncCompletedPop;

    iget-object v1, p0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1$onSuccess$2$onSuccess$1;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1$onSuccess$2;

    iget-object v1, v1, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1$onSuccess$2;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1;

    iget-object v1, v1, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_64

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_64
    const-string v2, "context!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/codemao/creativecenter/vcs/pop/AssistorSyncCompletedPop;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object p1

    .line 327
    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    :cond_73
    return-void
.end method
