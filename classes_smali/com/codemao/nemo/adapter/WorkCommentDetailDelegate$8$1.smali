.class Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$8$1;
.super Ljava/lang/Object;
.source "WorkCommentDetailDelegate.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$8;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$8;)V
    .registers 2

    .line 190
    iput-object p1, p0, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$8$1;->this$1:Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 193
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_14

    .line 195
    iget-object p1, p0, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$8$1;->this$1:Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$8;

    iget-object p1, p1, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$8;->this$0:Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;

    invoke-static {p1, v0}, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;->access$102(Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;I)I

    :cond_14
    return-void
.end method
