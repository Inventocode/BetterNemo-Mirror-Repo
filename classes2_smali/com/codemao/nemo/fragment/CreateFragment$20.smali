.class Lcom/codemao/nemo/fragment/CreateFragment$20;
.super Ljava/lang/Object;
.source "CreateFragment.java"

# interfaces
.implements Lcom/giu/xzz/utils/HandlerUtil$HandleBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/nemo/fragment/CreateFragment;
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

    .line 1585
    iput-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 13

    .line 1588
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/CreateFragment;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_13

    .line 1589
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/CreateFragment;->mProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1591
    :cond_13
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_39c

    goto/16 :goto_39b

    .line 1862
    :pswitch_1e  #0xc
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-object p1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/codemao/nemo/fragment/CreateFragment;->access$3200(Lcom/codemao/nemo/fragment/CreateFragment;Ljava/lang/String;)I

    move-result p1

    if-ne p1, v3, :cond_32

    .line 1864
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/CreateFragment;->access$3300(Lcom/codemao/nemo/fragment/CreateFragment;)V

    return-void

    .line 1867
    :cond_32
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "该作品已取消发布了哦～"

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 1868
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/CreateFragment;->access$2500(Lcom/codemao/nemo/fragment/CreateFragment;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto/16 :goto_39b

    .line 1854
    :pswitch_48  #0xb
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-object p1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/codemao/nemo/fragment/CreateFragment;->access$3200(Lcom/codemao/nemo/fragment/CreateFragment;Ljava/lang/String;)I

    move-result p1

    if-ne p1, v3, :cond_5c

    .line 1856
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/CreateFragment;->access$3300(Lcom/codemao/nemo/fragment/CreateFragment;)V

    return-void

    .line 1859
    :cond_5c
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/CreateFragment;->access$2500(Lcom/codemao/nemo/fragment/CreateFragment;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto/16 :goto_39b

    .line 1850
    :pswitch_67  #0xa
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/CreateFragment;->access$2500(Lcom/codemao/nemo/fragment/CreateFragment;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 1851
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-static {v0, p1}, Lcom/codemao/nemo/fragment/CreateFragment;->access$3500(Lcom/codemao/nemo/fragment/CreateFragment;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    goto/16 :goto_39b

    .line 1843
    :pswitch_7d  #0x9
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_8d

    .line 1844
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/CreateFragment;->access$2900(Lcom/codemao/nemo/fragment/CreateFragment;)Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    move-result-object p1

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->showByType(I)Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    goto/16 :goto_39b

    .line 1846
    :cond_8d
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/CreateFragment;->access$2900(Lcom/codemao/nemo/fragment/CreateFragment;)Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->showByType(I)Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    goto/16 :goto_39b

    .line 1826
    :pswitch_99  #0x8
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/CreateFragment;->access$2900(Lcom/codemao/nemo/fragment/CreateFragment;)Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->showByType(I)Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    .line 1827
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/codemao/nemo/bean/GetMiaoCodeResponse;

    .line 1828
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/CreateFragment;->access$2900(Lcom/codemao/nemo/fragment/CreateFragment;)Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/fragment/CreateFragment$20$4;

    invoke-direct {v1, p0, p1}, Lcom/codemao/nemo/fragment/CreateFragment$20$4;-><init>(Lcom/codemao/nemo/fragment/CreateFragment$20;Lcom/codemao/nemo/bean/GetMiaoCodeResponse;)V

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->setGenerateMiaoCodeCallback(Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$GenerateMiaoCodeCallback;)V

    goto/16 :goto_39b

    .line 1822
    :pswitch_b6  #0x7
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/CreateFragment;->access$600(Lcom/codemao/nemo/fragment/CreateFragment;)V

    .line 1823
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "上传失败，请检查网络后再试"

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto/16 :goto_39b

    .line 1773
    :pswitch_c8  #0x6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    .line 1774
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    iget-object v1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/codemao/nemo/fragment/CreateFragment;->access$3200(Lcom/codemao/nemo/fragment/CreateFragment;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_dc

    .line 1776
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/CreateFragment;->access$3300(Lcom/codemao/nemo/fragment/CreateFragment;)V

    return-void

    .line 1779
    :cond_dc
    iget-object v1, p0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {v1}, Lcom/codemao/nemo/fragment/CreateFragment;->access$2500(Lcom/codemao/nemo/fragment/CreateFragment;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 1781
    invoke-static {}, Lcom/codemao/nemo/util/UserLevelupHelper;->getInstance()Lcom/codemao/nemo/util/UserLevelupHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    .line 1782
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Lcom/codemao/nemo/fragment/CreateFragment$20$3;

    invoke-direct {v3, p0, p1}, Lcom/codemao/nemo/fragment/CreateFragment$20$3;-><init>(Lcom/codemao/nemo/fragment/CreateFragment$20;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    .line 1781
    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/codemao/nemo/util/UserLevelupHelper;->checkUserVerifiedAndFriendlyProtocol(Landroid/content/Context;ZZLcom/codemao/nemo/util/UserLevelupHelper$CheckUserVerifiedAndAnswerFriendlyProtocolCallback;)V

    goto/16 :goto_39b

    .line 1650
    :pswitch_f9  #0x5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/codemao/creativestore/bean/WorksEvent;

    if-eqz v0, :cond_39b

    .line 1652
    iget-object v5, p0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {v5}, Lcom/codemao/nemo/fragment/CreateFragment;->access$1400(Lcom/codemao/nemo/fragment/CreateFragment;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 1653
    iget-object v5, p0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {v5}, Lcom/codemao/nemo/fragment/CreateFragment;->access$1400(Lcom/codemao/nemo/fragment/CreateFragment;)Ljava/util/List;

    move-result-object v5

    invoke-static {}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->getBcms()Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1654
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v5

    new-instance v6, Lcom/codemao/nemo/event/MineTabEvent;

    iget-object v7, p0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {v7}, Lcom/codemao/nemo/fragment/CreateFragment;->access$1400(Lcom/codemao/nemo/fragment/CreateFragment;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v6, v4, v7}, Lcom/codemao/nemo/event/MineTabEvent;-><init>(II)V

    invoke-virtual {v5, v6}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1657
    :goto_12d
    iget-object v7, p0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {v7}, Lcom/codemao/nemo/fragment/CreateFragment;->access$1400(Lcom/codemao/nemo/fragment/CreateFragment;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_174

    .line 1658
    iget-object v7, p0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {v7}, Lcom/codemao/nemo/fragment/CreateFragment;->access$1400(Lcom/codemao/nemo/fragment/CreateFragment;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    .line 1659
    iget-object v8, v7, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_171

    iget-object v8, v0, Lcom/codemao/creativestore/bean/WorksEvent;->desDirPath:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_171

    iget-object v8, v7, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    const-string v9, ".cover"

    .line 1660
    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v4

    iget-object v9, v0, Lcom/codemao/creativestore/bean/WorksEvent;->desDirPath:Ljava/lang/String;

    const-string v10, ".bcm"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_171

    move-object v5, v7

    goto :goto_175

    :cond_171
    add-int/lit8 v6, v6, 0x1

    goto :goto_12d

    :cond_174
    const/4 v6, -0x1

    .line 1668
    :goto_175
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-nez p1, :cond_1e2

    .line 1669
    iget p1, v0, Lcom/codemao/creativestore/bean/WorksEvent;->type:I

    if-ne p1, v1, :cond_1ab

    if-eq v6, v3, :cond_1aa

    .line 1671
    invoke-static {v5}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->deleteBcm(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)Z

    .line 1672
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/CreateFragment;->access$1400(Lcom/codemao/nemo/fragment/CreateFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1673
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/CreateFragment;->access$2500(Lcom/codemao/nemo/fragment/CreateFragment;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1674
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/codemao/nemo/event/MineTabEvent;

    iget-object v1, p0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {v1}, Lcom/codemao/nemo/fragment/CreateFragment;->access$1400(Lcom/codemao/nemo/fragment/CreateFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v4, v1}, Lcom/codemao/nemo/event/MineTabEvent;-><init>(II)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_1aa
    return-void

    :cond_1ab
    if-eq v6, v3, :cond_1d8

    if-eqz v5, :cond_1d8

    .line 1679
    iput v2, v5, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->uploadStatus:I

    .line 1680
    iput v1, v5, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->downloadStatus:I

    .line 1681
    invoke-static {v5}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->updatePublishStatus(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)Z

    .line 1682
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/CreateFragment;->access$1400(Lcom/codemao/nemo/fragment/CreateFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1683
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/CreateFragment;->access$1400(Lcom/codemao/nemo/fragment/CreateFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v4, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1684
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/CreateFragment;->access$2500(Lcom/codemao/nemo/fragment/CreateFragment;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1685
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/CreateFragment;->rvContainer:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 1687
    :cond_1d8
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/CreateFragment;->access$2500(Lcom/codemao/nemo/fragment/CreateFragment;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    :cond_1e2
    if-nez v5, :cond_1f1

    .line 1693
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/CreateFragment;->access$1400(Lcom/codemao/nemo/fragment/CreateFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    :cond_1f1
    if-eq v6, v3, :cond_20e

    .line 1697
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/CreateFragment;->access$1400(Lcom/codemao/nemo/fragment/CreateFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1698
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/CreateFragment;->access$1400(Lcom/codemao/nemo/fragment/CreateFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v4, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1699
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/CreateFragment;->access$2500(Lcom/codemao/nemo/fragment/CreateFragment;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1701
    :cond_20e
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_236

    .line 1702
    iput v2, v5, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->uploadStatus:I

    .line 1703
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/CreateFragment;->access$2500(Lcom/codemao/nemo/fragment/CreateFragment;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1704
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/CreateFragment;->rvContainer:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 1705
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 1708
    :cond_236
    iget p1, v5, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishStatus:I

    if-ne p1, v1, :cond_25f

    .line 1709
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {p1, v5}, Lcom/codemao/nemo/fragment/CreateFragment;->access$702(Lcom/codemao/nemo/fragment/CreateFragment;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    .line 1710
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {p1, v4}, Lcom/codemao/nemo/fragment/CreateFragment;->access$802(Lcom/codemao/nemo/fragment/CreateFragment;I)I

    .line 1711
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    const-string v0, "上传中，请稍后..."

    invoke-static {p1, v0}, Lcom/codemao/nemo/fragment/CreateFragment;->access$500(Lcom/codemao/nemo/fragment/CreateFragment;Ljava/lang/String;)V

    .line 1713
    invoke-static {}, Lcom/codemao/nemo/util/UserLevelupHelper;->getInstance()Lcom/codemao/nemo/util/UserLevelupHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    .line 1714
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/fragment/CreateFragment$20$2;

    invoke-direct {v1, p0, v5}, Lcom/codemao/nemo/fragment/CreateFragment$20$2;-><init>(Lcom/codemao/nemo/fragment/CreateFragment$20;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    .line 1713
    invoke-virtual {p1, v0, v4, v4, v1}, Lcom/codemao/nemo/util/UserLevelupHelper;->checkUserVerifiedAndFriendlyProtocol(Landroid/content/Context;ZZLcom/codemao/nemo/util/UserLevelupHelper$CheckUserVerifiedAndAnswerFriendlyProtocolCallback;)V

    goto/16 :goto_39b

    .line 1768
    :cond_25f
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {p1, v5, v4}, Lcom/codemao/nemo/fragment/CreateFragment;->access$900(Lcom/codemao/nemo/fragment/CreateFragment;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V

    goto/16 :goto_39b

    .line 1641
    :pswitch_266  #0x4
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-object v1, v1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/codemao/nemo/fragment/CreateFragment;->access$3200(Lcom/codemao/nemo/fragment/CreateFragment;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_27a

    .line 1643
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/CreateFragment;->access$3300(Lcom/codemao/nemo/fragment/CreateFragment;)V

    return-void

    .line 1646
    :cond_27a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-static {p1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->updatePublishStatusError(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)Z

    .line 1647
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/CreateFragment;->access$2500(Lcom/codemao/nemo/fragment/CreateFragment;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto/16 :goto_39b

    .line 1629
    :pswitch_28c  #0x3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    .line 1630
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    iget-object v1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/codemao/nemo/fragment/CreateFragment;->access$3200(Lcom/codemao/nemo/fragment/CreateFragment;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_2a0

    .line 1632
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/CreateFragment;->access$3300(Lcom/codemao/nemo/fragment/CreateFragment;)V

    return-void

    .line 1635
    :cond_2a0
    iget-object v1, p0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {v1}, Lcom/codemao/nemo/fragment/CreateFragment;->access$1400(Lcom/codemao/nemo/fragment/CreateFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget v2, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->uploadStatus:I

    iput v2, v1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->uploadStatus:I

    .line 1636
    iget-object v1, p0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {v1}, Lcom/codemao/nemo/fragment/CreateFragment;->access$1400(Lcom/codemao/nemo/fragment/CreateFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-object v2, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    iput-object v2, v1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    .line 1637
    iget-object v1, p0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {v1}, Lcom/codemao/nemo/fragment/CreateFragment;->access$2500(Lcom/codemao/nemo/fragment/CreateFragment;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 1638
    invoke-static {p1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->updatePublishStatus(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)Z

    goto/16 :goto_39b

    .line 1608
    :pswitch_2ce  #0x2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/codemao/nemo/fragment/CreateFragment$20$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/CreateFragment$20$1;-><init>(Lcom/codemao/nemo/fragment/CreateFragment$20;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1614
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez p1, :cond_2e2

    return-void

    .line 1617
    :cond_2e2
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    check-cast p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-object p1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/codemao/nemo/fragment/CreateFragment;->access$3200(Lcom/codemao/nemo/fragment/CreateFragment;Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_338

    .line 1618
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/CreateFragment;->access$1400(Lcom/codemao/nemo/fragment/CreateFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_2fb

    goto :goto_338

    .line 1621
    :cond_2fb
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/CreateFragment;->access$1400(Lcom/codemao/nemo/fragment/CreateFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1622
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/event/MineTabEvent;

    iget-object v2, p0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {v2}, Lcom/codemao/nemo/fragment/CreateFragment;->access$1400(Lcom/codemao/nemo/fragment/CreateFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v4, v2}, Lcom/codemao/nemo/event/MineTabEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1623
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/CreateFragment;->access$2500(Lcom/codemao/nemo/fragment/CreateFragment;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 1624
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/CreateFragment;->access$2500(Lcom/codemao/nemo/fragment/CreateFragment;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {v1}, Lcom/codemao/nemo/fragment/CreateFragment;->access$1400(Lcom/codemao/nemo/fragment/CreateFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    goto :goto_39b

    .line 1619
    :cond_338
    :goto_338
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/CreateFragment;->access$2500(Lcom/codemao/nemo/fragment/CreateFragment;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_39b

    .line 1593
    :pswitch_342  #0x1
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/CreateFragment;->access$600(Lcom/codemao/nemo/fragment/CreateFragment;)V

    .line 1594
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    if-nez p1, :cond_359

    .line 1596
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "作品复制异常，请检查该作品"

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 1600
    :cond_359
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/CreateFragment;->access$1400(Lcom/codemao/nemo/fragment/CreateFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1602
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/codemao/nemo/event/MineTabEvent;

    iget-object v1, p0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {v1}, Lcom/codemao/nemo/fragment/CreateFragment;->access$1400(Lcom/codemao/nemo/fragment/CreateFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v4, v1}, Lcom/codemao/nemo/event/MineTabEvent;-><init>(II)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1603
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/CreateFragment;->access$2500(Lcom/codemao/nemo/fragment/CreateFragment;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    .line 1604
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/CreateFragment;->access$2500(Lcom/codemao/nemo/fragment/CreateFragment;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/CreateFragment;->access$1400(Lcom/codemao/nemo/fragment/CreateFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v4, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    .line 1605
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/CreateFragment;->rvContainer:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_39b
    :goto_39b
    return-void

    :pswitch_data_39c
    .packed-switch 0x1
        :pswitch_342  #00000001
        :pswitch_2ce  #00000002
        :pswitch_28c  #00000003
        :pswitch_266  #00000004
        :pswitch_f9  #00000005
        :pswitch_c8  #00000006
        :pswitch_b6  #00000007
        :pswitch_99  #00000008
        :pswitch_7d  #00000009
        :pswitch_67  #0000000a
        :pswitch_48  #0000000b
        :pswitch_1e  #0000000c
    .end packed-switch
.end method
