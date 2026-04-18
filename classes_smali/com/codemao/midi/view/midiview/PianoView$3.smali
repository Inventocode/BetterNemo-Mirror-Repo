.class final Lcom/codemao/midi/view/midiview/PianoView$3;
.super Ljava/lang/Object;
.source "PianoView.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/midi/view/midiview/PianoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/midi/view/midiview/PianoView;


# direct methods
.method constructor <init>(Lcom/codemao/midi/view/midiview/PianoView;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/midi/view/midiview/PianoView$3;->this$0:Lcom/codemao/midi/view/midiview/PianoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    .line 74
    iget-object p1, p0, Lcom/codemao/midi/view/midiview/PianoView$3;->this$0:Lcom/codemao/midi/view/midiview/PianoView;

    invoke-virtual {p1}, Lcom/codemao/midi/view/midiview/PianoView;->getOnPianoItemClick()Lcom/codemao/midi/view/midiview/PianoView$OnPianoItemClick;

    move-result-object p1

    if-eqz p1, :cond_c

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/codemao/midi/view/midiview/PianoView$OnPianoItemClick;->onPianoItemClick(I)V

    :cond_c
    return-void
.end method
