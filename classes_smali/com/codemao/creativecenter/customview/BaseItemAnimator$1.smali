.class Lcom/codemao/creativecenter/customview/BaseItemAnimator$1;
.super Ljava/lang/Object;
.source "BaseItemAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/customview/BaseItemAnimator;->runPendingAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/customview/BaseItemAnimator;

.field final synthetic val$moves:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/customview/BaseItemAnimator;Ljava/util/ArrayList;)V
    .registers 3

    .line 139
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator$1;->this$0:Lcom/codemao/creativecenter/customview/BaseItemAnimator;

    iput-object p2, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 142
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/creativecenter/customview/BaseItemAnimator$MoveInfo;

    .line 143
    iget-object v2, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator$1;->this$0:Lcom/codemao/creativecenter/customview/BaseItemAnimator;

    iget-object v3, v1, Lcom/codemao/creativecenter/customview/BaseItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget v4, v1, Lcom/codemao/creativecenter/customview/BaseItemAnimator$MoveInfo;->fromX:I

    iget v5, v1, Lcom/codemao/creativecenter/customview/BaseItemAnimator$MoveInfo;->fromY:I

    iget v6, v1, Lcom/codemao/creativecenter/customview/BaseItemAnimator$MoveInfo;->toX:I

    iget v7, v1, Lcom/codemao/creativecenter/customview/BaseItemAnimator$MoveInfo;->toY:I

    invoke-static/range {v2 .. v7}, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->access$000(Lcom/codemao/creativecenter/customview/BaseItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V

    goto :goto_6

    .line 146
    :cond_22
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 147
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator$1;->this$0:Lcom/codemao/creativecenter/customview/BaseItemAnimator;

    invoke-static {v0}, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->access$100(Lcom/codemao/creativecenter/customview/BaseItemAnimator;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
