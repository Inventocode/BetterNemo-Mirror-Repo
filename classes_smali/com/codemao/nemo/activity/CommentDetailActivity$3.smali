.class Lcom/codemao/nemo/activity/CommentDetailActivity$3;
.super Ljava/lang/Object;
.source "CommentDetailActivity.java"

# interfaces
.implements Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$LoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/CommentDetailActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/CommentDetailActivity;)V
    .registers 2

    .line 380
    iput-object p1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$3;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .registers 2

    .line 388
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$3;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/CommentDetailActivity;->access$1400(Lcom/codemao/nemo/activity/CommentDetailActivity;)V

    return-void
.end method
