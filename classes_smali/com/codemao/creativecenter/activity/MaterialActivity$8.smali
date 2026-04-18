.class Lcom/codemao/creativecenter/activity/MaterialActivity$8;
.super Ljava/lang/Object;
.source "MaterialActivity.java"

# interfaces
.implements Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager$CollectionDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/activity/MaterialActivity;->initCollectionDownloadListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;


# direct methods
.method public static synthetic $r8$lambda$8ZAkPSFUg-EFeQaaWpQ75dd48C4(Lcom/codemao/creativecenter/activity/MaterialActivity$8;)V
    .registers 1

    invoke-direct {p0}, Lcom/codemao/creativecenter/activity/MaterialActivity$8;->lambda$onDownloadFailed$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$EL_EoMaEttsbSFTl6iKQOfAnBLw(Lcom/codemao/creativecenter/activity/MaterialActivity$8;Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/activity/MaterialActivity$8;->lambda$onDownloadItemStart$3(Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dynrgu6uzJGT48xjpNuarA01xhQ(Lcom/codemao/creativecenter/activity/MaterialActivity$8;Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/activity/MaterialActivity$8;->lambda$onDownloadItemSuccess$4(Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$j-1U17EYzlavnGruO1yp_AlrQCI(Lcom/codemao/creativecenter/activity/MaterialActivity$8;Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/activity/MaterialActivity$8;->lambda$onDownloadItemError$2(Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jYa4SarTTAgmBT-BDvekpLZsK9I(Lcom/codemao/creativecenter/activity/MaterialActivity$8;)V
    .registers 1

    invoke-direct {p0}, Lcom/codemao/creativecenter/activity/MaterialActivity$8;->lambda$onDownloadSuccess$0()V

    return-void
.end method

.method constructor <init>(Lcom/codemao/creativecenter/activity/MaterialActivity;)V
    .registers 2

    .line 802
    iput-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$8;->this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onDownloadFailed$1()V
    .registers 3

    .line 845
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$8;->this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;

    sget v1, Lcom/codemao/creativecenter/R$string;->creative_material_collect_download_fail:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 846
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$8;->this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/codemao/creativecenter/activity/MaterialActivity;->access$1600(Lcom/codemao/creativecenter/activity/MaterialActivity;I)V

    return-void
.end method

.method private synthetic lambda$onDownloadItemError$2(Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;)V
    .registers 2

    .line 852
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/activity/MaterialActivity$8;->notifyCollectionDownloadStatus(Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;)V

    return-void
.end method

.method private synthetic lambda$onDownloadItemStart$3(Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;)V
    .registers 2

    .line 857
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/activity/MaterialActivity$8;->notifyCollectionDownloadStatus(Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;)V

    return-void
.end method

.method private synthetic lambda$onDownloadItemSuccess$4(Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;)V
    .registers 3

    .line 863
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/activity/MaterialActivity$8;->notifyCollectionDownloadStatus(Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;)V

    .line 864
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$8;->this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/codemao/creativecenter/activity/MaterialActivity;->access$1600(Lcom/codemao/creativecenter/activity/MaterialActivity;I)V

    return-void
.end method

.method private synthetic lambda$onDownloadSuccess$0()V
    .registers 3

    .line 834
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$8;->this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;

    invoke-static {v0}, Lcom/codemao/creativecenter/activity/MaterialActivity;->access$1400(Lcom/codemao/creativecenter/activity/MaterialActivity;)I

    move-result v0

    if-gtz v0, :cond_13

    .line 836
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$8;->this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;

    sget v1, Lcom/codemao/creativecenter/R$string;->creative_material_collect_download_success:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 838
    :cond_13
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$8;->this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/codemao/creativecenter/activity/MaterialActivity;->access$1600(Lcom/codemao/creativecenter/activity/MaterialActivity;I)V

    return-void
.end method

.method private notifyCollectionDownloadStatus(Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;)V
    .registers 8

    const/4 v0, 0x0

    .line 805
    :goto_1
    iget-object v1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$8;->this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;

    invoke-static {v1}, Lcom/codemao/creativecenter/activity/MaterialActivity;->access$500(Lcom/codemao/creativecenter/activity/MaterialActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_a4

    .line 806
    iget-object v1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$8;->this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;

    invoke-static {v1}, Lcom/codemao/creativecenter/activity/MaterialActivity;->access$500(Lcom/codemao/creativecenter/activity/MaterialActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 807
    instance-of v2, v1, Lcom/codemao/creativestore/bean/MaterialActorBean;

    if-eqz v2, :cond_a0

    .line 808
    check-cast v1, Lcom/codemao/creativestore/bean/MaterialActorBean;

    .line 809
    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/MaterialActorBean;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a0

    .line 810
    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;->getStatus()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v2, v3, :cond_79

    .line 811
    invoke-virtual {v1, v4}, Lcom/codemao/creativestore/bean/MaterialActorBean;->setItemType(I)V

    .line 812
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 813
    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;->getList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_47
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/creativecenter/utils/bcm/DownloadImageItem;

    .line 814
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/codemao/creativecenter/utils/bcm/DownloadImageItem;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_47

    .line 816
    :cond_6c
    invoke-virtual {v1, v2}, Lcom/codemao/creativestore/bean/MaterialActorBean;->setResourcePathList(Ljava/util/List;)V

    .line 817
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$8;->this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;

    invoke-static {p1}, Lcom/codemao/creativecenter/activity/MaterialActivity;->access$1500(Lcom/codemao/creativecenter/activity/MaterialActivity;)Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_a4

    .line 818
    :cond_79
    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;->getStatus()I

    move-result v2

    const/4 v5, 0x3

    if-ne v2, v5, :cond_8d

    .line 819
    invoke-virtual {v1, v3}, Lcom/codemao/creativestore/bean/MaterialActorBean;->setItemType(I)V

    .line 820
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$8;->this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;

    invoke-static {p1}, Lcom/codemao/creativecenter/activity/MaterialActivity;->access$1500(Lcom/codemao/creativecenter/activity/MaterialActivity;)Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_a4

    .line 821
    :cond_8d
    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;->getStatus()I

    move-result p1

    if-ne p1, v4, :cond_a4

    .line 822
    invoke-virtual {v1, v5}, Lcom/codemao/creativestore/bean/MaterialActorBean;->setItemType(I)V

    .line 823
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$8;->this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;

    invoke-static {p1}, Lcom/codemao/creativecenter/activity/MaterialActivity;->access$1500(Lcom/codemao/creativecenter/activity/MaterialActivity;)Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_a4

    :cond_a0
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_a4
    :goto_a4
    return-void
.end method


# virtual methods
.method public onDownloadFailed()V
    .registers 3

    .line 844
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$8;->this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;

    new-instance v1, Lcom/codemao/creativecenter/activity/MaterialActivity$8$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/activity/MaterialActivity$8$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/creativecenter/activity/MaterialActivity$8;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDownloadItemError(Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;)V
    .registers 4

    .line 852
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$8;->this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;

    new-instance v1, Lcom/codemao/creativecenter/activity/MaterialActivity$8$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/codemao/creativecenter/activity/MaterialActivity$8$$ExternalSyntheticLambda4;-><init>(Lcom/codemao/creativecenter/activity/MaterialActivity$8;Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDownloadItemStart(Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;)V
    .registers 4

    .line 857
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$8;->this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;

    new-instance v1, Lcom/codemao/creativecenter/activity/MaterialActivity$8$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/codemao/creativecenter/activity/MaterialActivity$8$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/creativecenter/activity/MaterialActivity$8;Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDownloadItemSuccess(Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;)V
    .registers 4

    .line 862
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$8;->this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;

    new-instance v1, Lcom/codemao/creativecenter/activity/MaterialActivity$8$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/codemao/creativecenter/activity/MaterialActivity$8$$ExternalSyntheticLambda3;-><init>(Lcom/codemao/creativecenter/activity/MaterialActivity$8;Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDownloadSuccess()V
    .registers 3

    .line 833
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$8;->this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;

    new-instance v1, Lcom/codemao/creativecenter/activity/MaterialActivity$8$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/activity/MaterialActivity$8$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/creativecenter/activity/MaterialActivity$8;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
