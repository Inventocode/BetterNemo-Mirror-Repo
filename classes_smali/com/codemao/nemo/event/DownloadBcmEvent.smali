.class public Lcom/codemao/nemo/event/DownloadBcmEvent;
.super Ljava/lang/Object;
.source "DownloadBcmEvent.java"


# instance fields
.field public downloadType:I

.field public workDetailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;


# direct methods
.method public constructor <init>(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;I)V
    .registers 3

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/codemao/nemo/event/DownloadBcmEvent;->workDetailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    .line 16
    iput p2, p0, Lcom/codemao/nemo/event/DownloadBcmEvent;->downloadType:I

    return-void
.end method
