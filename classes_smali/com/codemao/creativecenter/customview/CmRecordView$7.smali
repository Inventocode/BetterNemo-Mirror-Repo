.class Lcom/codemao/creativecenter/customview/CmRecordView$7;
.super Landroid/os/CountDownTimer;
.source "CmRecordView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/customview/CmRecordView;->updateUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/customview/CmRecordView;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/customview/CmRecordView;JJ)V
    .registers 6

    .line 562
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmRecordView$7;->this$0:Lcom/codemao/creativecenter/customview/CmRecordView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 3

    .line 575
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmRecordView$7;->this$0:Lcom/codemao/creativecenter/customview/CmRecordView;

    invoke-static {v0}, Lcom/codemao/creativecenter/customview/CmRecordView;->access$700(Lcom/codemao/creativecenter/customview/CmRecordView;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    .line 576
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmRecordView$7;->this$0:Lcom/codemao/creativecenter/customview/CmRecordView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/codemao/creativecenter/customview/CmRecordView;->access$500(Lcom/codemao/creativecenter/customview/CmRecordView;Z)V

    :cond_f
    return-void
.end method

.method public onTick(J)V
    .registers 7

    const-wide/32 v0, 0xea60

    sub-long/2addr v0, p1

    const-wide/16 p1, 0x3e8

    .line 568
    div-long p1, v0, p1

    long-to-int p2, p1

    .line 569
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmRecordView$7;->this$0:Lcom/codemao/creativecenter/customview/CmRecordView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CmRecordView;->access$300(Lcom/codemao/creativecenter/customview/CmRecordView;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "s"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 570
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmRecordView$7;->this$0:Lcom/codemao/creativecenter/customview/CmRecordView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CmRecordView;->access$400(Lcom/codemao/creativecenter/customview/CmRecordView;)Lcom/codemao/creativecenter/customview/CircleProgressView;

    move-result-object p1

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    long-to-int p2, v0

    invoke-virtual {p1, p2}, Lcom/codemao/creativecenter/customview/CircleProgressView;->setProgress(I)V

    return-void
.end method
