.class Lcom/codemao/creativecenter/customview/CmRecordView$12;
.super Ljava/lang/Object;
.source "CmRecordView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/customview/CmRecordView;->playCountDown1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/customview/CmRecordView;)V
    .registers 2

    .line 846
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 2

    .line 849
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    return-void
.end method
