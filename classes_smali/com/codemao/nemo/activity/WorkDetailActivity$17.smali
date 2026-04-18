.class Lcom/codemao/nemo/activity/WorkDetailActivity$17;
.super Ljava/lang/Object;
.source "WorkDetailActivity.java"

# interfaces
.implements Lcom/codemao/nemo/adapter/EmptyWorkDelegate$EmptyWorkCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/WorkDetailActivity;->setEmptyData(Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

.field final synthetic val$rvEmpty:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/WorkDetailActivity;Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 3

    .line 667
    iput-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$17;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    iput-object p2, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$17;->val$rvEmpty:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toWorkDetail(Landroid/widget/ImageView;JLjava/lang/String;)V
    .registers 11

    .line 671
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$17;->val$rvEmpty:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_9

    return-void

    .line 674
    :cond_9
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$17;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    const-string/jumbo v4, "作品详情页"

    const-string v5, ""

    move-wide v1, p2

    move-object v3, p4

    invoke-static/range {v0 .. v5}, Lcom/codemao/nemo/activity/WorkDetailActivity;->goDetail(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
