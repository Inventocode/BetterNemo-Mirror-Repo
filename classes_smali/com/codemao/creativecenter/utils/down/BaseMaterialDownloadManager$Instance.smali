.class Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager$Instance;
.super Ljava/lang/Object;
.source "BaseMaterialDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Instance"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 42
    new-instance v0, Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;-><init>(Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager$1;)V

    sput-object v0, Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager$Instance;->INSTANCE:Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;

    return-void
.end method

.method static synthetic access$100()Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;
    .registers 1

    .line 41
    sget-object v0, Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager$Instance;->INSTANCE:Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;

    return-object v0
.end method
