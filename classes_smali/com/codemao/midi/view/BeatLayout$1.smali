.class Lcom/codemao/midi/view/BeatLayout$1;
.super Ljava/lang/Object;
.source "BeatLayout.java"

# interfaces
.implements Lcom/codemao/midi/view/BeatView$BeatChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/midi/view/BeatLayout;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/midi/view/BeatLayout;


# direct methods
.method constructor <init>(Lcom/codemao/midi/view/BeatLayout;)V
    .registers 2

    .line 50
    iput-object p1, p0, Lcom/codemao/midi/view/BeatLayout$1;->this$0:Lcom/codemao/midi/view/BeatLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeatChange(IZ)V
    .registers 4

    .line 53
    iget-object v0, p0, Lcom/codemao/midi/view/BeatLayout$1;->this$0:Lcom/codemao/midi/view/BeatLayout;

    invoke-static {v0}, Lcom/codemao/midi/view/BeatLayout;->access$000(Lcom/codemao/midi/view/BeatLayout;)Lcom/codemao/midi/view/BeatView$BeatChangeListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 54
    iget-object v0, p0, Lcom/codemao/midi/view/BeatLayout$1;->this$0:Lcom/codemao/midi/view/BeatLayout;

    invoke-static {v0}, Lcom/codemao/midi/view/BeatLayout;->access$000(Lcom/codemao/midi/view/BeatLayout;)Lcom/codemao/midi/view/BeatView$BeatChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/codemao/midi/view/BeatView$BeatChangeListener;->onBeatChange(IZ)V

    .line 56
    :cond_11
    iget-object p2, p0, Lcom/codemao/midi/view/BeatLayout$1;->this$0:Lcom/codemao/midi/view/BeatLayout;

    invoke-static {p2}, Lcom/codemao/midi/view/BeatLayout;->access$100(Lcom/codemao/midi/view/BeatLayout;)Landroid/widget/TextView;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
