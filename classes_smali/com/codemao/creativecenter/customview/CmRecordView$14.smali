.class Lcom/codemao/creativecenter/customview/CmRecordView$14;
.super Ljava/lang/Object;
.source "CmRecordView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/customview/CmRecordView;->playCountDown1()V
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

    .line 860
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmRecordView$14;->this$0:Lcom/codemao/creativecenter/customview/CmRecordView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 863
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmRecordView$14;->this$0:Lcom/codemao/creativecenter/customview/CmRecordView;

    invoke-static {v0}, Lcom/codemao/creativecenter/customview/CmRecordView;->access$1800(Lcom/codemao/creativecenter/customview/CmRecordView;)V

    .line 865
    :try_start_5
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmRecordView$14;->this$0:Lcom/codemao/creativecenter/customview/CmRecordView;

    invoke-static {v0}, Lcom/codemao/creativecenter/customview/CmRecordView;->access$1900(Lcom/codemao/creativecenter/customview/CmRecordView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_e} :catch_e

    :catch_e
    return-void
.end method
