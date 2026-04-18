.class Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$7;
.super Ljava/lang/Object;
.source "CreateBlockAcotorPop.java"

# interfaces
.implements Landroidx/core/view/ViewPropertyAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;->hide()V
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

    .line 241
    iput-object p1, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$7;->this$0:Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .registers 3

    .line 255
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$7;->this$0:Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .registers 3

    .line 249
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$7;->this$0:Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;

    invoke-static {p1}, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;->access$500(Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 250
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$7;->this$0:Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .registers 2

    return-void
.end method
