.class public final Lcom/codemao/nemo/setting/UserAvatarChooseActivity$setupUserAvatarFrame$1;
.super Lcom/codemao/nemo/retrofit/response/CommonSubcriber;
.source "UserAvatarChooseActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->setupUserAvatarFrame()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/retrofit/response/CommonSubcriber<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/setting/UserAvatarChooseActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/setting/UserAvatarChooseActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$setupUserAvatarFrame$1;->this$0:Lcom/codemao/nemo/setting/UserAvatarChooseActivity;

    .line 372
    invoke-direct {p0}, Lcom/codemao/nemo/retrofit/response/CommonSubcriber;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 398
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    .line 401
    :cond_7
    iget-object p1, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$setupUserAvatarFrame$1;->this$0:Lcom/codemao/nemo/setting/UserAvatarChooseActivity;

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ToastUtil;->showCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onNetError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 405
    invoke-virtual {p0, p1, p2}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$setupUserAvatarFrame$1;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 372
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$setupUserAvatarFrame$1;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method protected onSuccess(Ljava/lang/String;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 386
    :cond_3
    iget-object p1, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$setupUserAvatarFrame$1;->this$0:Lcom/codemao/nemo/setting/UserAvatarChooseActivity;

    invoke-static {p1}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->access$getSelectedAvatarFrameInfo$p(Lcom/codemao/nemo/setting/UserAvatarChooseActivity;)Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;

    move-result-object p1

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;->getHeadFrameUrl()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_13

    :cond_11
    const-string p1, ""

    .line 387
    :cond_13
    invoke-static {p1}, Lcom/codemao/nemo/util/LocalUserHelper;->updateUserAvatarFrame(Ljava/lang/String;)V

    .line 388
    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getCachedUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 389
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getCachedUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object v1

    invoke-virtual {v1}, Lcn/codemao/android/account/bean/UserInfoVO;->getId()Ljava/lang/Long;

    move-result-object v1

    const-string v2, "getCachedUserInfo().id"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2, p1}, Lcom/codemao/nemo/event/UpdateUserInfoEvents;->createUpdateAvatarFrameEvents(JLjava/lang/String;)Lcom/codemao/nemo/event/UpdateUserInfoEvents;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 392
    :cond_38
    iget-object p1, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$setupUserAvatarFrame$1;->this$0:Lcom/codemao/nemo/setting/UserAvatarChooseActivity;

    invoke-static {p1}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->access$setupHeadInfo(Lcom/codemao/nemo/setting/UserAvatarChooseActivity;)V

    .line 394
    iget-object p1, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$setupUserAvatarFrame$1;->this$0:Lcom/codemao/nemo/setting/UserAvatarChooseActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->access$initData(Lcom/codemao/nemo/setting/UserAvatarChooseActivity;Z)V

    return-void
.end method

.method protected startUI()V
    .registers 5

    .line 375
    iget-object v0, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$setupUserAvatarFrame$1;->this$0:Lcom/codemao/nemo/setting/UserAvatarChooseActivity;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->showLoading$default(Lcom/codemao/nemo/setting/UserAvatarChooseActivity;ZILjava/lang/Object;)V

    return-void
.end method

.method protected stopUI()V
    .registers 3

    .line 379
    iget-object v0, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$setupUserAvatarFrame$1;->this$0:Lcom/codemao/nemo/setting/UserAvatarChooseActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->access$showLoading(Lcom/codemao/nemo/setting/UserAvatarChooseActivity;Z)V

    return-void
.end method
