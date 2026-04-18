.class Lcom/readboy/personalsettingauth/BaseLoginFragment$6;
.super Ljava/lang/Object;
.source "BaseLoginFragment.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/readboy/personalsettingauth/BaseLoginFragment;->userLogin(Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/readboy/personalsettingauth/BaseLoginFragment;

.field final synthetic val$account:Ljava/lang/String;

.field final synthetic val$password:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/readboy/personalsettingauth/BaseLoginFragment;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 267
    iput-object p1, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment$6;->this$0:Lcom/readboy/personalsettingauth/BaseLoginFragment;

    iput-object p2, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment$6;->val$account:Ljava/lang/String;

    iput-object p3, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment$6;->val$password:Ljava/lang/String;

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

    .line 312
    iget-object p1, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment$6;->this$0:Lcom/readboy/personalsettingauth/BaseLoginFragment;

    invoke-virtual {p1}, Lcom/readboy/personalsettingauth/BasePSFragment;->isFragmentDetach()Z

    move-result p1

    if-eqz p1, :cond_9

    return-void

    .line 315
    :cond_9
    iget-object p1, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment$6;->this$0:Lcom/readboy/personalsettingauth/BaseLoginFragment;

    const/16 p2, 0x198

    sget v0, Lcom/readboy/personalsettingauth/R$string;->msg_login_net_service_time_out:I

    invoke-virtual {p1, v0}, Lcom/readboy/personalsettingauth/BasePSFragment;->getResString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/readboy/personalsettingauth/BaseLoginFragment;->onUserLoginNetFailed(ILjava/lang/String;)V

    .line 316
    iget-object p1, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment$6;->this$0:Lcom/readboy/personalsettingauth/BaseLoginFragment;

    iget-object p1, p1, Lcom/readboy/personalsettingauth/BaseLoginFragment;->mLoadingGroup:Landroid/view/ViewGroup;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .registers 7
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

    .line 270
    iget-object p1, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment$6;->this$0:Lcom/readboy/personalsettingauth/BaseLoginFragment;

    invoke-virtual {p1}, Lcom/readboy/personalsettingauth/BasePSFragment;->isFragmentDetach()Z

    move-result p1

    if-eqz p1, :cond_9

    return-void

    .line 274
    :cond_9
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1d

    .line 275
    iget-object p1, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment$6;->this$0:Lcom/readboy/personalsettingauth/BaseLoginFragment;

    const/16 p2, 0x1b58

    sget v0, Lcom/readboy/personalsettingauth/R$string;->msg_login_net_service_data_empty:I

    invoke-virtual {p1, v0}, Lcom/readboy/personalsettingauth/BasePSFragment;->getResString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/readboy/personalsettingauth/BaseLoginFragment;->onUserLoginDataError(ILjava/lang/String;)V

    return-void

    .line 279
    :cond_1d
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    .line 280
    sget-object p2, Lcom/readboy/personalsettingauth/RBConfigureUtil;->INTENT_EXTRA_ERROR_NO:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    .line 281
    sget-object v0, Lcom/readboy/personalsettingauth/RBConfigureUtil;->INTENT_EXTRA_ERROR_MSG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-lez p2, :cond_3d

    .line 282
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 283
    iget-object p1, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment$6;->this$0:Lcom/readboy/personalsettingauth/BaseLoginFragment;

    invoke-virtual {p1, p2, v0}, Lcom/readboy/personalsettingauth/BaseLoginFragment;->onUserLoginNetFailed(ILjava/lang/String;)V

    return-void

    .line 287
    :cond_3d
    iget-object v1, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment$6;->this$0:Lcom/readboy/personalsettingauth/BaseLoginFragment;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/readboy/personalsettingauth/LoginResult;->getLoginResultFromJsonStr(Ljava/lang/String;)Lcom/readboy/personalsettingauth/LoginResult;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/readboy/personalsettingauth/BaseLoginFragment;->access$402(Lcom/readboy/personalsettingauth/BaseLoginFragment;Lcom/readboy/personalsettingauth/LoginResult;)Lcom/readboy/personalsettingauth/LoginResult;

    .line 288
    iget-object p1, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment$6;->this$0:Lcom/readboy/personalsettingauth/BaseLoginFragment;

    iget-object v1, p1, Lcom/readboy/personalsettingauth/BaseLoginFragment;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_e6

    invoke-static {p1}, Lcom/readboy/personalsettingauth/BaseLoginFragment;->access$400(Lcom/readboy/personalsettingauth/BaseLoginFragment;)Lcom/readboy/personalsettingauth/LoginResult;

    move-result-object p1

    if-eqz p1, :cond_e6

    .line 289
    new-instance p1, Landroid/content/Intent;

    sget-object v1, Lcom/readboy/personalsettingauth/RBConfigureUtil;->ACTION_SERVICE_LOGIN:Ljava/lang/String;

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 293
    sget-object v1, Lcom/readboy/personalsettingauth/RBConfigureUtil;->SERVICE_LOGIN_PKG:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    sget-object v1, Lcom/readboy/personalsettingauth/RBConfigureUtil;->INTENT_EXTRA_SECRET_FLAG:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 295
    sget-object v1, Lcom/readboy/personalsettingauth/RBConfigureUtil;->INTENT_EXTRA_ORG_ACCOUNT:Ljava/lang/String;

    iget-object v3, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment$6;->val$account:Ljava/lang/String;

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    sget-object v1, Lcom/readboy/personalsettingauth/RBConfigureUtil;->INTENT_EXTRA_ORG_PW:Ljava/lang/String;

    iget-object v3, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment$6;->val$password:Ljava/lang/String;

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    sget-object v1, Lcom/readboy/personalsettingauth/RBConfigureUtil;->INTENT_EXTRA_TOKEN:Ljava/lang/String;

    iget-object v3, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment$6;->this$0:Lcom/readboy/personalsettingauth/BaseLoginFragment;

    invoke-static {v3}, Lcom/readboy/personalsettingauth/BaseLoginFragment;->access$400(Lcom/readboy/personalsettingauth/BaseLoginFragment;)Lcom/readboy/personalsettingauth/LoginResult;

    move-result-object v3

    invoke-virtual {v3}, Lcom/readboy/personalsettingauth/LoginResult;->getAccess_token()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    sget-object v1, Lcom/readboy/personalsettingauth/RBConfigureUtil;->INTENT_EXTRA_EXPIRE:Ljava/lang/String;

    iget-object v3, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment$6;->this$0:Lcom/readboy/personalsettingauth/BaseLoginFragment;

    invoke-static {v3}, Lcom/readboy/personalsettingauth/BaseLoginFragment;->access$400(Lcom/readboy/personalsettingauth/BaseLoginFragment;)Lcom/readboy/personalsettingauth/LoginResult;

    move-result-object v3

    invoke-virtual {v3}, Lcom/readboy/personalsettingauth/LoginResult;->getAccess_expire()I

    move-result v3

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 299
    sget-object v1, Lcom/readboy/personalsettingauth/RBConfigureUtil;->INTENT_EXTRA_UID:Ljava/lang/String;

    iget-object v3, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment$6;->this$0:Lcom/readboy/personalsettingauth/BaseLoginFragment;

    invoke-static {v3}, Lcom/readboy/personalsettingauth/BaseLoginFragment;->access$400(Lcom/readboy/personalsettingauth/BaseLoginFragment;)Lcom/readboy/personalsettingauth/LoginResult;

    move-result-object v3

    invoke-virtual {v3}, Lcom/readboy/personalsettingauth/LoginResult;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    sget-object v1, Lcom/readboy/personalsettingauth/RBConfigureUtil;->INTENT_EXTRA_EMAIL:Ljava/lang/String;

    iget-object v3, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment$6;->this$0:Lcom/readboy/personalsettingauth/BaseLoginFragment;

    invoke-static {v3}, Lcom/readboy/personalsettingauth/BaseLoginFragment;->access$400(Lcom/readboy/personalsettingauth/BaseLoginFragment;)Lcom/readboy/personalsettingauth/LoginResult;

    move-result-object v3

    invoke-virtual {v3}, Lcom/readboy/personalsettingauth/LoginResult;->getEmail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    sget-object v1, Lcom/readboy/personalsettingauth/RBConfigureUtil;->INTENT_EXTRA_MOBILE:Ljava/lang/String;

    iget-object v3, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment$6;->this$0:Lcom/readboy/personalsettingauth/BaseLoginFragment;

    invoke-static {v3}, Lcom/readboy/personalsettingauth/BaseLoginFragment;->access$400(Lcom/readboy/personalsettingauth/BaseLoginFragment;)Lcom/readboy/personalsettingauth/LoginResult;

    move-result-object v3

    invoke-virtual {v3}, Lcom/readboy/personalsettingauth/LoginResult;->getMobile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 302
    sget-object v1, Lcom/readboy/personalsettingauth/RBConfigureUtil;->INTENT_EXTRA_AVATAR:Ljava/lang/String;

    iget-object v3, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment$6;->this$0:Lcom/readboy/personalsettingauth/BaseLoginFragment;

    invoke-static {v3}, Lcom/readboy/personalsettingauth/BaseLoginFragment;->access$400(Lcom/readboy/personalsettingauth/BaseLoginFragment;)Lcom/readboy/personalsettingauth/LoginResult;

    move-result-object v3

    invoke-virtual {v3}, Lcom/readboy/personalsettingauth/LoginResult;->getAvatar()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 303
    sget-object v1, Lcom/readboy/personalsettingauth/RBConfigureUtil;->INTENT_EXTRA_ERROR_NO:Ljava/lang/String;

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 304
    sget-object p2, Lcom/readboy/personalsettingauth/RBConfigureUtil;->INTENT_EXTRA_ERROR_MSG:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    sget-object p2, Lcom/readboy/personalsettingauth/RBConfigureUtil;->INTENT_EXTRA_CONTAIN_ERROR_VER:Ljava/lang/String;

    invoke-virtual {p1, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 306
    iget-object p2, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment$6;->this$0:Lcom/readboy/personalsettingauth/BaseLoginFragment;

    iget-object p2, p2, Lcom/readboy/personalsettingauth/BaseLoginFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_e6
    return-void
.end method
