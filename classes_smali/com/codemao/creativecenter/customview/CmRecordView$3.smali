.class Lcom/codemao/creativecenter/customview/CmRecordView$3;
.super Landroid/os/CountDownTimer;
.source "CmRecordView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/customview/CmRecordView;->startPlay()V
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

    .line 314
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmRecordView$3;->this$0:Lcom/codemao/creativecenter/customview/CmRecordView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 1

    return-void
.end method

.method public onTick(J)V
    .registers 7

    const-wide/16 v0, 0x3e8

    .line 318
    div-long v0, p1, v0

    long-to-int v1, v0

    const-wide/16 v2, 0x64

    .line 319
    div-long/2addr p1, v2

    long-to-int p2, p1

    .line 320
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmRecordView$3;->this$0:Lcom/codemao/creativecenter/customview/CmRecordView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CmRecordView;->access$300(Lcom/codemao/creativecenter/customview/CmRecordView;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmRecordView$3;->this$0:Lcom/codemao/creativecenter/customview/CmRecordView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CmRecordView;->access$400(Lcom/codemao/creativecenter/customview/CmRecordView;)Lcom/codemao/creativecenter/customview/CircleProgressView;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/codemao/creativecenter/customview/CircleProgressView;->setProgress(I)V

    return-void
.end method
