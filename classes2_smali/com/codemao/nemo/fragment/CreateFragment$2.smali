.class Lcom/codemao/nemo/fragment/CreateFragment$2;
.super Ljava/lang/Object;
.source "CreateFragment.java"

# interfaces
.implements Lcom/codemao/nemo/delegates/CreateItemDelegate$CreateCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/CreateFragment;->initAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/CreateFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/CreateFragment;)V
    .registers 2

    .line 280
    iput-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$2;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelDelete(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V
    .registers 7

    const v0, 0x7f0a057f

    const/4 v1, 0x1

    .line 520
    invoke-virtual {p1, v0, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setVisible(IZ)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    .line 521
    iget p2, p2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishStatus:I

    const/4 v0, 0x2

    if-eq p2, v0, :cond_12

    const p2, 0x7f0a0399

    .line 522
    invoke-virtual {p1, p2, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setVisible(IZ)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    :cond_12
    const p2, 0x7f0a09bd

    .line 524
    invoke-virtual {p1, p2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object p2

    const/16 v0, 0xff

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setAlpha(I)V

    const p2, 0x7f0a0470

    .line 525
    invoke-virtual {p1, p2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 526
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    .line 527
    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 528
    iget-object p2, p0, Lcom/codemao/nemo/fragment/CreateFragment$2;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f01002a

    invoke-static {p2, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    check-cast p2, Landroid/view/animation/AnimationSet;

    const-wide/16 v0, 0xc8

    .line 529
    invoke-virtual {p2, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    const/4 v2, 0x0

    .line 530
    invoke-virtual {p2, v2}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 531
    new-instance v3, Lcom/codemao/nemo/fragment/CreateFragment$2$6;

    invoke-direct {v3, p0, p1}, Lcom/codemao/nemo/fragment/CreateFragment$2$6;-><init>(Lcom/codemao/nemo/fragment/CreateFragment$2;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;)V

    invoke-virtual {p2, v3}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const v3, 0x7f0a05fa

    .line 547
    invoke-virtual {p1, v3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 549
    iget-object p2, p0, Lcom/codemao/nemo/fragment/CreateFragment$2;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const v3, 0x7f010037

    invoke-static {p2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    check-cast p2, Landroid/view/animation/AnimationSet;

    .line 550
    invoke-virtual {p2, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 551
    invoke-virtual {p2, v2}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    const v0, 0x7f0a0580

    .line 552
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public onCancelDownload(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V
    .registers 5

    .line 725
    iget p1, p2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->downloadStatus:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_a

    .line 726
    iget-object p1, p2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    invoke-static {p1}, Lcom/codemao/nemo/util/CallUtil;->cancelDownloadById(Ljava/lang/String;)V

    .line 729
    :cond_a
    new-instance p1, Lcom/codemao/nemo/fragment/CreateFragment$2$10;

    invoke-direct {p1, p0, p2, p3}, Lcom/codemao/nemo/fragment/CreateFragment$2$10;-><init>(Lcom/codemao/nemo/fragment/CreateFragment$2;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V

    .line 742
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onConfirmDelete(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V
    .registers 4

    .line 561
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$2;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    const-string p3, "正在删除..."

    invoke-static {p1, p3}, Lcom/codemao/nemo/fragment/CreateFragment;->access$500(Lcom/codemao/nemo/fragment/CreateFragment;Ljava/lang/String;)V

    .line 562
    new-instance p1, Lcom/codemao/nemo/fragment/CreateFragment$2$7;

    invoke-direct {p1, p0, p2}, Lcom/codemao/nemo/fragment/CreateFragment$2$7;-><init>(Lcom/codemao/nemo/fragment/CreateFragment$2;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    invoke-static {p1}, Lcom/giu/xzz/utils/ThreadPoolUtil;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onContinueDownload(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V
    .registers 5

    .line 683
    iget p1, p2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->downloadStatus:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_6

    return-void

    .line 686
    :cond_6
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$2;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1c

    .line 687
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$2;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 690
    :cond_1c
    sget-boolean p1, Lcom/codemao/nemo/util/AppConstants;->HAS_BCM_DOWNLOAD:Z

    if-eqz p1, :cond_2d

    .line 691
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$2;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const p2, 0x7f1202e8

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;I)V

    return-void

    :cond_2d
    const/4 p1, 0x1

    .line 694
    sput-boolean p1, Lcom/codemao/nemo/util/AppConstants;->HAS_BCM_DOWNLOAD:Z

    .line 695
    new-instance p1, Lcom/codemao/nemo/fragment/CreateFragment$2$9;

    invoke-direct {p1, p0, p2, p3}, Lcom/codemao/nemo/fragment/CreateFragment$2$9;-><init>(Lcom/codemao/nemo/fragment/CreateFragment$2;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V

    .line 715
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onCopy(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V
    .registers 5

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    const-string v0, "我的-点击复制作品"

    .line 449
    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 450
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$2;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    const-string v0, "正在复制..."

    invoke-static {p1, v0}, Lcom/codemao/nemo/fragment/CreateFragment;->access$500(Lcom/codemao/nemo/fragment/CreateFragment;Ljava/lang/String;)V

    .line 451
    new-instance p1, Lcom/codemao/nemo/fragment/CreateFragment$2$4;

    invoke-direct {p1, p0, p2, p3}, Lcom/codemao/nemo/fragment/CreateFragment$2$4;-><init>(Lcom/codemao/nemo/fragment/CreateFragment$2;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V

    invoke-static {p1}, Lcom/giu/xzz/utils/ThreadPoolUtil;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDelete(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V
    .registers 7

    .line 475
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$2;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {v0, p1}, Lcom/codemao/nemo/fragment/CreateFragment;->access$1102(Lcom/codemao/nemo/fragment/CreateFragment;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "我的-点击删除作品"

    .line 476
    invoke-static {v2, v1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    const v1, 0x7f0a05fa

    const/4 v2, 0x1

    .line 477
    invoke-virtual {p1, v1, v2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setVisible(IZ)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    const v2, 0x7f0a09bd

    .line 478
    invoke-virtual {p1, v2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v2

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(I)V

    const v2, 0x7f0a0470

    .line 479
    invoke-virtual {p1, v2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 480
    iget p2, p2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->uploadStatus:I

    const v2, 0x7f0a05fd

    const/4 v3, 0x2

    if-ne p2, v3, :cond_38

    const-string p2, "确定删除该作品吗？"

    .line 481
    invoke-virtual {p1, v2, p2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setText(ILjava/lang/String;)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    goto :goto_3d

    :cond_38
    const-string p2, "本作品未上传云端备份，确定要彻底删除吗？"

    .line 483
    invoke-virtual {p1, v2, p2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setText(ILjava/lang/String;)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    .line 485
    :goto_3d
    iget-object p2, p0, Lcom/codemao/nemo/fragment/CreateFragment$2;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const v2, 0x7f01002e

    invoke-static {p2, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    check-cast p2, Landroid/view/animation/AnimationSet;

    const-wide/16 v2, 0xc8

    .line 486
    invoke-virtual {p2, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 487
    invoke-virtual {p2, v0}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 488
    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 490
    iget-object p2, p0, Lcom/codemao/nemo/fragment/CreateFragment$2;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const v1, 0x7f010036

    invoke-static {p2, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    check-cast p2, Landroid/view/animation/AnimationSet;

    .line 491
    invoke-virtual {p2, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 492
    invoke-virtual {p2, v0}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 493
    new-instance v0, Lcom/codemao/nemo/fragment/CreateFragment$2$5;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/fragment/CreateFragment$2$5;-><init>(Lcom/codemao/nemo/fragment/CreateFragment$2;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const v0, 0x7f0a0580

    .line 509
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public onDismissDeleteHolder(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V
    .registers 4

    .line 748
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$2;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/CreateFragment;->access$1500(Lcom/codemao/nemo/fragment/CreateFragment;)V

    return-void
.end method

.method public onEnter(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V
    .registers 9

    const p3, 0x7f0a05fa

    .line 290
    invoke-virtual {p1, p3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getVisible(I)Z

    move-result p3

    if-nez p3, :cond_90

    const p3, 0x7f0a0177

    invoke-virtual {p1, p3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getVisible(I)Z

    move-result p1

    if-eqz p1, :cond_14

    goto/16 :goto_90

    .line 293
    :cond_14
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$2;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/CreateFragment;->rvContainer:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_1f

    return-void

    :cond_1f
    const/4 p1, 0x1

    new-array p3, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 296
    iget v1, p2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishStatus:I

    const-string v2, "已发布"

    const-string v3, "未发布"

    const/4 v4, 0x2

    if-ne v1, v4, :cond_2e

    move-object v1, v2

    goto :goto_2f

    :cond_2e
    move-object v1, v3

    :goto_2f
    aput-object v1, p3, v0

    const-string v0, "我的-点击作品卡片"

    invoke-static {v0, p3}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 297
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p3

    iget v1, p2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishStatus:I

    if-ne v1, v4, :cond_3f

    goto :goto_40

    :cond_3f
    move-object v2, v3

    :goto_40
    invoke-virtual {p3, v2}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setWorkState(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p3

    invoke-virtual {p3}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 298
    iget-object p3, p0, Lcom/codemao/nemo/fragment/CreateFragment$2;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {p3, p1}, Lcom/codemao/nemo/fragment/CreateFragment;->access$002(Lcom/codemao/nemo/fragment/CreateFragment;Z)Z

    .line 299
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$2;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_8b

    iget-object p1, p2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8b

    iget p1, p2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishStatus:I

    if-ne p1, v4, :cond_8b

    .line 301
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p3, Lcom/codemao/nemo/fragment/CreateFragment$2$1;

    invoke-direct {p3, p0, p2}, Lcom/codemao/nemo/fragment/CreateFragment$2$1;-><init>(Lcom/codemao/nemo/fragment/CreateFragment$2;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 311
    iget-object p1, p2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 312
    new-instance p1, Lcom/codemao/nemo/http/DiscoveryNetUtil;

    invoke-direct {p1}, Lcom/codemao/nemo/http/DiscoveryNetUtil;-><init>()V

    new-instance p3, Lcom/codemao/nemo/fragment/CreateFragment$2$2;

    invoke-direct {p3, p0, p2}, Lcom/codemao/nemo/fragment/CreateFragment$2$2;-><init>(Lcom/codemao/nemo/fragment/CreateFragment$2;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    invoke-virtual {p1, v0, v1, p3}, Lcom/codemao/nemo/http/DiscoveryNetUtil;->getWorkDetail(JLcom/codemao/nemo/http/LocalNetCallBackV2;)V

    goto :goto_90

    .line 369
    :cond_8b
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$2;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {p1, p2}, Lcom/codemao/nemo/fragment/CreateFragment;->access$100(Lcom/codemao/nemo/fragment/CreateFragment;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    :cond_90
    :goto_90
    return-void
.end method

.method public onPublish(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V
    .registers 4

    .line 609
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$2;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_16

    .line 610
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$2;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 613
    :cond_16
    iget p1, p2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishStatus:I

    const/4 p3, 0x2

    if-ne p1, p3, :cond_21

    .line 614
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$2;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {p1, p2}, Lcom/codemao/nemo/fragment/CreateFragment;->access$1300(Lcom/codemao/nemo/fragment/CreateFragment;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    goto :goto_30

    .line 616
    :cond_21
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$2;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    const-string p3, "上传中，请稍后..."

    invoke-static {p1, p3}, Lcom/codemao/nemo/fragment/CreateFragment;->access$500(Lcom/codemao/nemo/fragment/CreateFragment;Ljava/lang/String;)V

    .line 617
    new-instance p1, Lcom/codemao/nemo/fragment/CreateFragment$2$8;

    invoke-direct {p1, p0, p2}, Lcom/codemao/nemo/fragment/CreateFragment$2$8;-><init>(Lcom/codemao/nemo/fragment/CreateFragment$2;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    invoke-static {p1}, Lcom/giu/xzz/utils/ThreadPoolUtil;->post(Ljava/lang/Runnable;)V

    :goto_30
    return-void
.end method

.method public onRename(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V
    .registers 4

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    const-string p2, "我的-点击修改作品名称"

    .line 379
    invoke-static {p2, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 380
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$2;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {p1, p3}, Lcom/codemao/nemo/fragment/CreateFragment;->access$400(Lcom/codemao/nemo/fragment/CreateFragment;I)V

    return-void
.end method

.method public onShare(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V
    .registers 6

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    const-string v0, "我的-点击分享"

    .line 585
    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 586
    iget p1, p2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishStatus:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_17

    iget p1, p2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->uploadStatus:I

    if-eq p1, v0, :cond_17

    .line 588
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$2;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {p1, p2, p3}, Lcom/codemao/nemo/fragment/CreateFragment;->access$1200(Lcom/codemao/nemo/fragment/CreateFragment;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V

    goto :goto_49

    .line 590
    :cond_17
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$2;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2d

    .line 591
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$2;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 594
    :cond_2d
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$2;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/codemao/nemo/activity/ShareProductActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "data"

    .line 595
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p2, "position"

    .line 596
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 597
    iget-object p2, p0, Lcom/codemao/nemo/fragment/CreateFragment$2;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-virtual {p2, p1}, Lcom/giu/xzz/BaseFragment;->startActivity(Landroid/content/Intent;)V

    :goto_49
    return-void
.end method

.method public onUpload(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V
    .registers 6

    .line 391
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$2;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_18

    .line 392
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$2;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string p2, "网络不可用，请检查网络设置"

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 395
    :cond_18
    iget p1, p2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishStatus:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_38

    .line 396
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$2;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    const-string v0, "上传中，请稍后..."

    invoke-static {p1, v0}, Lcom/codemao/nemo/fragment/CreateFragment;->access$500(Lcom/codemao/nemo/fragment/CreateFragment;Ljava/lang/String;)V

    .line 398
    invoke-static {}, Lcom/codemao/nemo/util/UserLevelupHelper;->getInstance()Lcom/codemao/nemo/util/UserLevelupHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$2;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    .line 399
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/fragment/CreateFragment$2$3;

    invoke-direct {v1, p0, p2, p3}, Lcom/codemao/nemo/fragment/CreateFragment$2$3;-><init>(Lcom/codemao/nemo/fragment/CreateFragment$2;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V

    const/4 p2, 0x0

    .line 398
    invoke-virtual {p1, v0, p2, p2, v1}, Lcom/codemao/nemo/util/UserLevelupHelper;->checkUserVerifiedAndFriendlyProtocol(Landroid/content/Context;ZZLcom/codemao/nemo/util/UserLevelupHelper$CheckUserVerifiedAndAnswerFriendlyProtocolCallback;)V

    goto :goto_3d

    .line 437
    :cond_38
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$2;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {p1, p2, p3}, Lcom/codemao/nemo/fragment/CreateFragment;->access$900(Lcom/codemao/nemo/fragment/CreateFragment;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V

    :goto_3d
    return-void
.end method
