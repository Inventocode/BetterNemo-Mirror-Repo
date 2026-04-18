.class Lcom/codemao/nemo/activity/UserDetailActivity$4;
.super Lcom/codemao/nemo/retrofit/response/CommonSubcriber;
.source "UserDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/UserDetailActivity;->getUserDetail()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/retrofit/response/CommonSubcriber<",
        "Lcom/codemao/nemo/bean/UserDetailInfoV2;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/UserDetailActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/UserDetailActivity;)V
    .registers 2

    .line 449
    iput-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity$4;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    invoke-direct {p0}, Lcom/codemao/nemo/retrofit/response/CommonSubcriber;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "40103007"

    .line 458
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 459
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity$4;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/UserDetailActivity;->access$1400(Lcom/codemao/nemo/activity/UserDetailActivity;)V

    goto :goto_13

    .line 461
    :cond_e
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity$4;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_13
    return-void
.end method

.method protected onNetError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 467
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity$4;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    invoke-static {p1}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void
.end method

.method protected onSuccess(Lcom/codemao/nemo/bean/UserDetailInfoV2;)V
    .registers 3

    .line 452
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity$4;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    invoke-static {v0, p1}, Lcom/codemao/nemo/activity/UserDetailActivity;->access$302(Lcom/codemao/nemo/activity/UserDetailActivity;Lcom/codemao/nemo/bean/UserDetailInfoV2;)Lcom/codemao/nemo/bean/UserDetailInfoV2;

    .line 453
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity$4;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/UserDetailActivity;->access$1300(Lcom/codemao/nemo/activity/UserDetailActivity;)V

    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 449
    check-cast p1, Lcom/codemao/nemo/bean/UserDetailInfoV2;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/activity/UserDetailActivity$4;->onSuccess(Lcom/codemao/nemo/bean/UserDetailInfoV2;)V

    return-void
.end method
