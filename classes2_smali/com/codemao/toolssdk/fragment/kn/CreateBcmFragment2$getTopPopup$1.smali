.class public final Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2$getTopPopup$1;
.super Ljava/lang/Object;
.source "CreateBcmFragment2.kt"

# interfaces
.implements Lcom/codemao/toolssdk/view/dialog/CreateBcmPageQuitePop$CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->getTopPopup(Landroid/content/Context;)Lcom/codemao/toolssdk/view/dialog/CreateBcmPageQuitePop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2$getTopPopup$1;->this$0:Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;

    .line 448
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public backpack(Landroid/view/View;)V
    .registers 4

    .line 469
    iget-object p1, p0, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2$getTopPopup$1;->this$0:Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;

    invoke-static {p1}, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->access$getCmToolsManager$p(Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;)Lcom/codemao/toolssdk/evolving/CMToolsManager2;

    move-result-object p1

    if-eqz p1, :cond_d

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1}, Lcom/codemao/toolssdk/cpp/manager/business/interfaces/IToolSDKWorkBackpack$DefaultImpls;->showBackPackPage$default(Lcom/codemao/toolssdk/cpp/manager/business/interfaces/IToolSDKWorkBackpack;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    :cond_d
    return-void
.end method

.method public openHistoryBackupDialog(Landroid/view/View;)V
    .registers 4

    .line 473
    iget-object p1, p0, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2$getTopPopup$1;->this$0:Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;

    invoke-static {p1}, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->access$getCmToolsManager$p(Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;)Lcom/codemao/toolssdk/evolving/CMToolsManager2;

    move-result-object p1

    if-eqz p1, :cond_d

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1}, Lcom/codemao/toolssdk/cpp/manager/business/interfaces/IToolSDKWorkHistory$DefaultImpls;->openHistoryBackupDialog$default(Lcom/codemao/toolssdk/cpp/manager/business/interfaces/IToolSDKWorkHistory;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    :cond_d
    return-void
.end method

.method public publishWork(Landroid/view/View;)V
    .registers 2

    .line 464
    iget-object p1, p0, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2$getTopPopup$1;->this$0:Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;

    invoke-static {p1}, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->access$onPublishWork(Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;)V

    .line 465
    iget-object p1, p0, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2$getTopPopup$1;->this$0:Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;

    invoke-static {p1}, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->access$getTopPopupWindow$p(Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object p1

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    :cond_10
    return-void
.end method

.method public quite(Landroid/view/View;)V
    .registers 2

    .line 450
    iget-object p1, p0, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2$getTopPopup$1;->this$0:Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->onQuite()V

    .line 451
    iget-object p1, p0, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2$getTopPopup$1;->this$0:Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;

    invoke-static {p1}, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->access$getTopPopupWindow$p(Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object p1

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    :cond_10
    return-void
.end method
