.class final Lcom/codemao/midi/MidiPlayerActivity$initListener$1;
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

    iput-object p1, p0, Lcom/codemao/midi/MidiPlayerActivity$initListener$1;->this$0:Lcom/codemao/midi/MidiPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 9

    .line 241
    iget-object p1, p0, Lcom/codemao/midi/MidiPlayerActivity$initListener$1;->this$0:Lcom/codemao/midi/MidiPlayerActivity;

    invoke-static {p1}, Lcom/codemao/midi/MidiPlayerActivity;->access$stopMidi(Lcom/codemao/midi/MidiPlayerActivity;)V

    .line 242
    iget-object p1, p0, Lcom/codemao/midi/MidiPlayerActivity$initListener$1;->this$0:Lcom/codemao/midi/MidiPlayerActivity;

    sget v0, Lcom/codemao/midi/R$id;->v_midi:I

    invoke-virtual {p1, v0}, Lcom/codemao/midi/MidiPlayerActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/codemao/midi/view/midiview/MidiView;

    invoke-virtual {p1}, Lcom/codemao/midi/view/midiview/MidiView;->getHasChange()Z

    move-result p1

    if-nez p1, :cond_3d

    iget-object p1, p0, Lcom/codemao/midi/MidiPlayerActivity$initListener$1;->this$0:Lcom/codemao/midi/MidiPlayerActivity;

    invoke-static {p1}, Lcom/codemao/midi/MidiPlayerActivity;->access$getPreMidiSettingInfo$p(Lcom/codemao/midi/MidiPlayerActivity;)Lcom/codemao/midi/bean/MidiSettingInfo;

    move-result-object p1

    if-eqz p1, :cond_3d

    iget-object v0, p0, Lcom/codemao/midi/MidiPlayerActivity$initListener$1;->this$0:Lcom/codemao/midi/MidiPlayerActivity;

    invoke-static {v0}, Lcom/codemao/midi/MidiPlayerActivity;->access$getMidiSettingInfo$p(Lcom/codemao/midi/MidiPlayerActivity;)Lcom/codemao/midi/bean/MidiSettingInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/midi/bean/MidiSettingInfo;->equals(Lcom/codemao/midi/bean/MidiSettingInfo;)Z

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2b

    goto :goto_3d

    .line 252
    :cond_2b
    sget-object v1, Lcom/codemao/midi/util/MidiStatisticsUtils;->INSTANCE:Lcom/codemao/midi/util/MidiStatisticsUtils;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "MIDI画板"

    const-string v3, "MIDI画板-退出"

    invoke-static/range {v1 .. v6}, Lcom/codemao/midi/util/MidiStatisticsUtils;->sendEvent$default(Lcom/codemao/midi/util/MidiStatisticsUtils;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    .line 253
    iget-object p1, p0, Lcom/codemao/midi/MidiPlayerActivity$initListener$1;->this$0:Lcom/codemao/midi/MidiPlayerActivity;

    invoke-virtual {p1}, Lcom/codemao/midi/MidiPlayerActivity;->finish()V

    goto :goto_78

    .line 243
    :cond_3d
    :goto_3d
    iget-object p1, p0, Lcom/codemao/midi/MidiPlayerActivity$initListener$1;->this$0:Lcom/codemao/midi/MidiPlayerActivity;

    .line 244
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/codemao/midi/R$string;->midi_quite_notice:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resources.getString(R.string.midi_quite_notice)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    iget-object v1, p0, Lcom/codemao/midi/MidiPlayerActivity$initListener$1;->this$0:Lcom/codemao/midi/MidiPlayerActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codemao/midi/R$string;->midi_keep_editing:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "resources.getString(R.string.midi_keep_editing)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    iget-object v2, p0, Lcom/codemao/midi/MidiPlayerActivity$initListener$1;->this$0:Lcom/codemao/midi/MidiPlayerActivity;

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/codemao/midi/R$string;->midi_exit:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "resources.getString(R.string.midi_exit)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    new-instance v3, Lcom/codemao/midi/MidiPlayerActivity$initListener$1$1;

    invoke-direct {v3, p0}, Lcom/codemao/midi/MidiPlayerActivity$initListener$1$1;-><init>(Lcom/codemao/midi/MidiPlayerActivity$initListener$1;)V

    .line 243
    invoke-static {p1, v0, v1, v2, v3}, Lcom/codemao/midi/MidiPlayerActivity;->access$showCustomDialogPop(Lcom/codemao/midi/MidiPlayerActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    :goto_78
    return-void
.end method
