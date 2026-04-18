.class Lcom/codemao/nemo/activity/WorkDetailActivity$24;
.super Ljava/lang/Object;
.source "WorkDetailActivity.java"

# interfaces
.implements Lcom/codemao/nemo/util/ReworkHelper$ReWorkForkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/WorkDetailActivity;->rework()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/WorkDetailActivity;)V
    .registers 2

    .line 930
    iput-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$24;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 3

    .line 941
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$24;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    iget-object v0, v0, Lcom/codemao/nemo/activity/WorkDetailActivity;->llRework:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .registers 5

    .line 934
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$24;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/WorkDetailActivity;->access$500(Lcom/codemao/nemo/activity/WorkDetailActivity;)Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    move-result-object v0

    sget-object v1, Lcom/codemao/nemo/util/NumberUtils;->INSTANCE:Lcom/codemao/nemo/util/NumberUtils;

    const/16 v2, 0xa

    invoke-virtual {v1, p1, v2}, Lcom/codemao/nemo/util/NumberUtils;->parseInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->setN_tree_nodes(I)V

    .line 935
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$24;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    iget-object v0, p1, Lcom/codemao/nemo/activity/WorkDetailActivity;->tvToRework:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/codemao/nemo/activity/WorkDetailActivity;->access$500(Lcom/codemao/nemo/activity/WorkDetailActivity;)Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getN_tree_nodes()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/nemo/util/StringUtil;->getFormatNumOver10w(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 936
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$24;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/WorkDetailActivity;->llRework:Landroid/widget/RelativeLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    return-void
.end method
