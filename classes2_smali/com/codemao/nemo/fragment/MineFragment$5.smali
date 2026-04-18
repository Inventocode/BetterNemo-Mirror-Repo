.class Lcom/codemao/nemo/fragment/MineFragment$5;
.super Lcom/codemao/nemo/retrofit/response/CommonSubcriber;
.source "MineFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/MineFragment;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic this$0:Lcom/codemao/nemo/fragment/MineFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/MineFragment;)V
    .registers 2

    .line 342
    iput-object p1, p0, Lcom/codemao/nemo/fragment/MineFragment$5;->this$0:Lcom/codemao/nemo/fragment/MineFragment;

    invoke-direct {p0}, Lcom/codemao/nemo/retrofit/response/CommonSubcriber;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 370
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MineFragment$5;->this$0:Lcom/codemao/nemo/fragment/MineFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/codemao/nemo/fragment/MineFragment;->access$202(Lcom/codemao/nemo/fragment/MineFragment;Z)Z

    .line 371
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object p1

    if-eqz p1, :cond_1b

    .line 372
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/LocalUserInfo;->getAvatar_url()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragment$5;->this$0:Lcom/codemao/nemo/fragment/MineFragment;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/MineFragment;->photo_iv:Lcom/codemao/nemo/view/RoundStrokeImageView;

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/GlideUtils;->loadUserAvatar(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 373
    :cond_1b
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MineFragment$5;->this$0:Lcom/codemao/nemo/fragment/MineFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/MineFragment;->access$600(Lcom/codemao/nemo/fragment/MineFragment;)Z

    move-result p1

    if-eqz p1, :cond_28

    .line 374
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MineFragment$5;->this$0:Lcom/codemao/nemo/fragment/MineFragment;

    invoke-static {p1, p2}, Lcom/codemao/nemo/fragment/MineFragment;->access$300(Lcom/codemao/nemo/fragment/MineFragment;Z)V

    :cond_28
    return-void
.end method

.method protected onNetError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 381
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MineFragment$5;->this$0:Lcom/codemao/nemo/fragment/MineFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/codemao/nemo/fragment/MineFragment;->access$202(Lcom/codemao/nemo/fragment/MineFragment;Z)Z

    .line 382
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object p1

    if-eqz p1, :cond_1b

    .line 383
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/LocalUserInfo;->getAvatar_url()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragment$5;->this$0:Lcom/codemao/nemo/fragment/MineFragment;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/MineFragment;->photo_iv:Lcom/codemao/nemo/view/RoundStrokeImageView;

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/GlideUtils;->loadUserAvatar(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 384
    :cond_1b
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MineFragment$5;->this$0:Lcom/codemao/nemo/fragment/MineFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/MineFragment;->access$600(Lcom/codemao/nemo/fragment/MineFragment;)Z

    move-result p1

    if-eqz p1, :cond_28

    .line 385
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MineFragment$5;->this$0:Lcom/codemao/nemo/fragment/MineFragment;

    invoke-static {p1, p2}, Lcom/codemao/nemo/fragment/MineFragment;->access$300(Lcom/codemao/nemo/fragment/MineFragment;Z)V

    :cond_28
    return-void
.end method

.method protected onSuccess(Lcom/codemao/nemo/bean/CreateHeadData;)V
    .registers 11

    .line 345
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragment$5;->this$0:Lcom/codemao/nemo/fragment/MineFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/codemao/nemo/fragment/MineFragment;->access$202(Lcom/codemao/nemo/fragment/MineFragment;Z)Z

    if-nez p1, :cond_f

    .line 347
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MineFragment$5;->this$0:Lcom/codemao/nemo/fragment/MineFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/codemao/nemo/fragment/MineFragment;->access$300(Lcom/codemao/nemo/fragment/MineFragment;Z)V

    return-void

    .line 350
    :cond_f
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragment$5;->this$0:Lcom/codemao/nemo/fragment/MineFragment;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CreateHeadData;->getAvatar_url()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/codemao/nemo/fragment/MineFragment;->access$402(Lcom/codemao/nemo/fragment/MineFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 351
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragment$5;->this$0:Lcom/codemao/nemo/fragment/MineFragment;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/MineFragment;->name_tv:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CreateHeadData;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CreateHeadData;->getN_likes()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CreateHeadData;->getN_views()J

    move-result-wide v5

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CreateHeadData;->getN_re_create()J

    move-result-wide v7

    invoke-static/range {v3 .. v8}, Lcom/codemao/nemo/util/LocalUserHelper;->updateUserOptionInfo(JJJ)V

    .line 354
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CreateHeadData;->getAvatar_url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/util/LocalUserHelper;->updateUserAvatar(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CreateHeadData;->getNickname()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/util/LocalUserHelper;->updateUserNickName(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CreateHeadData;->getAuthor_level()I

    move-result v0

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CreateHeadData;->getConsume_level()I

    move-result v2

    invoke-static {v0, v2}, Lcom/codemao/nemo/util/LocalUserHelper;->updateUserLevelInfo(II)V

    .line 357
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CreateHeadData;->getIs_official_certification()I

    move-result v0

    invoke-static {v0}, Lcom/codemao/nemo/util/LocalUserHelper;->updateUserIsOffical(I)V

    .line 358
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CreateHeadData;->getHead_frame_url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/util/LocalUserHelper;->updateUserAvatarFrame(Ljava/lang/String;)V

    .line 359
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CreateHeadData;->getSmall_head_frame_url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/util/LocalUserHelper;->updateSmallUserAvatarFrame(Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragment$5;->this$0:Lcom/codemao/nemo/fragment/MineFragment;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CreateHeadData;->getAuthor_level()I

    move-result v2

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CreateHeadData;->getHead_frame_url()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v2, p1}, Lcom/codemao/nemo/fragment/MineFragment;->access$500(Lcom/codemao/nemo/fragment/MineFragment;ILjava/lang/String;)V

    .line 361
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object p1

    if-eqz p1, :cond_82

    .line 362
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/LocalUserInfo;->getAvatar_url()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragment$5;->this$0:Lcom/codemao/nemo/fragment/MineFragment;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/MineFragment;->photo_iv:Lcom/codemao/nemo/view/RoundStrokeImageView;

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/GlideUtils;->loadUserAvatar(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 363
    :cond_82
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MineFragment$5;->this$0:Lcom/codemao/nemo/fragment/MineFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/MineFragment;->access$600(Lcom/codemao/nemo/fragment/MineFragment;)Z

    move-result p1

    if-eqz p1, :cond_8f

    .line 364
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MineFragment$5;->this$0:Lcom/codemao/nemo/fragment/MineFragment;

    invoke-static {p1, v1}, Lcom/codemao/nemo/fragment/MineFragment;->access$300(Lcom/codemao/nemo/fragment/MineFragment;Z)V

    :cond_8f
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 342
    check-cast p1, Lcom/codemao/nemo/bean/CreateHeadData;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/fragment/MineFragment$5;->onSuccess(Lcom/codemao/nemo/bean/CreateHeadData;)V

    return-void
.end method
