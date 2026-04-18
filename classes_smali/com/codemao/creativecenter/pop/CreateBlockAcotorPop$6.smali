.class Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$6;
.super Ljava/lang/Object;
.source "CreateBlockAcotorPop.java"

# interfaces
.implements Landroidx/core/view/ViewPropertyAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;)V
    .registers 2

    .line 217
    iput-object p1, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$6;->this$0:Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .registers 3

    .line 220
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$6;->this$0:Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method
