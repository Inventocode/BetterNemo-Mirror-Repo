.class public Lcom/codemao/toolssdk/fragment/base/CTCommonLoadingFragment;
.super Landroidx/fragment/app/Fragment;
.source "CTCommonLoadingFragment.kt"


# instance fields
.field private basePopupView:Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public dismissLoadDialog()V
    .registers 2

    .line 12
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/base/CTCommonLoadingFragment;->basePopupView:Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop;->dismiss()V

    :cond_7
    return-void
.end method

.method public loadCreatePage()V
    .registers 1

    return-void
.end method

.method protected final showErrorLoad(I)V
    .registers 4

    .line 16
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/base/CTCommonLoadingFragment;->basePopupView:Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop;

    if-eqz v0, :cond_f

    if-eqz v0, :cond_f

    .line 17
    sget-object v1, Lcom/codemao/toolssdk/constant/CMTStatus;->Companion:Lcom/codemao/toolssdk/constant/CMTStatus$Companion;

    invoke-virtual {v1, p1}, Lcom/codemao/toolssdk/constant/CMTStatus$Companion;->getLoadErrorStr(I)Lcom/codemao/toolssdk/constant/ErrorLoadModel;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop;->showError(Lcom/codemao/toolssdk/constant/ErrorLoadModel;)V

    :cond_f
    return-void
.end method

.method protected final showLoadingDialog()V
    .registers 4

    .line 22
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 23
    iget-object v1, p0, Lcom/codemao/toolssdk/fragment/base/CTCommonLoadingFragment;->basePopupView:Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop;

    if-nez v1, :cond_17

    .line 24
    sget-object v1, Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop;->Companion:Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop$Companion;

    .line 26
    new-instance v2, Lcom/codemao/toolssdk/fragment/base/CTCommonLoadingFragment$showLoadingDialog$1$1;

    invoke-direct {v2, p0}, Lcom/codemao/toolssdk/fragment/base/CTCommonLoadingFragment$showLoadingDialog$1$1;-><init>(Lcom/codemao/toolssdk/fragment/base/CTCommonLoadingFragment;)V

    .line 24
    invoke-virtual {v1, v0, v2}, Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop$Companion;->generateXPop(Landroid/content/Context;Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop$ButtonOnClickListener;)Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/toolssdk/fragment/base/CTCommonLoadingFragment;->basePopupView:Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop;

    .line 36
    :cond_17
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/base/CTCommonLoadingFragment;->basePopupView:Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    :cond_1e
    return-void
.end method
