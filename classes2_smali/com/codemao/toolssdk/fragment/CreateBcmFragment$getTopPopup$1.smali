.class public final Lcom/codemao/toolssdk/fragment/CreateBcmFragment$getTopPopup$1;
.super Ljava/lang/Object;
.source "CreateBcmFragment.kt"

# interfaces
.implements Lcom/codemao/toolssdk/view/dialog/CreateBcmPageQuitePop$CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->getTopPopup(Landroid/content/Context;)Lcom/codemao/toolssdk/view/dialog/CreateBcmPageQuitePop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/fragment/CreateBcmFragment;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/fragment/CreateBcmFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/fragment/CreateBcmFragment$getTopPopup$1;->this$0:Lcom/codemao/toolssdk/fragment/CreateBcmFragment;

    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public backpack(Landroid/view/View;)V
    .registers 4

    .line 478
    iget-object p1, p0, Lcom/codemao/toolssdk/fragment/CreateBcmFragment$getTopPopup$1;->this$0:Lcom/codemao/toolssdk/fragment/CreateBcmFragment;

    invoke-static {p1}, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->access$getCmToolsManager$p(Lcom/codemao/toolssdk/fragment/CreateBcmFragment;)Lcom/codemao/toolssdk/manager/CMToolsManager;

    move-result-object p1

    if-eqz p1, :cond_d

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1}, Lcom/codemao/toolssdk/manager/CMToolsManager;->showBackPackPage$default(Lcom/codemao/toolssdk/manager/CMToolsManager;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    :cond_d
    return-void
.end method

.method public openHistoryBackupDialog(Landroid/view/View;)V
    .registers 4

    .line 482
    iget-object p1, p0, Lcom/codemao/toolssdk/fragment/CreateBcmFragment$getTopPopup$1;->this$0:Lcom/codemao/toolssdk/fragment/CreateBcmFragment;

    invoke-static {p1}, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->access$getCmToolsManager$p(Lcom/codemao/toolssdk/fragment/CreateBcmFragment;)Lcom/codemao/toolssdk/manager/CMToolsManager;

    move-result-object p1

    if-eqz p1, :cond_d

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1}, Lcom/codemao/toolssdk/manager/CMToolsManager;->openHistoryBackupDialog$default(Lcom/codemao/toolssdk/manager/CMToolsManager;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    :cond_d
    return-void
.end method

.method public publishWork(Landroid/view/View;)V
    .registers 2

    .line 473
    iget-object p1, p0, Lcom/codemao/toolssdk/fragment/CreateBcmFragment$getTopPopup$1;->this$0:Lcom/codemao/toolssdk/fragment/CreateBcmFragment;

    invoke-static {p1}, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->access$onPublishWork(Lcom/codemao/toolssdk/fragment/CreateBcmFragment;)V

    .line 474
    iget-object p1, p0, Lcom/codemao/toolssdk/fragment/CreateBcmFragment$getTopPopup$1;->this$0:Lcom/codemao/toolssdk/fragment/CreateBcmFragment;

    invoke-static {p1}, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->access$getTopPopupWindow$p(Lcom/codemao/toolssdk/fragment/CreateBcmFragment;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object p1

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    :cond_10
    return-void
.end method

.method public quite(Landroid/view/View;)V
    .registers 2

    .line 459
    iget-object p1, p0, Lcom/codemao/toolssdk/fragment/CreateBcmFragment$getTopPopup$1;->this$0:Lcom/codemao/toolssdk/fragment/CreateBcmFragment;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->onQuite()V

    .line 460
    iget-object p1, p0, Lcom/codemao/toolssdk/fragment/CreateBcmFragment$getTopPopup$1;->this$0:Lcom/codemao/toolssdk/fragment/CreateBcmFragment;

    invoke-static {p1}, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->access$getTopPopupWindow$p(Lcom/codemao/toolssdk/fragment/CreateBcmFragment;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object p1

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    :cond_10
    return-void
.end method
