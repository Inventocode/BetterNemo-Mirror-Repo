.class public Lcom/tencent/smtt/sdk/WebHistoryItem;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/tencent/smtt/export/external/interfaces/IX5WebHistoryItem;

.field private b:Landroid/webkit/WebHistoryItem;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/smtt/sdk/WebHistoryItem;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebHistoryItem;

    iput-object v0, p0, Lcom/tencent/smtt/sdk/WebHistoryItem;->b:Landroid/webkit/WebHistoryItem;

    return-void
.end method

.method static a(Landroid/webkit/WebHistoryItem;)Lcom/tencent/smtt/sdk/WebHistoryItem;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    new-instance v0, Lcom/tencent/smtt/sdk/WebHistoryItem;

    invoke-direct {v0}, Lcom/tencent/smtt/sdk/WebHistoryItem;-><init>()V

    iput-object p0, v0, Lcom/tencent/smtt/sdk/WebHistoryItem;->b:Landroid/webkit/WebHistoryItem;

    return-object v0
.end method

.method static a(Lcom/tencent/smtt/export/external/interfaces/IX5WebHistoryItem;)Lcom/tencent/smtt/sdk/WebHistoryItem;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    new-instance v0, Lcom/tencent/smtt/sdk/WebHistoryItem;

    invoke-direct {v0}, Lcom/tencent/smtt/sdk/WebHistoryItem;-><init>()V

    iput-object p0, v0, Lcom/tencent/smtt/sdk/WebHistoryItem;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebHistoryItem;

    return-object v0
.end method


# virtual methods
.method public getFavicon()Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebHistoryItem;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebHistoryItem;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebHistoryItem;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebHistoryItem;->b:Landroid/webkit/WebHistoryItem;

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebHistoryItem;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebHistoryItem;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebHistoryItem;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebHistoryItem;->b:Landroid/webkit/WebHistoryItem;

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebHistoryItem;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebHistoryItem;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebHistoryItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebHistoryItem;->b:Landroid/webkit/WebHistoryItem;

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebHistoryItem;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebHistoryItem;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebHistoryItem;->b:Landroid/webkit/WebHistoryItem;

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
