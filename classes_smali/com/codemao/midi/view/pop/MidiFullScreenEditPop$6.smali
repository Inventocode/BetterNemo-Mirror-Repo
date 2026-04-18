.class Lcom/codemao/midi/view/pop/MidiFullScreenEditPop$6;
.super Ljava/lang/Object;
.source "MidiFullScreenEditPop.java"

# interfaces
.implements Landroidx/core/view/ViewPropertyAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->showNotice()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;


# direct methods
.method constructor <init>(Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;)V
    .registers 2

    .line 284
    iput-object p1, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop$6;->this$0:Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;

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

    .line 287
    iget-object p1, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop$6;->this$0:Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;

    invoke-static {p1}, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->access$1000(Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
