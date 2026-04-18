.class Lcom/codemao/creativecenter/customview/CmRecordView$1;
.super Landroid/telephony/PhoneStateListener;
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

    .line 98
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmRecordView$1;->this$0:Lcom/codemao/creativecenter/customview/CmRecordView;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_8

    .line 102
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmRecordView$1;->this$0:Lcom/codemao/creativecenter/customview/CmRecordView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/codemao/creativecenter/customview/CmRecordView;->access$000(Lcom/codemao/creativecenter/customview/CmRecordView;Z)V

    :cond_8
    return-void
.end method
