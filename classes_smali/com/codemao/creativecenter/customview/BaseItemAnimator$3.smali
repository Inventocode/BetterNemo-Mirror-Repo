.class Lcom/codemao/creativecenter/customview/BaseItemAnimator$3;
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

.field final synthetic val$additions:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/customview/BaseItemAnimator;Ljava/util/ArrayList;)V
    .registers 3

    .line 186
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator$3;->this$0:Lcom/codemao/creativecenter/customview/BaseItemAnimator;

    iput-object p2, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator$3;->val$additions:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 188
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator$3;->val$additions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 189
    iget-object v2, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator$3;->this$0:Lcom/codemao/creativecenter/customview/BaseItemAnimator;

    invoke-virtual {v2, v1}, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->animateAddImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_6

    .line 191
    :cond_18
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator$3;->val$additions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 192
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator$3;->this$0:Lcom/codemao/creativecenter/customview/BaseItemAnimator;

    invoke-static {v0}, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->access$400(Lcom/codemao/creativecenter/customview/BaseItemAnimator;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator$3;->val$additions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
