.class Lcom/codemao/creativecenter/activity/RecordSoundActivity$1;
.super Ljava/lang/Object;
.source "RecordSoundActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/activity/RecordSoundActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/activity/RecordSoundActivity;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/activity/RecordSoundActivity;)V
    .registers 2

    .line 132
    iput-object p1, p0, Lcom/codemao/creativecenter/activity/RecordSoundActivity$1;->this$0:Lcom/codemao/creativecenter/activity/RecordSoundActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 135
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/RecordSoundActivity$1;->this$0:Lcom/codemao/creativecenter/activity/RecordSoundActivity;

    invoke-static {v0}, Lcom/codemao/creativecenter/activity/RecordSoundActivity;->access$000(Lcom/codemao/creativecenter/activity/RecordSoundActivity;)Lcom/codemao/creativecenter/customview/VoiceLineView;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/customview/VoiceLineView;->setVolume(I)V

    .line 136
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/RecordSoundActivity$1;->this$0:Lcom/codemao/creativecenter/activity/RecordSoundActivity;

    invoke-static {v0}, Lcom/codemao/creativecenter/activity/RecordSoundActivity;->access$100(Lcom/codemao/creativecenter/activity/RecordSoundActivity;)Lcom/codemao/creativecenter/customview/CmRecordView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/customview/CmRecordView;->clickStart()V

    .line 137
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/RecordSoundActivity$1;->this$0:Lcom/codemao/creativecenter/activity/RecordSoundActivity;

    invoke-static {v0}, Lcom/codemao/creativecenter/activity/RecordSoundActivity;->access$200(Lcom/codemao/creativecenter/activity/RecordSoundActivity;)Lcom/codemao/creativecenter/callback/KeyboardHeightProvider;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 138
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/RecordSoundActivity$1;->this$0:Lcom/codemao/creativecenter/activity/RecordSoundActivity;

    invoke-static {v0}, Lcom/codemao/creativecenter/activity/RecordSoundActivity;->access$200(Lcom/codemao/creativecenter/activity/RecordSoundActivity;)Lcom/codemao/creativecenter/callback/KeyboardHeightProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/callback/KeyboardHeightProvider;->start()V

    :cond_24
    return-void
.end method
