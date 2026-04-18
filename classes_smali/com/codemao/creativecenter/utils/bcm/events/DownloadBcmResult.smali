.class public Lcom/codemao/creativecenter/utils/bcm/events/DownloadBcmResult;
.super Ljava/lang/Object;
.source "DownloadBcmResult.java"


# instance fields
.field public createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

.field public position:I

.field public status:I

.field public type:I


# direct methods
.method public constructor <init>(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V
    .registers 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/events/DownloadBcmResult;->createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    return-void
.end method

.method public constructor <init>(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;III)V
    .registers 5

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p2, p0, Lcom/codemao/creativecenter/utils/bcm/events/DownloadBcmResult;->position:I

    .line 21
    iput p3, p0, Lcom/codemao/creativecenter/utils/bcm/events/DownloadBcmResult;->status:I

    .line 22
    iput-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/events/DownloadBcmResult;->createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    .line 23
    iput p4, p0, Lcom/codemao/creativecenter/utils/bcm/events/DownloadBcmResult;->type:I

    return-void
.end method
