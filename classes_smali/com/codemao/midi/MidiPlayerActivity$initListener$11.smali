.class final Lcom/codemao/midi/MidiPlayerActivity$initListener$11;
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

    iput-object p1, p0, Lcom/codemao/midi/MidiPlayerActivity$initListener$11;->this$0:Lcom/codemao/midi/MidiPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 8

    .line 370
    iget-object p1, p0, Lcom/codemao/midi/MidiPlayerActivity$initListener$11;->this$0:Lcom/codemao/midi/MidiPlayerActivity;

    invoke-static {p1}, Lcom/codemao/midi/MidiPlayerActivity;->access$stopMidi(Lcom/codemao/midi/MidiPlayerActivity;)V

    .line 372
    new-instance p1, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    iget-object v0, p0, Lcom/codemao/midi/MidiPlayerActivity$initListener$11;->this$0:Lcom/codemao/midi/MidiPlayerActivity;

    invoke-direct {p1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    .line 373
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnBackPressed(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    .line 374
    invoke-virtual {p1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnTouchOutside(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    .line 375
    sget-object v0, Lcom/nemo/commonui/xpopup/enums/PopupAnimation;->TranslateAlphaFromBottom:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    invoke-virtual {p1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupAnimation(Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    .line 376
    new-instance v0, Lcom/codemao/midi/view/pop/MidiHelpPop;

    iget-object v1, p0, Lcom/codemao/midi/MidiPlayerActivity$initListener$11;->this$0:Lcom/codemao/midi/MidiPlayerActivity;

    const-string v2, "midi"

    invoke-direct {v0, v1, v2}, Lcom/codemao/midi/view/pop/MidiHelpPop;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object p1

    .line 377
    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    .line 378
    sget-object v0, Lcom/codemao/midi/util/MidiStatisticsUtils;->INSTANCE:Lcom/codemao/midi/util/MidiStatisticsUtils;

    const-string v1, "MIDI画板"

    const-string v2, "MIDI画板-帮助"

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/codemao/midi/util/MidiStatisticsUtils;->sendEvent$default(Lcom/codemao/midi/util/MidiStatisticsUtils;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    return-void
.end method
