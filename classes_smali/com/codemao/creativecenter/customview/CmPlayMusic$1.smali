.class Lcom/codemao/creativecenter/customview/CmPlayMusic$1;
.super Landroid/os/Handler;
.source "CmPlayMusic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativecenter/customview/CmPlayMusic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/customview/CmPlayMusic;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/customview/CmPlayMusic;)V
    .registers 2

    .line 79
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmPlayMusic$1;->this$0:Lcom/codemao/creativecenter/customview/CmPlayMusic;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 82
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 83
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmPlayMusic$1;->this$0:Lcom/codemao/creativecenter/customview/CmPlayMusic;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CmPlayMusic;->access$000(Lcom/codemao/creativecenter/customview/CmPlayMusic;)Lcom/codemao/creativecenter/utils/Mp3PlayController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/Mp3PlayController;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_15

    .line 84
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmPlayMusic$1;->this$0:Lcom/codemao/creativecenter/customview/CmPlayMusic;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CmPlayMusic;->access$100(Lcom/codemao/creativecenter/customview/CmPlayMusic;)V

    return-void

    .line 89
    :cond_15
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmPlayMusic$1;->this$0:Lcom/codemao/creativecenter/customview/CmPlayMusic;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CmPlayMusic;->access$000(Lcom/codemao/creativecenter/customview/CmPlayMusic;)Lcom/codemao/creativecenter/utils/Mp3PlayController;

    move-result-object p1

    iget-object p1, p1, Lcom/codemao/creativecenter/utils/Mp3PlayController;->playBean:Ljava/lang/Object;

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmPlayMusic$1;->this$0:Lcom/codemao/creativecenter/customview/CmPlayMusic;

    invoke-static {v0}, Lcom/codemao/creativecenter/customview/CmPlayMusic;->access$200(Lcom/codemao/creativecenter/customview/CmPlayMusic;)Ljava/lang/Object;

    move-result-object v0

    if-eq p1, v0, :cond_2b

    .line 90
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmPlayMusic$1;->this$0:Lcom/codemao/creativecenter/customview/CmPlayMusic;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CmPlayMusic;->access$100(Lcom/codemao/creativecenter/customview/CmPlayMusic;)V

    return-void

    .line 94
    :cond_2b
    :try_start_2b
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmPlayMusic$1;->this$0:Lcom/codemao/creativecenter/customview/CmPlayMusic;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CmPlayMusic;->access$000(Lcom/codemao/creativecenter/customview/CmPlayMusic;)Lcom/codemao/creativecenter/utils/Mp3PlayController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/Mp3PlayController;->getCurrentPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x64

    mul-long v0, v0, v2

    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmPlayMusic$1;->this$0:Lcom/codemao/creativecenter/customview/CmPlayMusic;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CmPlayMusic;->access$000(Lcom/codemao/creativecenter/customview/CmPlayMusic;)Lcom/codemao/creativecenter/utils/Mp3PlayController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/Mp3PlayController;->getDuration()J

    move-result-wide v2

    div-long/2addr v0, v2

    long-to-int p1, v0

    const/16 v0, 0x64

    if-lt p1, v0, :cond_4f

    .line 97
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmPlayMusic$1;->this$0:Lcom/codemao/creativecenter/customview/CmPlayMusic;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CmPlayMusic;->access$100(Lcom/codemao/creativecenter/customview/CmPlayMusic;)V

    goto :goto_6b

    .line 99
    :cond_4f
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmPlayMusic$1;->this$0:Lcom/codemao/creativecenter/customview/CmPlayMusic;

    invoke-static {v0}, Lcom/codemao/creativecenter/customview/CmPlayMusic;->access$300(Lcom/codemao/creativecenter/customview/CmPlayMusic;)V

    .line 100
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmPlayMusic$1;->this$0:Lcom/codemao/creativecenter/customview/CmPlayMusic;

    invoke-static {v0}, Lcom/codemao/creativecenter/customview/CmPlayMusic;->access$400(Lcom/codemao/creativecenter/customview/CmPlayMusic;)Lcom/codemao/creativecenter/databinding/CreativeViewPlayMusicBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeViewPlayMusicBinding;->progress:Lcom/codemao/creativecenter/customview/CircleProgressView;

    invoke-virtual {v0, p1}, Lcom/codemao/creativecenter/customview/CircleProgressView;->setProgress(I)V

    .line 101
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmPlayMusic$1;->this$0:Lcom/codemao/creativecenter/customview/CmPlayMusic;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CmPlayMusic;->access$500(Lcom/codemao/creativecenter/customview/CmPlayMusic;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x0

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_6b} :catch_6b

    :catch_6b
    :goto_6b
    return-void
.end method
