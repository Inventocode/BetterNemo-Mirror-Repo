.class final Lcom/codemao/midi/MidiPlayerActivity$showCustomDialogPop$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "MidiPlayerActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/midi/MidiPlayerActivity;->showCustomDialogPop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $rightAction$inlined:Lkotlin/jvm/functions/Function0;

.field final synthetic this$0:Lcom/codemao/midi/MidiPlayerActivity;


# direct methods
.method constructor <init>(Lcom/codemao/midi/MidiPlayerActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .registers 6

    iput-object p1, p0, Lcom/codemao/midi/MidiPlayerActivity$showCustomDialogPop$$inlined$let$lambda$1;->this$0:Lcom/codemao/midi/MidiPlayerActivity;

    iput-object p5, p0, Lcom/codemao/midi/MidiPlayerActivity$showCustomDialogPop$$inlined$let$lambda$1;->$rightAction$inlined:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 2

    .line 601
    iget-object p1, p0, Lcom/codemao/midi/MidiPlayerActivity$showCustomDialogPop$$inlined$let$lambda$1;->this$0:Lcom/codemao/midi/MidiPlayerActivity;

    invoke-static {p1}, Lcom/codemao/midi/MidiPlayerActivity;->access$getMidiDialogPopOne$p(Lcom/codemao/midi/MidiPlayerActivity;)Lcom/codemao/midi/view/pop/MidiCustomDialogPop;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    :cond_b
    return-void
.end method
