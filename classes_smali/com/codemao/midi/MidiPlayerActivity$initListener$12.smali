.class final Lcom/codemao/midi/MidiPlayerActivity$initListener$12;
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

    iput-object p1, p0, Lcom/codemao/midi/MidiPlayerActivity$initListener$12;->this$0:Lcom/codemao/midi/MidiPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    .line 382
    sget-object p1, Lcom/codemao/midi/util/TouchIntervalHelper;->INSTANCE:Lcom/codemao/midi/util/TouchIntervalHelper;

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/codemao/midi/util/TouchIntervalHelper;->checkTouchInterval$default(Lcom/codemao/midi/util/TouchIntervalHelper;JILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    return-void

    .line 385
    :cond_d
    iget-object p1, p0, Lcom/codemao/midi/MidiPlayerActivity$initListener$12;->this$0:Lcom/codemao/midi/MidiPlayerActivity;

    sget v0, Lcom/codemao/midi/R$id;->v_piano:I

    invoke-virtual {p1, v0}, Lcom/codemao/midi/MidiPlayerActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/codemao/midi/view/midiview/PianoView;

    const-string v0, "v_piano"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    const-string v0, "MIDI画板-琴键"

    const-string v1, "MIDI画板"

    if-nez p1, :cond_3f

    .line 386
    sget-object p1, Lcom/codemao/midi/util/MidiStatisticsUtils;->INSTANCE:Lcom/codemao/midi/util/MidiStatisticsUtils;

    .line 389
    new-instance v2, Lcom/codemao/midi/util/MidiStatisticsParams;

    invoke-direct {v2}, Lcom/codemao/midi/util/MidiStatisticsParams;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/codemao/midi/util/MidiStatisticsParams;->putPianoState(Z)Lcom/codemao/midi/util/MidiStatisticsParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/midi/util/MidiStatisticsParams;->get()Ljava/util/Map;

    move-result-object v2

    .line 386
    invoke-virtual {p1, v1, v0, v2}, Lcom/codemao/midi/util/MidiStatisticsUtils;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 391
    iget-object p1, p0, Lcom/codemao/midi/MidiPlayerActivity$initListener$12;->this$0:Lcom/codemao/midi/MidiPlayerActivity;

    invoke-static {p1}, Lcom/codemao/midi/MidiPlayerActivity;->access$dismissPianoView(Lcom/codemao/midi/MidiPlayerActivity;)V

    goto :goto_56

    .line 393
    :cond_3f
    sget-object p1, Lcom/codemao/midi/util/MidiStatisticsUtils;->INSTANCE:Lcom/codemao/midi/util/MidiStatisticsUtils;

    .line 396
    new-instance v3, Lcom/codemao/midi/util/MidiStatisticsParams;

    invoke-direct {v3}, Lcom/codemao/midi/util/MidiStatisticsParams;-><init>()V

    invoke-virtual {v3, v2}, Lcom/codemao/midi/util/MidiStatisticsParams;->putPianoState(Z)Lcom/codemao/midi/util/MidiStatisticsParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/midi/util/MidiStatisticsParams;->get()Ljava/util/Map;

    move-result-object v2

    .line 393
    invoke-virtual {p1, v1, v0, v2}, Lcom/codemao/midi/util/MidiStatisticsUtils;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 398
    iget-object p1, p0, Lcom/codemao/midi/MidiPlayerActivity$initListener$12;->this$0:Lcom/codemao/midi/MidiPlayerActivity;

    invoke-static {p1}, Lcom/codemao/midi/MidiPlayerActivity;->access$showPianoView(Lcom/codemao/midi/MidiPlayerActivity;)V

    :goto_56
    return-void
.end method
