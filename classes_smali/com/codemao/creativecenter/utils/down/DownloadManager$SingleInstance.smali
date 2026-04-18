.class Lcom/codemao/creativecenter/utils/down/DownloadManager$SingleInstance;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativecenter/utils/down/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleInstance"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/codemao/creativecenter/utils/down/DownloadManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 26
    new-instance v0, Lcom/codemao/creativecenter/utils/down/DownloadManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/creativecenter/utils/down/DownloadManager;-><init>(Lcom/codemao/creativecenter/utils/down/DownloadManager$1;)V

    sput-object v0, Lcom/codemao/creativecenter/utils/down/DownloadManager$SingleInstance;->INSTANCE:Lcom/codemao/creativecenter/utils/down/DownloadManager;

    return-void
.end method

.method static synthetic access$100()Lcom/codemao/creativecenter/utils/down/DownloadManager;
    .registers 1

    .line 25
    sget-object v0, Lcom/codemao/creativecenter/utils/down/DownloadManager$SingleInstance;->INSTANCE:Lcom/codemao/creativecenter/utils/down/DownloadManager;

    return-object v0
.end method
