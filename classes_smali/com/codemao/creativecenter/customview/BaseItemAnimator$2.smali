.class Lcom/codemao/creativecenter/customview/BaseItemAnimator$2;
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

.field final synthetic val$changes:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/customview/BaseItemAnimator;Ljava/util/ArrayList;)V
    .registers 3

    .line 163
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator$2;->this$0:Lcom/codemao/creativecenter/customview/BaseItemAnimator;

    iput-object p2, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator$2;->val$changes:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 166
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator$2;->val$changes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/creativecenter/customview/BaseItemAnimator$ChangeInfo;

    .line 167
    iget-object v2, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator$2;->this$0:Lcom/codemao/creativecenter/customview/BaseItemAnimator;

    invoke-static {v2, v1}, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->access$200(Lcom/codemao/creativecenter/customview/BaseItemAnimator;Lcom/codemao/creativecenter/customview/BaseItemAnimator$ChangeInfo;)V

    goto :goto_6

    .line 169
    :cond_18
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator$2;->val$changes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 170
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator$2;->this$0:Lcom/codemao/creativecenter/customview/BaseItemAnimator;

    invoke-static {v0}, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->access$300(Lcom/codemao/creativecenter/customview/BaseItemAnimator;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator$2;->val$changes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
