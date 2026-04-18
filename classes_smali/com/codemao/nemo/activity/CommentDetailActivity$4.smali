.class Lcom/codemao/nemo/activity/CommentDetailActivity$4;
.super Ljava/lang/Object;
.source "CommentDetailActivity.java"

# interfaces
.implements Lcom/scwang/smartrefresh/layout/listener/OnRefreshListener;


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

    .line 392
    iput-object p1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$4;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .registers 3

    .line 395
    iget-object p1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$4;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/codemao/nemo/activity/CommentDetailActivity;->access$1502(Lcom/codemao/nemo/activity/CommentDetailActivity;I)I

    .line 396
    iget-object p1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$4;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/CommentDetailActivity;->access$1400(Lcom/codemao/nemo/activity/CommentDetailActivity;)V

    return-void
.end method
