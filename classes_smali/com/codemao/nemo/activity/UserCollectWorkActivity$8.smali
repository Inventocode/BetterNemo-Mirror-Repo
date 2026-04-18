.class Lcom/codemao/nemo/activity/UserCollectWorkActivity$8;
.super Ljava/lang/Object;
.source "UserCollectWorkActivity.java"

# interfaces
.implements Lcom/codemao/nemo/adapter/EmptyWorkDelegate$EmptyWorkCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/UserCollectWorkActivity;->setEmptyData(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/UserCollectWorkActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/UserCollectWorkActivity;)V
    .registers 2

    .line 361
    iput-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity$8;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toWorkDetail(Landroid/widget/ImageView;JLjava/lang/String;)V
    .registers 11

    .line 365
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity$8;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->rvEmpty:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_b

    return-void

    .line 368
    :cond_b
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity$8;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkActivity;

    const-string/jumbo v4, "用户收藏列表"

    const-string v5, ""

    move-wide v1, p2

    move-object v3, p4

    invoke-static/range {v0 .. v5}, Lcom/codemao/nemo/activity/WorkDetailActivity;->goDetail(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
