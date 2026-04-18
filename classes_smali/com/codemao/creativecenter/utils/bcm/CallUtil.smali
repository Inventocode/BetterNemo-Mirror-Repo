.class public Lcom/codemao/creativecenter/utils/bcm/CallUtil;
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

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/codemao/creativecenter/utils/bcm/CallUtil;->uploadCall:Ljava/util/Map;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/codemao/creativecenter/utils/bcm/CallUtil;->downloadCall:Ljava/util/Map;

    return-void
.end method

.method public static addDownloadCall(Ljava/lang/String;Lretrofit2/Call;)V
    .registers 3

    .line 33
    sget-object v0, Lcom/codemao/creativecenter/utils/bcm/CallUtil;->downloadCall:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_f

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    :cond_f
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object p1, Lcom/codemao/creativecenter/utils/bcm/CallUtil;->downloadCall:Ljava/util/Map;

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addUploadCall(Ljava/lang/String;Lretrofit2/Call;)V
    .registers 3

    .line 65
    sget-object v0, Lcom/codemao/creativecenter/utils/bcm/CallUtil;->uploadCall:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_f

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 69
    :cond_f
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object p1, Lcom/codemao/creativecenter/utils/bcm/CallUtil;->uploadCall:Ljava/util/Map;

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static cancelDownloadById(Ljava/lang/String;)V
    .registers 5

    .line 42
    sget-object v0, Lcom/codemao/creativecenter/utils/bcm/CallUtil;->downloadCall:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    const/4 v2, 0x0

    .line 45
    :goto_c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1e

    .line 46
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lretrofit2/Call;

    .line 47
    invoke-interface {v3}, Lretrofit2/Call;->cancel()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 51
    :cond_1e
    sget-object v0, Lcom/codemao/creativecenter/utils/bcm/CallUtil;->downloadCall:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sput-boolean v1, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->HAS_BCM_DOWNLOAD:Z

    const/4 p0, 0x0

    .line 53
    sput-object p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->DOWNLOADING_BCM_ID:Ljava/lang/String;

    return-void
.end method

.method public static cancelUploadById(Ljava/lang/String;)V
    .registers 3

    .line 81
    sget-object v0, Lcom/codemao/creativecenter/utils/bcm/CallUtil;->isCanceledMap:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/codemao/creativecenter/utils/bcm/CallUtil;->isCanceledMap:Ljava/util/Map;

    .line 84
    :cond_b
    sget-object v0, Lcom/codemao/creativecenter/utils/bcm/CallUtil;->isCanceledMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/codemao/creativecenter/utils/bcm/CallUtil;->uploadCall:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_30

    .line 87
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lretrofit2/Call;

    .line 88
    invoke-interface {v1}, Lretrofit2/Call;->cancel()V

    goto :goto_20

    .line 91
    :cond_30
    sget-object v0, Lcom/codemao/creativecenter/utils/bcm/CallUtil;->uploadCall:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static isCancel(Ljava/lang/String;)Z
    .registers 3

    .line 23
    sget-object v0, Lcom/codemao/creativecenter/utils/bcm/CallUtil;->isCanceledMap:Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 26
    :cond_6
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    return v1

    .line 29
    :cond_d
    sget-object v0, Lcom/codemao/creativecenter/utils/bcm/CallUtil;->isCanceledMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static removeDownload(Ljava/lang/String;Lretrofit2/Call;)V
    .registers 3

    .line 57
    sget-object v0, Lcom/codemao/creativecenter/utils/bcm/CallUtil;->downloadCall:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_d

    .line 59
    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method public static removeUploadCall(Ljava/lang/String;Lretrofit2/Call;)V
    .registers 3

    .line 95
    sget-object v0, Lcom/codemao/creativecenter/utils/bcm/CallUtil;->uploadCall:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_d

    .line 97
    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method public static startUpload(Ljava/lang/String;)V
    .registers 2

    .line 75
    sget-object v0, Lcom/codemao/creativecenter/utils/bcm/CallUtil;->isCanceledMap:Ljava/util/Map;

    if-eqz v0, :cond_7

    .line 76
    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    return-void
.end method
