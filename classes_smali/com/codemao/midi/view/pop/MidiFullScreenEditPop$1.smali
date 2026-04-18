.class Lcom/codemao/midi/view/pop/MidiFullScreenEditPop$1;
.super Ljava/lang/Object;
.source "MidiFullScreenEditPop.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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

    .line 102
    iput-object p1, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop$1;->this$0:Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 p1, 0x6

    if-eq p2, p1, :cond_8

    if-nez p2, :cond_6

    goto :goto_8

    :cond_6
    const/4 p1, 0x0

    return p1

    .line 106
    :cond_8
    :goto_8
    iget-object p1, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop$1;->this$0:Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;

    invoke-static {p1}, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->access$000(Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;)V

    const/4 p1, 0x1

    return p1
.end method
