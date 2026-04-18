.class Lcom/codemao/midi/util/MidiKeyboardHeightProvider$1;
.super Ljava/lang/Object;
.source "MidiKeyboardHeightProvider.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/midi/util/MidiKeyboardHeightProvider;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/midi/util/MidiKeyboardHeightProvider;


# direct methods
.method constructor <init>(Lcom/codemao/midi/util/MidiKeyboardHeightProvider;)V
    .registers 2

    .line 97
    iput-object p1, p0, Lcom/codemao/midi/util/MidiKeyboardHeightProvider$1;->this$0:Lcom/codemao/midi/util/MidiKeyboardHeightProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 2

    .line 101
    iget-object v0, p0, Lcom/codemao/midi/util/MidiKeyboardHeightProvider$1;->this$0:Lcom/codemao/midi/util/MidiKeyboardHeightProvider;

    invoke-static {v0}, Lcom/codemao/midi/util/MidiKeyboardHeightProvider;->access$000(Lcom/codemao/midi/util/MidiKeyboardHeightProvider;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 102
    iget-object v0, p0, Lcom/codemao/midi/util/MidiKeyboardHeightProvider$1;->this$0:Lcom/codemao/midi/util/MidiKeyboardHeightProvider;

    invoke-static {v0}, Lcom/codemao/midi/util/MidiKeyboardHeightProvider;->access$100(Lcom/codemao/midi/util/MidiKeyboardHeightProvider;)V

    :cond_d
    return-void
.end method
