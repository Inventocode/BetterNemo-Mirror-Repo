.class public final Lcom/codemao/nemo/setting/UserAvatarChooseActivity$chooseAvatar$1;
.super Lio/reactivex/observers/DisposableObserver;
.source "UserAvatarChooseActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->chooseAvatar(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
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
.field final synthetic this$0:Lcom/codemao/nemo/setting/UserAvatarChooseActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/setting/UserAvatarChooseActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$chooseAvatar$1;->this$0:Lcom/codemao/nemo/setting/UserAvatarChooseActivity;

    .line 676
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

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 695
    iget-object p1, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$chooseAvatar$1;->this$0:Lcom/codemao/nemo/setting/UserAvatarChooseActivity;

    const-string v0, "无访问权限，访问本地图片失败"

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onNext(I)V
    .registers 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_f

    const/4 v0, 0x2

    if-eq p1, v0, :cond_7

    goto :goto_2e

    .line 689
    :cond_7
    iget-object p1, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$chooseAvatar$1;->this$0:Lcom/codemao/nemo/setting/UserAvatarChooseActivity;

    const-string v0, "无访问权限，访问本地图片失败"

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_2e

    .line 680
    :cond_f
    invoke-static {}, Lcom/codemao/nemo/ui/MultiImageSelector;->create()Lcom/codemao/nemo/ui/MultiImageSelector;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/ui/MultiImageSelector;->showCamera(Z)Lcom/codemao/nemo/ui/MultiImageSelector;

    move-result-object p1

    .line 681
    invoke-virtual {p1}, Lcom/codemao/nemo/ui/MultiImageSelector;->single()Lcom/codemao/nemo/ui/MultiImageSelector;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/ui/MultiImageSelector;->setTitle(Ljava/lang/String;)Lcom/codemao/nemo/ui/MultiImageSelector;

    move-result-object p1

    const/16 v0, 0x29

    .line 682
    invoke-virtual {p1, v0}, Lcom/codemao/nemo/ui/MultiImageSelector;->setType(I)Lcom/codemao/nemo/ui/MultiImageSelector;

    move-result-object p1

    .line 683
    iget-object v0, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$chooseAvatar$1;->this$0:Lcom/codemao/nemo/setting/UserAvatarChooseActivity;

    const/16 v1, 0x4e21

    invoke-virtual {p1, v0, v1}, Lcom/codemao/nemo/ui/MultiImageSelector;->start(Landroid/app/Activity;I)V

    :goto_2e
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 676
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$chooseAvatar$1;->onNext(I)V

    return-void
.end method
