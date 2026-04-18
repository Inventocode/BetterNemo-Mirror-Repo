.class Lcom/readboy/personalsettingauth/BaseAuthFragment$5;
.super Ljava/lang/Object;
.source "BaseAuthFragment.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/readboy/personalsettingauth/BaseAuthFragment;->getUserInfoFromNetwork(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/readboy/personalsettingauth/BaseAuthFragment;

.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$appSec:Ljava/lang/String;

.field final synthetic val$finalUserIdParent:Ljava/lang/String;

.field final synthetic val$isMobileChecked:Z


# direct methods
.method constructor <init>(Lcom/readboy/personalsettingauth/BaseAuthFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    .line 367
    iput-object p1, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment$5;->this$0:Lcom/readboy/personalsettingauth/BaseAuthFragment;

    iput-object p2, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment$5;->val$finalUserIdParent:Ljava/lang/String;

    iput-object p3, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment$5;->val$appId:Ljava/lang/String;

    iput-object p4, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment$5;->val$appSec:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment$5;->val$isMobileChecked:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lorg/json/JSONObject;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 418
    iget-object p1, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment$5;->this$0:Lcom/readboy/personalsettingauth/BaseAuthFragment;

    invoke-static {p1}, Lcom/readboy/personalsettingauth/BaseAuthFragment;->access$300(Lcom/readboy/personalsettingauth/BaseAuthFragment;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment$5;->this$0:Lcom/readboy/personalsettingauth/BaseAuthFragment;

    invoke-static {p1}, Lcom/readboy/personalsettingauth/BaseAuthFragment;->access$300(Lcom/readboy/personalsettingauth/BaseAuthFragment;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x100

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 419
    :cond_13
    iget-object p1, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment$5;->this$0:Lcom/readboy/personalsettingauth/BaseAuthFragment;

    invoke-virtual {p1}, Lcom/readboy/personalsettingauth/BasePSFragment;->isFragmentDetach()Z

    move-result p1

    if-eqz p1, :cond_1c

    return-void

    .line 422
    :cond_1c
    iget-object p1, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment$5;->this$0:Lcom/readboy/personalsettingauth/BaseAuthFragment;

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "请求失败，请稍后再重试"

    invoke-static {p1, v0, p2}, Lcom/readboy/personalsettingauth/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 424
    iget-object p1, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment$5;->this$0:Lcom/readboy/personalsettingauth/BaseAuthFragment;

    invoke-virtual {p1}, Lcom/readboy/personalsettingauth/BaseAuthFragment;->showFail()V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lretrofit2/Response<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .line 370
    iget-object p1, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment$5;->this$0:Lcom/readboy/personalsettingauth/BaseAuthFragment;

    invoke-static {p1}, Lcom/readboy/personalsettingauth/BaseAuthFragment;->access$300(Lcom/readboy/personalsettingauth/BaseAuthFragment;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment$5;->this$0:Lcom/readboy/personalsettingauth/BaseAuthFragment;

    invoke-static {p1}, Lcom/readboy/personalsettingauth/BaseAuthFragment;->access$300(Lcom/readboy/personalsettingauth/BaseAuthFragment;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x100

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 371
    :cond_13
    iget-object p1, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment$5;->this$0:Lcom/readboy/personalsettingauth/BaseAuthFragment;

    invoke-virtual {p1}, Lcom/readboy/personalsettingauth/BasePSFragment;->isFragmentDetach()Z

    move-result p1

    if-eqz p1, :cond_1c

    return-void

    .line 374
    :cond_1c
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_34

    .line 376
    iget-object p1, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment$5;->this$0:Lcom/readboy/personalsettingauth/BaseAuthFragment;

    invoke-virtual {p1}, Lcom/readboy/personalsettingauth/BaseAuthFragment;->showFail()V

    .line 377
    iget-object p1, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment$5;->this$0:Lcom/readboy/personalsettingauth/BaseAuthFragment;

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "请求失败，服务器返回数据异常"

    invoke-static {p1, v0, p2}, Lcom/readboy/personalsettingauth/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void

    .line 381
    :cond_34
    iget-object p1, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment$5;->val$finalUserIdParent:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8c

    iget-object p1, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment$5;->val$finalUserIdParent:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment$5;->this$0:Lcom/readboy/personalsettingauth/BaseAuthFragment;

    invoke-static {v1}, Lcom/readboy/personalsettingauth/BaseAuthFragment;->access$400(Lcom/readboy/personalsettingauth/BaseAuthFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8c

    .line 383
    iget-object p1, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment$5;->this$0:Lcom/readboy/personalsettingauth/BaseAuthFragment;

    invoke-static {p1}, Lcom/readboy/personalsettingauth/BaseAuthFragment;->access$600(Lcom/readboy/personalsettingauth/BaseAuthFragment;)Lcom/readboy/personalsettingauth/UserNetwork;

    move-result-object v2

    iget-object v4, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment$5;->val$finalUserIdParent:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment$5;->this$0:Lcom/readboy/personalsettingauth/BaseAuthFragment;

    .line 384
    invoke-static {v3}, Lcom/readboy/personalsettingauth/BaseAuthFragment;->access$400(Lcom/readboy/personalsettingauth/BaseAuthFragment;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment$5;->this$0:Lcom/readboy/personalsettingauth/BaseAuthFragment;

    invoke-static {v0}, Lcom/readboy/personalsettingauth/BaseAuthFragment;->access$500(Lcom/readboy/personalsettingauth/BaseAuthFragment;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/readboy/personalsettingauth/BaseAuthFragment$5$1;

    invoke-direct {v7, p0, p2, p0}, Lcom/readboy/personalsettingauth/BaseAuthFragment$5$1;-><init>(Lcom/readboy/personalsettingauth/BaseAuthFragment$5;Lretrofit2/Response;Lretrofit2/Callback;)V

    move-object v3, v4

    .line 383
    invoke-virtual/range {v2 .. v7}, Lcom/readboy/personalsettingauth/UserNetwork;->subMemberLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lretrofit2/Callback;)Lretrofit2/Call;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/readboy/personalsettingauth/BaseAuthFragment;->access$002(Lcom/readboy/personalsettingauth/BaseAuthFragment;Lretrofit2/Call;)Lretrofit2/Call;

    goto :goto_a8

    :cond_8c
    const/4 p1, 0x0

    .line 408
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_9b

    const-string p1, "mobile"

    .line 410
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_9b
    move-object v4, p1

    .line 412
    iget-object v0, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment$5;->this$0:Lcom/readboy/personalsettingauth/BaseAuthFragment;

    iget-object v2, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment$5;->val$appId:Ljava/lang/String;

    iget-object v3, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment$5;->val$appSec:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment$5;->val$isMobileChecked:Z

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/readboy/personalsettingauth/BaseAuthFragment;->onGetUserInfoResponse(Lretrofit2/Response;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_a8
    return-void
.end method
