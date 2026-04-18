.class public Lcom/codemao/nemo/event/DeleteBcmEvent;
.super Ljava/lang/Object;
.source "DeleteBcmEvent.java"


# instance fields
.field public createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;


# direct methods
.method public constructor <init>(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V
    .registers 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/codemao/nemo/event/DeleteBcmEvent;->createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    return-void
.end method
