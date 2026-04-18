.class Lcom/codemao/nemo/view/MyItemAnimator$2;
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

.field final synthetic val$additions1:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/view/MyItemAnimator;Ljava/util/ArrayList;)V
    .registers 3

    .line 98
    iput-object p1, p0, Lcom/codemao/nemo/view/MyItemAnimator$2;->this$0:Lcom/codemao/nemo/view/MyItemAnimator;

    iput-object p2, p0, Lcom/codemao/nemo/view/MyItemAnimator$2;->val$additions1:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 100
    iget-object v0, p0, Lcom/codemao/nemo/view/MyItemAnimator$2;->val$additions1:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 102
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 103
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/view/MyItemAnimator$ChangeInfo;

    .line 104
    iget-object v2, p0, Lcom/codemao/nemo/view/MyItemAnimator$2;->this$0:Lcom/codemao/nemo/view/MyItemAnimator;

    invoke-virtual {v2, v1}, Lcom/codemao/nemo/view/MyItemAnimator;->animateChangeImpl(Lcom/codemao/nemo/view/MyItemAnimator$ChangeInfo;)V

    goto :goto_6

    .line 107
    :cond_18
    iget-object v0, p0, Lcom/codemao/nemo/view/MyItemAnimator$2;->val$additions1:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 108
    iget-object v0, p0, Lcom/codemao/nemo/view/MyItemAnimator$2;->this$0:Lcom/codemao/nemo/view/MyItemAnimator;

    iget-object v0, v0, Lcom/codemao/nemo/view/MyItemAnimator;->mChangesList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/codemao/nemo/view/MyItemAnimator$2;->val$additions1:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
