.class Lcom/codemao/nemo/dialog/pop/CommentInputPop_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "CommentInputPop_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/dialog/pop/CommentInputPop_ViewBinding;-><init>(Lcom/codemao/nemo/dialog/pop/CommentInputPop;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$target:Lcom/codemao/nemo/dialog/pop/CommentInputPop;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/dialog/pop/CommentInputPop_ViewBinding;Lcom/codemao/nemo/dialog/pop/CommentInputPop;)V
    .registers 3

    .line 49
    iput-object p2, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop_ViewBinding$1;->val$target:Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .registers 2

    .line 52
    iget-object p1, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop_ViewBinding$1;->val$target:Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    invoke-virtual {p1}, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->showExpView()V

    return-void
.end method
