.class public final Lcom/codemao/nemo/setting/UserAvatarChooseActivity$cancelCurAvatarFrame$1;
.super Lcom/codemao/nemo/retrofit/response/CommonSubcriber;
.source "UserAvatarChooseActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->cancelCurAvatarFrame()V
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

    iput-object p1, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$cancelCurAvatarFrame$1;->this$0:Lcom/codemao/nemo/setting/UserAvatarChooseActivity;

    .line 327
    invoke-direct {p0}, Lcom/codemao/nemo/retrofit/response/CommonSubcriber;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 354
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    .line 357
    :cond_7
    iget-object p1, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$cancelCurAvatarFrame$1;->this$0:Lcom/codemao/nemo/setting/UserAvatarChooseActivity;

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ToastUtil;->showCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onNetError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 361
    invoke-virtual {p0, p1, p2}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$cancelCurAvatarFrame$1;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 327
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$cancelCurAvatarFrame$1;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method protected onSuccess(Ljava/lang/String;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    .line 340
    :cond_3
    iget-object p1, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$cancelCurAvatarFrame$1;->this$0:Lcom/codemao/nemo/setting/UserAvatarChooseActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->access$setSelectedAvatarFrameInfo$p(Lcom/codemao/nemo/setting/UserAvatarChooseActivity;Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;)V

    const-string p1, ""

    .line 343
    invoke-static {p1}, Lcom/codemao/nemo/util/LocalUserHelper;->updateUserAvatarFrame(Ljava/lang/String;)V

    .line 344
    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getCachedUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object v1

    if-eqz v1, :cond_30

    .line 345
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getCachedUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object v2

    invoke-virtual {v2}, Lcn/codemao/android/account/bean/UserInfoVO;->getId()Ljava/lang/Long;

    move-result-object v2

    const-string v3, "getCachedUserInfo().id"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3, p1}, Lcom/codemao/nemo/event/UpdateUserInfoEvents;->createUpdateAvatarFrameEvents(JLjava/lang/String;)Lcom/codemao/nemo/event/UpdateUserInfoEvents;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 348
    :cond_30
    iget-object p1, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$cancelCurAvatarFrame$1;->this$0:Lcom/codemao/nemo/setting/UserAvatarChooseActivity;

    invoke-static {p1}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->access$setupHeadInfo(Lcom/codemao/nemo/setting/UserAvatarChooseActivity;)V

    .line 350
    iget-object p1, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$cancelCurAvatarFrame$1;->this$0:Lcom/codemao/nemo/setting/UserAvatarChooseActivity;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v1, v2, v0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->initData$default(Lcom/codemao/nemo/setting/UserAvatarChooseActivity;ZILjava/lang/Object;)V

    return-void
.end method

.method protected startUI()V
    .registers 5

    .line 329
    iget-object v0, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$cancelCurAvatarFrame$1;->this$0:Lcom/codemao/nemo/setting/UserAvatarChooseActivity;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->showLoading$default(Lcom/codemao/nemo/setting/UserAvatarChooseActivity;ZILjava/lang/Object;)V

    return-void
.end method

.method protected stopUI()V
    .registers 3

    .line 333
    iget-object v0, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$cancelCurAvatarFrame$1;->this$0:Lcom/codemao/nemo/setting/UserAvatarChooseActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->access$showLoading(Lcom/codemao/nemo/setting/UserAvatarChooseActivity;Z)V

    return-void
.end method
