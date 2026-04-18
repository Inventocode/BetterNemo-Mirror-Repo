.class Lcom/codemao/creativecenter/customview/CmRecordView$4;
.super Ljava/lang/Object;
.source "CmRecordView.java"

# interfaces
.implements Lcom/codemao/creativecenter/utils/RecordHelper$RecordStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/customview/CmRecordView;->doRecord(Ljava/lang/String;)Z
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

    .line 423
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmRecordView$4;->this$0:Lcom/codemao/creativecenter/customview/CmRecordView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVoiceChange(I)V
    .registers 3

    .line 426
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmRecordView$4;->this$0:Lcom/codemao/creativecenter/customview/CmRecordView;

    invoke-static {v0}, Lcom/codemao/creativecenter/customview/CmRecordView;->access$1100(Lcom/codemao/creativecenter/customview/CmRecordView;)Lcom/codemao/creativecenter/customview/CmRecordView$CmRecordListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 427
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmRecordView$4;->this$0:Lcom/codemao/creativecenter/customview/CmRecordView;

    invoke-static {v0}, Lcom/codemao/creativecenter/customview/CmRecordView;->access$1100(Lcom/codemao/creativecenter/customview/CmRecordView;)Lcom/codemao/creativecenter/customview/CmRecordView$CmRecordListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/codemao/creativecenter/customview/CmRecordView$CmRecordListener;->onSoundSize(I)V

    :cond_11
    return-void
.end method
