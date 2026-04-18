.class public final Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment$initData$1;
.super Lcom/codemao/nemo/retrofit/response/CommonSubcriber;
.source "MineCommonUserInfoFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/retrofit/response/CommonSubcriber<",
        "Lcom/codemao/nemo/bean/CreateHeadData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment<",
            "TBinding;TBindingPad;TViewModel;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment<",
            "TBinding;TBindingPad;TViewModel;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment$initData$1;->this$0:Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;

    .line 105
    invoke-direct {p0}, Lcom/codemao/nemo/retrofit/response/CommonSubcriber;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "msg"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment$initData$1;->this$0:Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;->setHeadLoadFinish(Z)V

    .line 139
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object p1

    if-eqz p1, :cond_2f

    .line 140
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/LocalUserInfo;->getAvatar_url()Ljava/lang/String;

    move-result-object p1

    .line 141
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment$initData$1;->this$0:Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;

    invoke-static {v0}, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;->access$getPhoto_iv$p(Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;)Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_2c

    const-string v0, "photo_iv"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 139
    :cond_2c
    invoke-static {p1, v0}, Lcom/codemao/nemo/util/GlideUtils;->loadUserAvatar(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 143
    :cond_2f
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment$initData$1;->this$0:Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;

    invoke-virtual {p1}, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;->isVisilble()Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 144
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment$initData$1;->this$0:Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;

    invoke-virtual {p1, p2}, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;->setDataOffline(Z)V

    :cond_3c
    return-void
.end method

.method protected onNetError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "msg"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment$initData$1;->this$0:Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;->setHeadLoadFinish(Z)V

    .line 150
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object p1

    if-eqz p1, :cond_2f

    .line 151
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/LocalUserInfo;->getAvatar_url()Ljava/lang/String;

    move-result-object p1

    .line 152
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment$initData$1;->this$0:Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;

    invoke-static {v0}, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;->access$getPhoto_iv$p(Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;)Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_2c

    const-string v0, "photo_iv"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 150
    :cond_2c
    invoke-static {p1, v0}, Lcom/codemao/nemo/util/GlideUtils;->loadUserAvatar(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 154
    :cond_2f
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment$initData$1;->this$0:Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;

    invoke-virtual {p1}, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;->isVisilble()Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 155
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment$initData$1;->this$0:Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;

    invoke-virtual {p1, p2}, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;->setDataOffline(Z)V

    :cond_3c
    return-void
.end method

.method protected onSuccess(Lcom/codemao/nemo/bean/CreateHeadData;)V
    .registers 12

    .line 107
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment$initData$1;->this$0:Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;->setHeadLoadFinish(Z)V

    if-nez p1, :cond_f

    .line 109
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment$initData$1;->this$0:Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;->setDataOffline(Z)V

    return-void

    .line 112
    :cond_f
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment$initData$1;->this$0:Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CreateHeadData;->getAvatar_url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;->setAvatarUrl(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment$initData$1;->this$0:Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;

    invoke-static {v0}, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;->access$getName_tv$p(Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_27

    const-string v0, "name_tv"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_27
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CreateHeadData;->getNickname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment$initData$1;->this$0:Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;

    invoke-static {v0}, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;->access$getTvUserId$p(Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;)Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_3c

    const-string v0, "tvUserId"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_3c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CreateHeadData;->getUser_id()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CreateHeadData;->getN_likes()J

    move-result-wide v4

    .line 118
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CreateHeadData;->getN_views()J

    move-result-wide v6

    .line 119
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CreateHeadData;->getN_re_create()J

    move-result-wide v8

    .line 116
    invoke-static/range {v4 .. v9}, Lcom/codemao/nemo/util/LocalUserHelper;->updateUserOptionInfo(JJJ)V

    .line 121
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CreateHeadData;->getAvatar_url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/util/LocalUserHelper;->updateUserAvatar(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CreateHeadData;->getNickname()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/util/LocalUserHelper;->updateUserNickName(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CreateHeadData;->getAuthor_level()I

    move-result v0

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CreateHeadData;->getConsume_level()I

    move-result v3

    invoke-static {v0, v3}, Lcom/codemao/nemo/util/LocalUserHelper;->updateUserLevelInfo(II)V

    .line 124
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CreateHeadData;->getIs_official_certification()I

    move-result v0

    invoke-static {v0}, Lcom/codemao/nemo/util/LocalUserHelper;->updateUserIsOffical(I)V

    .line 125
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CreateHeadData;->getHead_frame_url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/util/LocalUserHelper;->updateUserAvatarFrame(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CreateHeadData;->getSmall_head_frame_url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/util/LocalUserHelper;->updateSmallUserAvatarFrame(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment$initData$1;->this$0:Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CreateHeadData;->getAuthor_level()I

    move-result v3

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CreateHeadData;->getHead_frame_url()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v3, p1}, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;->access$setUserLevelInfo(Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;ILjava/lang/String;)V

    .line 128
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object p1

    if-eqz p1, :cond_be

    .line 129
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/LocalUserInfo;->getAvatar_url()Ljava/lang/String;

    move-result-object p1

    .line 130
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment$initData$1;->this$0:Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;

    invoke-static {v0}, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;->access$getPhoto_iv$p(Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;)Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_ba

    const-string v0, "photo_iv"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_bb

    :cond_ba
    move-object v2, v0

    .line 128
    :goto_bb
    invoke-static {p1, v2}, Lcom/codemao/nemo/util/GlideUtils;->loadUserAvatar(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 132
    :cond_be
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment$initData$1;->this$0:Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;

    invoke-virtual {p1}, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;->isVisilble()Z

    move-result p1

    if-eqz p1, :cond_cb

    .line 133
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment$initData$1;->this$0:Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;

    invoke-virtual {p1, v1}, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;->setDataOffline(Z)V

    :cond_cb
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 105
    check-cast p1, Lcom/codemao/nemo/bean/CreateHeadData;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment$initData$1;->onSuccess(Lcom/codemao/nemo/bean/CreateHeadData;)V

    return-void
.end method
