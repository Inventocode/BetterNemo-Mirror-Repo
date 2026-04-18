.class Lcom/codemao/creativecenter/activity/MaterialActivity$7;
.super Lcom/codemao/creativecenter/http/CommonSubcriber;
.source "MaterialActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/activity/MaterialActivity;->requestCollectMaterialData(ILkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/creativecenter/http/CommonSubcriber<",
        "Ljava/util/List<",
        "Lcom/codemao/creativecenter/utils/bcm/bean/CollectionMaterialItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;

.field final synthetic val$callback:Lkotlin/jvm/functions/Function1;

.field final synthetic val$dIndex:I

.field final synthetic val$finalHeaderInfo:Lcom/codemao/creativecenter/bean/MaterialDetailLoadingInfo;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/activity/MaterialActivity;ILcom/codemao/creativecenter/bean/MaterialDetailLoadingInfo;Lkotlin/jvm/functions/Function1;)V
    .registers 5

    .line 695
    iput-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$7;->this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;

    iput p2, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$7;->val$dIndex:I

    iput-object p3, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$7;->val$finalHeaderInfo:Lcom/codemao/creativecenter/bean/MaterialDetailLoadingInfo;

    iput-object p4, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$7;->val$callback:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Lcom/codemao/creativecenter/http/CommonSubcriber;-><init>()V

    return-void
.end method

