.class Lcom/codemao/nemo/fragment/DiscoveryFragmentV2$4;
.super Lio/reactivex/observers/DisposableObserver;
.source "DiscoveryFragmentV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->onViewClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/observers/DisposableObserver<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;)V
    .registers 2

    .line 593
    iput-object p1, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2$4;->this$0:Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;

    invoke-direct {p0}, Lio/reactivex/observers/DisposableObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 1

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    .line 611
    iget-object p1, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2$4;->this$0:Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "无访问权限，打开相机失败"

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onNext(Ljava/lang/Integer;)V
    .registers 4

    .line 596
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_17

    const/4 v0, 0x2

    if-eq p1, v0, :cond_b

    goto :goto_26

    .line 604
    :cond_b
    iget-object p1, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2$4;->this$0:Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "无访问权限，打开相机失败"

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_26

    .line 598
    :cond_17
    iget-object p1, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2$4;->this$0:Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;

    sget-object v0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->Companion:Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity$Companion;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity$Companion;->callIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/giu/xzz/BaseFragment;->startActivity(Landroid/content/Intent;)V

    :goto_26
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 593
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2$4;->onNext(Ljava/lang/Integer;)V

    return-void
.end method
