.class Lcom/codemao/midi/MidiSettingActivity$3;
.super Ljava/lang/Object;
.source "MidiSettingActivity.java"

# interfaces
.implements Lcom/codemao/midi/view/BeatView$BeatChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/midi/MidiSettingActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/midi/MidiSettingActivity;


# direct methods
.method constructor <init>(Lcom/codemao/midi/MidiSettingActivity;)V
    .registers 2

    .line 225
    iput-object p1, p0, Lcom/codemao/midi/MidiSettingActivity$3;->this$0:Lcom/codemao/midi/MidiSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeatChange(IZ)V
    .registers 6

    .line 228
    iget-object v0, p0, Lcom/codemao/midi/MidiSettingActivity$3;->this$0:Lcom/codemao/midi/MidiSettingActivity;

    invoke-static {v0}, Lcom/codemao/midi/MidiSettingActivity;->access$100(Lcom/codemao/midi/MidiSettingActivity;)Lcom/codemao/midi/bean/MidiSettingInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/codemao/midi/bean/MidiSettingInfo;->setBeat(I)V

    if-eqz p2, :cond_39

    .line 229
    iget-object p2, p0, Lcom/codemao/midi/MidiSettingActivity$3;->this$0:Lcom/codemao/midi/MidiSettingActivity;

    invoke-static {p2}, Lcom/codemao/midi/MidiSettingActivity;->access$200(Lcom/codemao/midi/MidiSettingActivity;)Z

    move-result p2

    if-eqz p2, :cond_39

    .line 231
    iget-object p2, p0, Lcom/codemao/midi/MidiSettingActivity$3;->this$0:Lcom/codemao/midi/MidiSettingActivity;

    invoke-static {p2}, Lcom/codemao/midi/MidiSettingActivity;->access$300(Lcom/codemao/midi/MidiSettingActivity;)Lcom/codemao/midi/javax/CMMidiFile;

    move-result-object p2

    invoke-virtual {p2}, Lcom/codemao/midi/javax/CMMidiFile;->getCMMidiTracks()[Lcom/codemao/midi/javax/CMMidiTrack;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    :goto_1f
    if-ge v1, v0, :cond_29

    aget-object v2, p2, v1

    .line 232
    invoke-virtual {v2, p1}, Lcom/codemao/midi/javax/CMMidiTrack;->insertOrReplaceTempo(I)Lcom/codemao/midi/javax/CMMidiTrack;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 234
    :cond_29
    invoke-static {}, Lcom/codemao/midi/CMMidiHelper;->getInstance()Lcom/codemao/midi/CMMidiHelper;

    move-result-object p1

    iget-object p2, p0, Lcom/codemao/midi/MidiSettingActivity$3;->this$0:Lcom/codemao/midi/MidiSettingActivity;

    invoke-static {p2}, Lcom/codemao/midi/MidiSettingActivity;->access$300(Lcom/codemao/midi/MidiSettingActivity;)Lcom/codemao/midi/javax/CMMidiFile;

    move-result-object p2

    const-string v0, "123"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p2, v1}, Lcom/codemao/midi/CMMidiHelper;->playMidiFile(Ljava/lang/String;Lcom/codemao/midi/javax/CMMidiFile;Z)V

    :cond_39
    return-void
.end method
