.class Lcom/codemao/midi/view/pop/MidiCustomDialogPop$1;
.super Ljava/lang/Object;
.source "MidiCustomDialogPop.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/midi/view/pop/MidiCustomDialogPop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/midi/view/pop/MidiCustomDialogPop;


# direct methods
.method constructor <init>(Lcom/codemao/midi/view/pop/MidiCustomDialogPop;)V
    .registers 2

    .line 51
    iput-object p1, p0, Lcom/codemao/midi/view/pop/MidiCustomDialogPop$1;->this$0:Lcom/codemao/midi/view/pop/MidiCustomDialogPop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 55
    iget-object p1, p0, Lcom/codemao/midi/view/pop/MidiCustomDialogPop$1;->this$0:Lcom/codemao/midi/view/pop/MidiCustomDialogPop;

    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    return-void
.end method
