.class Lcom/readboy/personalsettingauth/BaseAuthFragment$5$1;
.super Ljava/lang/Object;
.source "BaseAuthFragment.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/readboy/personalsettingauth/BaseAuthFragment$5;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
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
.field final synthetic this$1:Lcom/readboy/personalsettingauth/BaseAuthFragment$5;

.field final synthetic val$r:Lretrofit2/Response;

.field final synthetic val$thisCallback:Lretrofit2/Callback;


# direct methods
.method constructor <init>(Lcom/readboy/personalsettingauth/BaseAuthFragment$5;Lretrofit2/Response;Lretrofit2/Callback;)V
    .registers 4

    .line 384
    iput-object p1, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment$5$1;->this$1:Lcom/readboy/personalsettingauth/BaseAuthFragment$5;

    iput-object p2, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment$5$1;->val$r:Lretrofit2/Response;

    iput-object p3, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment$5$1;->val$thisCallback:Lretrofit2/Callback;

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

    .line 403
    iget-object v0, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment$5$1;->val$thisCallback:Lretrofit2/Callback;

    invoke-interface {v0, p1, p2}, Lretrofit2/Callback;->onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .registers 9
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

    .line 387
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1c

    .line 389
    iget-object p1, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment$5$1;->this$1:Lcom/readboy/personalsettingauth/BaseAuthFragment$5;

    iget-object p1, p1, Lcom/readboy/personalsettingauth/BaseAuthFragment$5;->this$0:Lcom/readboy/personalsettingauth/BaseAuthFragment;

    invoke-virtual {p1}, Lcom/readboy/personalsettingauth/BaseAuthFragment;->showFail()V

    .line 390
    iget-object p1, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment$5$1;->this$1:Lcom/readboy/personalsettingauth/BaseAuthFragment$5;

    iget-object p1, p1, Lcom/readboy/personalsettingauth/BaseAuthFragment$5;->this$0:Lcom/readboy/personalsettingauth/BaseAuthFragment;

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "请求失败，服务器返回数据异常"

    invoke-static {p1, v0, p2}, Lcom/readboy/personalsettingauth/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void

    :cond_1c
    const/4 p1, 0x0

    .line 394
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/json/JSONObject;

    if-eqz p2, :cond_2b

    const-string p1, "mobile"

    .line 396
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_2b
    move-object v4, p1

    .line 398
    iget-object p1, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment$5$1;->this$1:Lcom/readboy/personalsettingauth/BaseAuthFragment$5;

    iget-object v0, p1, Lcom/readboy/personalsettingauth/BaseAuthFragment$5;->this$0:Lcom/readboy/personalsettingauth/BaseAuthFragment;

    iget-object v1, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment$5$1;->val$r:Lretrofit2/Response;

    iget-object v2, p1, Lcom/readboy/personalsettingauth/BaseAuthFragment$5;->val$appId:Ljava/lang/String;

    iget-object v3, p1, Lcom/readboy/personalsettingauth/BaseAuthFragment$5;->val$appSec:Ljava/lang/String;

    iget-boolean v5, p1, Lcom/readboy/personalsettingauth/BaseAuthFragment$5;->val$isMobileChecked:Z

    invoke-virtual/range {v0 .. v5}, Lcom/readboy/personalsettingauth/BaseAuthFragment;->onGetUserInfoResponse(Lretrofit2/Response;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
