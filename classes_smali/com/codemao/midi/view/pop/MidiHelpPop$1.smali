.class Lcom/codemao/midi/view/pop/MidiHelpPop$1;
.super Ljava/lang/Object;
.source "MidiHelpPop.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/midi/view/pop/MidiHelpPop;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/midi/view/pop/MidiHelpPop;


# direct methods
.method constructor <init>(Lcom/codemao/midi/view/pop/MidiHelpPop;)V
    .registers 2

    .line 104
    iput-object p1, p0, Lcom/codemao/midi/view/pop/MidiHelpPop$1;->this$0:Lcom/codemao/midi/view/pop/MidiHelpPop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 107
    iget-object p1, p0, Lcom/codemao/midi/view/pop/MidiHelpPop$1;->this$0:Lcom/codemao/midi/view/pop/MidiHelpPop;

    invoke-static {p1}, Lcom/codemao/midi/view/pop/MidiHelpPop;->access$000(Lcom/codemao/midi/view/pop/MidiHelpPop;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 108
    iget-object p1, p0, Lcom/codemao/midi/view/pop/MidiHelpPop$1;->this$0:Lcom/codemao/midi/view/pop/MidiHelpPop;

    invoke-static {p1}, Lcom/codemao/midi/view/pop/MidiHelpPop;->access$100(Lcom/codemao/midi/view/pop/MidiHelpPop;)V

    :cond_d
    return-void
.end method
