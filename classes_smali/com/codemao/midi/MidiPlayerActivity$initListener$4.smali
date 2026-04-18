.class final Lcom/codemao/midi/MidiPlayerActivity$initListener$4;
.super Ljava/lang/Object;
.source "MidiPlayerActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/midi/MidiPlayerActivity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/midi/MidiPlayerActivity;


# direct methods
.method constructor <init>(Lcom/codemao/midi/MidiPlayerActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/midi/MidiPlayerActivity$initListener$4;->this$0:Lcom/codemao/midi/MidiPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 2

    .line 275
    iget-object p1, p0, Lcom/codemao/midi/MidiPlayerActivity$initListener$4;->this$0:Lcom/codemao/midi/MidiPlayerActivity;

    invoke-static {p1}, Lcom/codemao/midi/MidiPlayerActivity;->access$notifyPlayIcon(Lcom/codemao/midi/MidiPlayerActivity;)V

    return-void
.end method
