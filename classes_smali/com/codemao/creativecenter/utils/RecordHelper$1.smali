.class Lcom/codemao/creativecenter/utils/RecordHelper$1;
.super Ljava/lang/Object;
.source "RecordHelper.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/utils/RecordHelper;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/utils/RecordHelper;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/utils/RecordHelper;)V
    .registers 2

    .line 59
    iput-object p1, p0, Lcom/codemao/creativecenter/utils/RecordHelper$1;->this$0:Lcom/codemao/creativecenter/utils/RecordHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 4

    .line 62
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_16

    const/4 v1, 0x2

    if-eq p1, v1, :cond_9

    goto :goto_1c

    .line 67
    :cond_9
    iget-object p1, p0, Lcom/codemao/creativecenter/utils/RecordHelper$1;->this$0:Lcom/codemao/creativecenter/utils/RecordHelper;

    const/16 v1, 0x10

    invoke-static {p1, v1}, Lcom/codemao/creativecenter/utils/RecordHelper;->access$112(Lcom/codemao/creativecenter/utils/RecordHelper;I)I

    .line 68
    iget-object p1, p0, Lcom/codemao/creativecenter/utils/RecordHelper$1;->this$0:Lcom/codemao/creativecenter/utils/RecordHelper;

    invoke-static {p1}, Lcom/codemao/creativecenter/utils/RecordHelper;->access$200(Lcom/codemao/creativecenter/utils/RecordHelper;)V

    goto :goto_1c

    .line 64
    :cond_16
    iget-object p1, p0, Lcom/codemao/creativecenter/utils/RecordHelper$1;->this$0:Lcom/codemao/creativecenter/utils/RecordHelper;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/codemao/creativecenter/utils/RecordHelper;->stopRecordVoice(Z)V

    :goto_1c
    return v0
.end method
