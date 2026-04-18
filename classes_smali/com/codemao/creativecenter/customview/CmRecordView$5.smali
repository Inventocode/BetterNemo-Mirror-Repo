.class Lcom/codemao/creativecenter/customview/CmRecordView$5;
.super Lcom/codemao/creativecenter/customview/CmRecordView$CallStateListener;
.source "CmRecordView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativecenter/customview/CmRecordView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/customview/CmRecordView;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/customview/CmRecordView;)V
    .registers 2

    .line 474
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmRecordView$5;->this$0:Lcom/codemao/creativecenter/customview/CmRecordView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/customview/CmRecordView$CallStateListener;-><init>(Lcom/codemao/creativecenter/customview/CmRecordView$1;)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(I)V
    .registers 3

    if-eqz p1, :cond_8

    .line 478
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmRecordView$5;->this$0:Lcom/codemao/creativecenter/customview/CmRecordView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/codemao/creativecenter/customview/CmRecordView;->access$000(Lcom/codemao/creativecenter/customview/CmRecordView;Z)V

    :cond_8
    return-void
.end method
