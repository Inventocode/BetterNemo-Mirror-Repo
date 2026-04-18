.class public final Lcom/codemao/nemo/setting/UserAvatarChooseActivity$updateAvatar$1;
.super Lcom/codemao/nemo/retrofit/response/CommonSubcriber;
.source "UserAvatarChooseActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->updateAvatar(Ljava/lang/String;)V
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
.field final synthetic $url:Ljava/lang/String;

.field final synthetic this$0:Lcom/codemao/nemo/setting/UserAvatarChooseActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/setting/UserAvatarChooseActivity;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$updateAvatar$1;->this$0:Lcom/codemao/nemo/setting/UserAvatarChooseActivity;

    iput-object p2, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$updateAvatar$1;->$url:Ljava/lang/String;

    .line 573
    invoke-direct {p0}, Lcom/codemao/nemo/retrofit/response/CommonSubcriber;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 600
    iget-object p1, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$updateAvatar$1;->this$0:Lcom/codemao/nemo/setting/UserAvatarChooseActivity;

    const-string p2, "修改头像失败"

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ToastUtil;->showCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onNetError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 604
    invoke-virtual {p0, p1, p2}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$updateAvatar$1;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 573
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$updateAvatar$1;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method protected onSuccess(Ljava/lang/String;)V
    .registers 5

    .line 584
    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getCachedUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 585
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getCachedUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/account/bean/UserInfoVO;->getId()Ljava/lang/Long;

    move-result-object v0

    const-string v1, "getCachedUserInfo().id"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$updateAvatar$1;->$url:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/codemao/nemo/event/UpdateUserInfoEvents;->creatUpdateAvatarEvents(JLjava/lang/String;)Lcom/codemao/nemo/event/UpdateUserInfoEvents;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 587
    :cond_24
    iget-object p1, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$updateAvatar$1;->this$0:Lcom/codemao/nemo/setting/UserAvatarChooseActivity;

    const-string v0, "修改头像成功"

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 588
    iget-object p1, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$updateAvatar$1;->$url:Ljava/lang/String;

    invoke-static {p1}, Lcom/codemao/nemo/util/LocalUserHelper;->updateUserAvatar(Ljava/lang/String;)V

    .line 589
    iget-object p1, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$updateAvatar$1;->this$0:Lcom/codemao/nemo/setting/UserAvatarChooseActivity;

    invoke-static {p1}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->access$getMChoseAvatarPop(Lcom/codemao/nemo/setting/UserAvatarChooseActivity;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    .line 591
    iget-object p1, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$updateAvatar$1;->this$0:Lcom/codemao/nemo/setting/UserAvatarChooseActivity;

    invoke-static {p1}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->access$isPad$p(Lcom/codemao/nemo/setting/UserAvatarChooseActivity;)Z

    move-result p1

    if-eqz p1, :cond_50

    .line 592
    iget-object p1, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$updateAvatar$1;->$url:Ljava/lang/String;

    iget-object v0, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$updateAvatar$1;->this$0:Lcom/codemao/nemo/setting/UserAvatarChooseActivity;

    sget v1, Lcom/codemao/nemo/R$id;->iv_user_avatar:I

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/view/RoundStrokeImageView;

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/GlideUtils;->load(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 595
    :cond_50
    iget-object p1, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$updateAvatar$1;->this$0:Lcom/codemao/nemo/setting/UserAvatarChooseActivity;

    invoke-static {p1}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->access$getMAdapter(Lcom/codemao/nemo/setting/UserAvatarChooseActivity;)Lcom/codemao/nemo/setting/adapter/UserAvatarFrameAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected startUI()V
    .registers 5

    .line 576
    iget-object v0, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$updateAvatar$1;->this$0:Lcom/codemao/nemo/setting/UserAvatarChooseActivity;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->showLoading$default(Lcom/codemao/nemo/setting/UserAvatarChooseActivity;ZILjava/lang/Object;)V

    return-void
.end method

.method protected stopUI()V
    .registers 3

    .line 580
    iget-object v0, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$updateAvatar$1;->this$0:Lcom/codemao/nemo/setting/UserAvatarChooseActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->access$showLoading(Lcom/codemao/nemo/setting/UserAvatarChooseActivity;Z)V

    return-void
.end method
