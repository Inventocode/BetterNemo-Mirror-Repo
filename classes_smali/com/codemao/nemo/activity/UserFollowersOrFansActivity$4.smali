.class Lcom/codemao/nemo/activity/UserFollowersOrFansActivity$4;
.super Lcom/codemao/nemo/http/LocalNetCallBackV2;
.source "UserFollowersOrFansActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->follow(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;)V
    .registers 2

    .line 243
    iput-object p1, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity$4;->this$0:Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;

    invoke-direct {p0}, Lcom/codemao/nemo/http/LocalNetCallBackV2;-><init>()V

    return-void
.end method


# virtual methods
.method public onErr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 252
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity$4;->this$0:Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;

    const-string/jumbo p2, "关注失败"

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onNetError()V
    .registers 2

    .line 257
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity$4;->this$0:Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;

    invoke-static {v0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void
.end method

.method public bridge synthetic onSuc(Ljava/lang/Object;)V
    .registers 2

    .line 243
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity$4;->onSuc(Ljava/lang/String;)V

    return-void
.end method

.method public onSuc(Ljava/lang/String;)V
    .registers 3

    .line 246
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity$4;->this$0:Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->access$502(Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;I)I

    .line 247
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity$4;->this$0:Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->access$400(Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;)V

    return-void
.end method
