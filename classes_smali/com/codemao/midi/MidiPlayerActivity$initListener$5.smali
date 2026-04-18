.class final Lcom/codemao/midi/MidiPlayerActivity$initListener$5;
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

    iput-object p1, p0, Lcom/codemao/midi/MidiPlayerActivity$initListener$5;->this$0:Lcom/codemao/midi/MidiPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 13

    .line 279
    new-instance p1, Lcom/codemao/midi/MidiPlayerActivity$initListener$5$1;

    invoke-direct {p1, p0}, Lcom/codemao/midi/MidiPlayerActivity$initListener$5$1;-><init>(Lcom/codemao/midi/MidiPlayerActivity$initListener$5;)V

    .line 289
    iget-object v0, p0, Lcom/codemao/midi/MidiPlayerActivity$initListener$5;->this$0:Lcom/codemao/midi/MidiPlayerActivity;

    sget v1, Lcom/codemao/midi/R$id;->v_midi:I

    invoke-virtual {v0, v1}, Lcom/codemao/midi/MidiPlayerActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/codemao/midi/view/midiview/MidiView;

    invoke-virtual {v0}, Lcom/codemao/midi/view/midiview/MidiView;->getContentSize()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_52

    .line 291
    iget-object v0, p0, Lcom/codemao/midi/MidiPlayerActivity$initListener$5;->this$0:Lcom/codemao/midi/MidiPlayerActivity;

    .line 292
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codemao/midi/R$string;->midi_clean_notice:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "resources.getString(R.string.midi_clean_notice)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    iget-object v2, p0, Lcom/codemao/midi/MidiPlayerActivity$initListener$5;->this$0:Lcom/codemao/midi/MidiPlayerActivity;

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/codemao/midi/R$string;->midi_keep:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "resources.getString(R.string.midi_keep)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    iget-object v3, p0, Lcom/codemao/midi/MidiPlayerActivity$initListener$5;->this$0:Lcom/codemao/midi/MidiPlayerActivity;

    invoke-virtual {v3}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/codemao/midi/R$string;->midi_clean:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "resources.getString(R.string.midi_clean)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    new-instance v4, Lcom/codemao/midi/MidiPlayerActivity$initListener$5$2;

    invoke-direct {v4, p1}, Lcom/codemao/midi/MidiPlayerActivity$initListener$5$2;-><init>(Lcom/codemao/midi/MidiPlayerActivity$initListener$5$1;)V

    .line 291
    invoke-static {v0, v1, v2, v3, v4}, Lcom/codemao/midi/MidiPlayerActivity;->access$showCustomDialogPop(Lcom/codemao/midi/MidiPlayerActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    goto :goto_61

    .line 300
    :cond_52
    sget-object v5, Lcom/codemao/midi/util/MidiStatisticsUtils;->INSTANCE:Lcom/codemao/midi/util/MidiStatisticsUtils;

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    const-string v6, "MIDI画板"

    const-string v7, "MIDI画板-重做"

    invoke-static/range {v5 .. v10}, Lcom/codemao/midi/util/MidiStatisticsUtils;->sendEvent$default(Lcom/codemao/midi/util/MidiStatisticsUtils;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    .line 301
    invoke-virtual {p1}, Lcom/codemao/midi/MidiPlayerActivity$initListener$5$1;->invoke()V

    :goto_61
    return-void
.end method
