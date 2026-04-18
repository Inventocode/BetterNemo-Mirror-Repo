.class Lcom/codemao/midi/MidiSettingActivity$2;
.super Ljava/lang/Object;
.source "MidiSettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/midi/MidiSettingActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 146
    iput-object p1, p0, Lcom/codemao/midi/MidiSettingActivity$2;->this$0:Lcom/codemao/midi/MidiSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 149
    iget-object v0, p0, Lcom/codemao/midi/MidiSettingActivity$2;->this$0:Lcom/codemao/midi/MidiSettingActivity;

    invoke-static {v0}, Lcom/codemao/midi/MidiSettingActivity;->access$000(Lcom/codemao/midi/MidiSettingActivity;)Lcom/codemao/midi/util/MidiKeyboardHeightProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/midi/util/MidiKeyboardHeightProvider;->start()V

    return-void
.end method
