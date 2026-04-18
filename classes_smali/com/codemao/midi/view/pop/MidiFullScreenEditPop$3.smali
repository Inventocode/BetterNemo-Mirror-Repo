.class Lcom/codemao/midi/view/pop/MidiFullScreenEditPop$3;
.super Ljava/lang/Object;
.source "MidiFullScreenEditPop.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->onCreate()V
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

    .line 140
    iput-object p1, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop$3;->this$0:Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 143
    iget-object p1, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop$3;->this$0:Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;

    invoke-static {p1}, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->access$700(Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 144
    iget-object p1, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop$3;->this$0:Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;

    invoke-static {p1}, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->access$800(Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;)V

    :cond_d
    return-void
.end method