.method private addMaterialActorBean(ILcom/codemao/creativecenter/utils/bcm/bean/CollectionMaterialItem;)V
    .registers 12

    .line 698
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 699
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 700
    new-instance v2, Lcom/codemao/creativestore/bean/MaterialActorBean;

    invoke-direct {v2}, Lcom/codemao/creativestore/bean/MaterialActorBean;-><init>()V

    .line 701
    invoke-virtual {p2}, Lcom/codemao/creativecenter/utils/bcm/bean/CollectionMaterialItem;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/codemao/creativestore/bean/MaterialActorBean;->setId(I)V

    .line 702
    invoke-virtual {p2}, Lcom/codemao/creativecenter/utils/bcm/bean/CollectionMaterialItem;->getResource_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/codemao/creativestore/bean/MaterialActorBean;->setName(Ljava/lang/String;)V

    .line 703
    invoke-virtual {v2, v0}, Lcom/codemao/creativestore/bean/MaterialActorBean;->setUrl(Ljava/util/List;)V

    .line 704
    invoke-virtual {v2, v1}, Lcom/codemao/creativestore/bean/MaterialActorBean;->setResourcePathList(Ljava/util/List;)V

    .line 706
    invoke-virtual {p2}, Lcom/codemao/creativecenter/utils/bcm/bean/CollectionMaterialItem;->getResource_url()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v3, 0x1

    const/4 v4, 0x1

    :cond_2d
    :goto_2d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_66

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 707
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2d

    .line 708
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 709
    sget-object v7, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;->INSTANCE:Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;

    invoke-virtual {v7, v5}, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;->checkFileExists(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_64

    .line 710
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file://"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;->getFilePathFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    :cond_64
    const/4 v4, 0x0

    goto :goto_2d

    :cond_66
    if-eqz v4, :cond_6c

    .line 717
    invoke-virtual {v2, v3}, Lcom/codemao/creativestore/bean/MaterialActorBean;->setItemType(I)V

    goto :goto_73

    :cond_6c
    const/4 p2, 0x2

    .line 719
    invoke-virtual {v2, p2}, Lcom/codemao/creativestore/bean/MaterialActorBean;->setItemType(I)V

    .line 720
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 722
    :goto_73
    invoke-virtual {v2, p1}, Lcom/codemao/creativestore/bean/MaterialActorBean;->setCategory_id(I)V

    .line 723
    invoke-virtual {v2, v6}, Lcom/codemao/creativestore/bean/MaterialActorBean;->setSelected(Z)V

    .line 724
    invoke-virtual {v2, v6}, Lcom/codemao/creativestore/bean/MaterialActorBean;->setDeleteSelect(Z)V

    .line 725
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$7;->this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;

    invoke-static {p1}, Lcom/codemao/creativecenter/activity/MaterialActivity;->access$500(Lcom/codemao/creativecenter/activity/MaterialActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 726
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$7;->this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;

    iget-object p1, p1, Lcom/codemao/creativecenter/activity/MaterialActivity;->collectMaterialDataList:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 774
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$7;->val$finalHeaderInfo:Lcom/codemao/creativecenter/bean/MaterialDetailLoadingInfo;

    if-eqz p1, :cond_8

    const/4 p2, 0x2

    .line 775
    invoke-virtual {p1, p2}, Lcom/codemao/creativecenter/bean/MaterialDetailLoadingInfo;->setDownlaodStatus(I)V

    .line 777
    :cond_8
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$7;->val$callback:Lkotlin/jvm/functions/Function1;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected onNetError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 782
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$7;->val$finalHeaderInfo:Lcom/codemao/creativecenter/bean/MaterialDetailLoadingInfo;

    if-eqz p1, :cond_8

    const/4 p2, 0x2

    .line 783
    invoke-virtual {p1, p2}, Lcom/codemao/creativecenter/bean/MaterialDetailLoadingInfo;->setDownlaodStatus(I)V

    .line 785
    :cond_8
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$7;->val$callback:Lkotlin/jvm/functions/Function1;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 695
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/codemao/creativecenter/activity/MaterialActivity$7;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method protected onSuccess(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/creativecenter/utils/bcm/bean/CollectionMaterialItem;",
            ">;)V"
        }
    .end annotation

    .line 733
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 734
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_44

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/creativecenter/utils/bcm/bean/CollectionMaterialItem;

    .line 735
    invoke-virtual {v1}, Lcom/codemao/creativecenter/utils/bcm/bean/CollectionMaterialItem;->getType()I

    move-result v5

    if-ne v5, v3, :cond_2a

    iget-object v5, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$7;->this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;

    invoke-static {v5}, Lcom/codemao/creativecenter/activity/MaterialActivity;->access$600(Lcom/codemao/creativecenter/activity/MaterialActivity;)I

    move-result v5

    if-ne v5, v2, :cond_2a

    .line 736
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 737
    :cond_2a
    invoke-virtual {v1}, Lcom/codemao/creativecenter/utils/bcm/bean/CollectionMaterialItem;->getType()I

    move-result v2

    if-ne v2, v4, :cond_9

    iget-object v2, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$7;->this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;

    invoke-static {v2}, Lcom/codemao/creativecenter/activity/MaterialActivity;->access$600(Lcom/codemao/creativecenter/activity/MaterialActivity;)I

    move-result v2

    if-eq v2, v4, :cond_40

    iget-object v2, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$7;->this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;

    invoke-static {v2}, Lcom/codemao/creativecenter/activity/MaterialActivity;->access$600(Lcom/codemao/creativecenter/activity/MaterialActivity;)I

    move-result v2

    if-ne v2, v3, :cond_9

    .line 738
    :cond_40
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 742
    :cond_44
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_ff

    .line 743
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$7;->this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;

    invoke-static {p1}, Lcom/codemao/creativecenter/activity/MaterialActivity;->access$500(Lcom/codemao/creativecenter/activity/MaterialActivity;)Ljava/util/List;

    move-result-object p1

    new-instance v1, Lcom/codemao/creativecenter/bean/MaterialCollectHeaderBean;

    invoke-direct {v1}, Lcom/codemao/creativecenter/bean/MaterialCollectHeaderBean;-><init>()V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 744
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$7;->this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;

    iget-object p1, p1, Lcom/codemao/creativecenter/activity/MaterialActivity;->collectMaterialDataList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 p1, -0x3

    .line 746
    new-instance v1, Lcom/codemao/creativecenter/bean/MaterialLeftBean;

    iget-object v5, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$7;->this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;

    sget v6, Lcom/codemao/creativecenter/R$string;->creative_nemo_library_collect:I

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$7;->this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;

    invoke-virtual {v7, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/codemao/creativecenter/activity/MaterialActivity;->access$1200(Lcom/codemao/creativecenter/activity/MaterialActivity;Ljava/lang/String;)I

    move-result v6

    invoke-direct {v1, v5, v6}, Lcom/codemao/creativecenter/bean/MaterialLeftBean;-><init>(Ljava/lang/String;I)V

    .line 747
    iget-object v5, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$7;->this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;

    invoke-static {v5}, Lcom/codemao/creativecenter/activity/MaterialActivity;->access$1300(Lcom/codemao/creativecenter/activity/MaterialActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 748
    iget-object v1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$7;->this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;

    invoke-static {v1}, Lcom/codemao/creativecenter/activity/MaterialActivity;->access$600(Lcom/codemao/creativecenter/activity/MaterialActivity;)I

    move-result v1

    if-ne v1, v2, :cond_9c

    .line 749
    iget-object v1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$7;->this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;

    invoke-static {v1}, Lcom/codemao/creativecenter/activity/MaterialActivity;->access$1000(Lcom/codemao/creativecenter/activity/MaterialActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$7;->val$dIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_bf

    .line 750
    :cond_9c
    iget-object v1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$7;->this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;

    invoke-static {v1}, Lcom/codemao/creativecenter/activity/MaterialActivity;->access$600(Lcom/codemao/creativecenter/activity/MaterialActivity;)I

    move-result v1

    if-eq v1, v4, :cond_ac

    iget-object v1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$7;->this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;

    invoke-static {v1}, Lcom/codemao/creativecenter/activity/MaterialActivity;->access$600(Lcom/codemao/creativecenter/activity/MaterialActivity;)I

    move-result v1

    if-ne v1, v3, :cond_bf

    .line 751
    :cond_ac
    iget-object v1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$7;->this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;

    invoke-static {v1}, Lcom/codemao/creativecenter/activity/MaterialActivity;->access$900(Lcom/codemao/creativecenter/activity/MaterialActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$7;->val$dIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    :cond_bf
    :goto_bf
    iget-object v1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$7;->this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;

    invoke-static {v1}, Lcom/codemao/creativecenter/activity/MaterialActivity;->access$800(Lcom/codemao/creativecenter/activity/MaterialActivity;)Landroid/util/SparseIntArray;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$7;->this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;

    invoke-static {v2}, Lcom/codemao/creativecenter/activity/MaterialActivity;->access$500(Lcom/codemao/creativecenter/activity/MaterialActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v4

    iget v3, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$7;->val$dIndex:I

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 754
    iget-object v1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$7;->this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;

    invoke-static {v1}, Lcom/codemao/creativecenter/activity/MaterialActivity;->access$400(Lcom/codemao/creativecenter/activity/MaterialActivity;)Landroid/util/SparseIntArray;

    move-result-object v1

    iget v2, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$7;->val$dIndex:I

    iget-object v3, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$7;->this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;

    invoke-static {v3}, Lcom/codemao/creativecenter/activity/MaterialActivity;->access$500(Lcom/codemao/creativecenter/activity/MaterialActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 756
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_ef
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ff

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/creativecenter/utils/bcm/bean/CollectionMaterialItem;

    .line 757
    invoke-direct {p0, p1, v1}, Lcom/codemao/creativecenter/activity/MaterialActivity$7;->addMaterialActorBean(ILcom/codemao/creativecenter/utils/bcm/bean/CollectionMaterialItem;)V

    goto :goto_ef

    .line 760
    :cond_ff
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$7;->this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;

    invoke-static {p1}, Lcom/codemao/creativecenter/activity/MaterialActivity;->access$1400(Lcom/codemao/creativecenter/activity/MaterialActivity;)I

    move-result p1

    .line 761
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$7;->val$finalHeaderInfo:Lcom/codemao/creativecenter/bean/MaterialDetailLoadingInfo;

    if-eqz v0, :cond_119

    if-lez p1, :cond_115

    .line 763
    invoke-virtual {v0, p1}, Lcom/codemao/creativecenter/bean/MaterialDetailLoadingInfo;->setDownloadItemNum(I)V

    .line 764
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$7;->val$finalHeaderInfo:Lcom/codemao/creativecenter/bean/MaterialDetailLoadingInfo;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/codemao/creativecenter/bean/MaterialDetailLoadingInfo;->setDownlaodStatus(I)V

    goto :goto_119

    :cond_115
    const/4 p1, 0x0

    .line 766
    invoke-virtual {v0, p1}, Lcom/codemao/creativecenter/bean/MaterialDetailLoadingInfo;->setDownlaodStatus(I)V

    .line 769
    :cond_119
    :goto_119
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$7;->val$callback:Lkotlin/jvm/functions/Function1;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
