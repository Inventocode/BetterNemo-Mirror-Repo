.class Lcom/codemao/nemo/activity/CommentDetailActivity_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "CommentDetailActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/CommentDetailActivity_ViewBinding;-><init>(Lcom/codemao/nemo/activity/CommentDetailActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$target:Lcom/codemao/nemo/activity/CommentDetailActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/CommentDetailActivity_ViewBinding;Lcom/codemao/nemo/activity/CommentDetailActivity;)V
    .registers 3

    .line 42
    iput-object p2, p0, Lcom/codemao/nemo/activity/CommentDetailActivity_ViewBinding$1;->val$target:Lcom/codemao/nemo/activity/CommentDetailActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .registers 3

    .line 45
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity_ViewBinding$1;->val$target:Lcom/codemao/nemo/activity/CommentDetailActivity;

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/activity/CommentDetailActivity;->replyAtComment(Landroid/view/View;)V

    return-void
.end method
