.class Lcom/codemao/creativecenter/customview/VoiceLineView$1;
.super Landroid/os/Handler;
.source "VoiceLineView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativecenter/customview/VoiceLineView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/customview/VoiceLineView;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/customview/VoiceLineView;)V
    .registers 2

    .line 122
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/VoiceLineView$1;->this$0:Lcom/codemao/creativecenter/customview/VoiceLineView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 125
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 126
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/VoiceLineView$1;->this$0:Lcom/codemao/creativecenter/customview/VoiceLineView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    const/4 p1, 0x1

    const-wide/16 v0, 0x10

    .line 127
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
