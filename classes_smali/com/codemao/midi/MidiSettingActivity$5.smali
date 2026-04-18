.class Lcom/codemao/midi/MidiSettingActivity$5;
.super Ljava/lang/Object;
.source "MidiSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 247
    iput-object p1, p0, Lcom/codemao/midi/MidiSettingActivity$5;->this$0:Lcom/codemao/midi/MidiSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 250
    iget-object p1, p0, Lcom/codemao/midi/MidiSettingActivity$5;->this$0:Lcom/codemao/midi/MidiSettingActivity;

    invoke-static {p1}, Lcom/codemao/midi/MidiSettingActivity;->access$100(Lcom/codemao/midi/MidiSettingActivity;)Lcom/codemao/midi/bean/MidiSettingInfo;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/codemao/midi/bean/MidiSettingInfo;->setMode(I)V

    .line 251
    iget-object p1, p0, Lcom/codemao/midi/MidiSettingActivity$5;->this$0:Lcom/codemao/midi/MidiSettingActivity;

    invoke-static {p1}, Lcom/codemao/midi/MidiSettingActivity;->access$400(Lcom/codemao/midi/MidiSettingActivity;)V

    return-void
.end method
