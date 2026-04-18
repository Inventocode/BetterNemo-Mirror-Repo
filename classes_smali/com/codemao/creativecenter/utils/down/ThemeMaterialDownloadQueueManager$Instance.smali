.class Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager$Instance;
.super Ljava/lang/Object;
.source "ThemeMaterialDownloadQueueManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Instance"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 35
    new-instance v0, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;-><init>(Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager$1;)V

    sput-object v0, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager$Instance;->INSTANCE:Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;

    return-void
.end method

.method static synthetic access$100()Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;
    .registers 1

    .line 34
    sget-object v0, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager$Instance;->INSTANCE:Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;

    return-object v0
.end method
