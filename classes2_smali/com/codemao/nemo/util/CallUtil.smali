.class public Lcom/codemao/nemo/util/CallUtil;
.super Ljava/lang/Object;
.source "CallUtil.java"


# static fields
.field private static downloadCall:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lretrofit2/Call;",
            ">;>;"
        }
    .end annotation
.end field

.field private static isCanceledMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static uploadCall:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lretrofit2/Call;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/codemao/nemo/util/CallUtil;->uploadCall:Ljava/util/Map;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/codemao/nemo/util/CallUtil;->downloadCall:Ljava/util/Map;

    return-void
.end method

.method public static cancelDownloadById(Ljava/lang/String;)V
    .registers 3

    .line 44
    sget-object v0, Lcom/codemao/nemo/util/CallUtil;->downloadCall:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1e

    .line 46
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lretrofit2/Call;

    .line 47
    invoke-interface {v1}, Lretrofit2/Call;->cancel()V

    goto :goto_e

    .line 50
    :cond_1e
    sget-object v0, Lcom/codemao/nemo/util/CallUtil;->downloadCall:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    .line 51
    sput-boolean p0, Lcom/codemao/nemo/util/AppConstants;->HAS_BCM_DOWNLOAD:Z

    const/4 p0, 0x0

    .line 52
    sput-object p0, Lcom/codemao/nemo/util/AppConstants;->DOWNLOADING_BCM_ID:Ljava/lang/String;

    return-void
.end method

.method public static cancelUploadById(Ljava/lang/String;)V
    .registers 3

    .line 80
    sget-object v0, Lcom/codemao/nemo/util/CallUtil;->isCanceledMap:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/codemao/nemo/util/CallUtil;->isCanceledMap:Ljava/util/Map;

    .line 83
    :cond_b
    sget-object v0, Lcom/codemao/nemo/util/CallUtil;->isCanceledMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/codemao/nemo/util/CallUtil;->uploadCall:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_30

    .line 86
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lretrofit2/Call;

    .line 87
    invoke-interface {v1}, Lretrofit2/Call;->cancel()V

    goto :goto_20

    .line 90
    :cond_30
    sget-object v0, Lcom/codemao/nemo/util/CallUtil;->uploadCall:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
