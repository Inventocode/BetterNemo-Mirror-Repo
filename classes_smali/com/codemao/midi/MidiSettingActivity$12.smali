.class Lcom/codemao/midi/MidiSettingActivity$12;
.super Ljava/lang/Object;
.source "MidiSettingActivity.java"

# interfaces
.implements Lcom/codemao/midi/view/InputStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/midi/MidiSettingActivity;->shoInput()V
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

    .line 419
    iput-object p1, p0, Lcom/codemao/midi/MidiSettingActivity$12;->this$0:Lcom/codemao/midi/MidiSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 1

    return-void
.end method

.method public onDone(Ljava/lang/String;)V
    .registers 3

    .line 427
    iget-object v0, p0, Lcom/codemao/midi/MidiSettingActivity$12;->this$0:Lcom/codemao/midi/MidiSettingActivity;

    iget-object v0, v0, Lcom/codemao/midi/MidiSettingActivity;->tvName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    iget-object v0, p0, Lcom/codemao/midi/MidiSettingActivity$12;->this$0:Lcom/codemao/midi/MidiSettingActivity;

    invoke-static {v0}, Lcom/codemao/midi/MidiSettingActivity;->access$100(Lcom/codemao/midi/MidiSettingActivity;)Lcom/codemao/midi/bean/MidiSettingInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/codemao/midi/bean/MidiSettingInfo;->setName(Ljava/lang/String;)V

    return-void
.end method
