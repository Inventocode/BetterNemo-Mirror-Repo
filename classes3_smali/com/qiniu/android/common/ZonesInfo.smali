.class public Lcom/qiniu/android/common/ZonesInfo;
.super Ljava/lang/Object;
.source "ZonesInfo.java"


# instance fields
.field public final zonesInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/qiniu/android/common/ZoneInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/qiniu/android/common/ZoneInfo;",
            ">;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/qiniu/android/common/ZonesInfo;->zonesInfo:Ljava/util/ArrayList;

    return-void
.end method

.method public static createZonesInfo(Lorg/json/JSONObject;)Lcom/qiniu/android/common/ZonesInfo;
    .registers 5

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_2a

    :try_start_7
    const-string v1, "hosts"

    .line 20
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 v1, 0x0

    .line 21
    :goto_e
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2a

    .line 22
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/qiniu/android/common/ZoneInfo;->buildFromJson(Lorg/json/JSONObject;)Lcom/qiniu/android/common/ZoneInfo;

    move-result-object v2

    if-eqz v2, :cond_27

    .line 23
    invoke-virtual {v2}, Lcom/qiniu/android/common/ZoneInfo;->isValid()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 24
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_27} :catch_2a

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 31
    :catch_2a
    :cond_2a
    new-instance p0, Lcom/qiniu/android/common/ZonesInfo;

    invoke-direct {p0, v0}, Lcom/qiniu/android/common/ZonesInfo;-><init>(Ljava/util/ArrayList;)V

    return-object p0
.end method


# virtual methods
.method public isValid()Z
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/qiniu/android/common/ZonesInfo;->zonesInfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method
