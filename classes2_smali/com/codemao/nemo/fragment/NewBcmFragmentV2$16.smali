.class Lcom/codemao/nemo/fragment/NewBcmFragmentV2$16;
.super Ljava/lang/Object;
.source "NewBcmFragmentV2.java"

# interfaces
.implements Lcom/codemao/creativecenter/utils/bcm/listener/GetBcmCloudHistoryInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->getBcmCloudWorksHistory()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/NewBcmFragmentV2;)V
    .registers 2

    .line 971
    iput-object p1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$16;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private showListDialog(Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/creativecenter/utils/bcm/bean/BcmCloudWorksHistory;",
            ">;)V"
        }
    .end annotation

    .line 974
    new-instance v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$16;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 975
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 979
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 980
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_63

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/creativecenter/utils/bcm/bean/BcmCloudWorksHistory;

    .line 981
    invoke-virtual {v3}, Lcom/codemao/creativecenter/utils/bcm/bean/BcmCloudWorksHistory;->getCreated_at()I

    move-result v4

    int-to-long v4, v4

    .line 982
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 983
    new-instance v7, Ljava/util/Date;

    const-wide/16 v8, 0x3e8

    mul-long v4, v4, v8

    invoke-direct {v7, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 984
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "上传时间："

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  链接："

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/codemao/creativecenter/utils/bcm/bean/BcmCloudWorksHistory;->getBcm_url()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 987
    :cond_63
    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$16;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0d01d2

    invoke-direct {v2, v3, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 988
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 989
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$16;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 990
    new-instance v2, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$16$1;

    invoke-direct {v2, p0, v1, p1}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$16$1;-><init>(Lcom/codemao/nemo/fragment/NewBcmFragmentV2$16;Landroid/app/AlertDialog;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 998
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/creativecenter/utils/bcm/bean/BcmCloudWorksHistory;",
            ">;)V"
        }
    .end annotation

    .line 1003
    invoke-direct {p0, p1}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$16;->showListDialog(Ljava/util/List;)V

    return-void
.end method
