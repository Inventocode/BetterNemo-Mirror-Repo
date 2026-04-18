.class Lcom/codemao/nemo/view/MyItemAnimator$1;
.super Ljava/lang/Object;
.source "MyItemAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/view/MyItemAnimator;->runPendingAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/view/MyItemAnimator;

.field final synthetic val$additions:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/view/MyItemAnimator;Ljava/util/ArrayList;)V
    .registers 3

    .line 73
    iput-object p1, p0, Lcom/codemao/nemo/view/MyItemAnimator$1;->this$0:Lcom/codemao/nemo/view/MyItemAnimator;

    iput-object p2, p0, Lcom/codemao/nemo/view/MyItemAnimator$1;->val$additions:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 75
    iget-object v0, p0, Lcom/codemao/nemo/view/MyItemAnimator$1;->val$additions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 76
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 77
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/view/MyItemAnimator$MoveInfo;

    .line 78
    iget-object v2, p0, Lcom/codemao/nemo/view/MyItemAnimator$1;->this$0:Lcom/codemao/nemo/view/MyItemAnimator;

    iget-object v3, v1, Lcom/codemao/nemo/view/MyItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget v4, v1, Lcom/codemao/nemo/view/MyItemAnimator$MoveInfo;->fromX:I

    iget v5, v1, Lcom/codemao/nemo/view/MyItemAnimator$MoveInfo;->fromY:I

    iget v6, v1, Lcom/codemao/nemo/view/MyItemAnimator$MoveInfo;->toX:I

    iget v7, v1, Lcom/codemao/nemo/view/MyItemAnimator$MoveInfo;->toY:I

    invoke-virtual/range {v2 .. v7}, Lcom/codemao/nemo/view/MyItemAnimator;->animateMoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V

    goto :goto_6

    .line 81
    :cond_22
    iget-object v0, p0, Lcom/codemao/nemo/view/MyItemAnimator$1;->val$additions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 82
    iget-object v0, p0, Lcom/codemao/nemo/view/MyItemAnimator$1;->this$0:Lcom/codemao/nemo/view/MyItemAnimator;

    iget-object v0, v0, Lcom/codemao/nemo/view/MyItemAnimator;->mMovesList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/codemao/nemo/view/MyItemAnimator$1;->val$additions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
