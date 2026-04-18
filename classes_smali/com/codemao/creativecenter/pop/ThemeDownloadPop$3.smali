.class Lcom/codemao/creativecenter/pop/ThemeDownloadPop$3;
.super Landroid/os/CountDownTimer;
.source "ThemeDownloadPop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/pop/ThemeDownloadPop;->startDissmissCountDown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/pop/ThemeDownloadPop;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/pop/ThemeDownloadPop;JJ)V
    .registers 6

    .line 90
    iput-object p1, p0, Lcom/codemao/creativecenter/pop/ThemeDownloadPop$3;->this$0:Lcom/codemao/creativecenter/pop/ThemeDownloadPop;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 3

    .line 99
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/ThemeDownloadPop$3;->this$0:Lcom/codemao/creativecenter/pop/ThemeDownloadPop;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/codemao/creativecenter/pop/ThemeDownloadPop;->access$002(Lcom/codemao/creativecenter/pop/ThemeDownloadPop;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    .line 100
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/ThemeDownloadPop$3;->this$0:Lcom/codemao/creativecenter/pop/ThemeDownloadPop;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/pop/ThemeDownloadPop;->dismiss()V

    return-void
.end method

.method public onTick(J)V
    .registers 3

    return-void
.end method
