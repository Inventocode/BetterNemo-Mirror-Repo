.class public Lcom/qiniu/android/common/ZoneInfo;
.super Ljava/lang/Object;
.source "ZoneInfo.java"


# instance fields
.field public allHosts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final buildDate:Ljava/util/Date;

.field public detailInfo:Lorg/json/JSONObject;

.field public final domains:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final http3Enabled:Z

.field public final ipv6:Z

.field public final old_domains:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final regionId:Ljava/lang/String;

.field public final ttl:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>(IZZLjava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput p1, p0, Lcom/qiniu/android/common/ZoneInfo;->ttl:I

    .line 81
    iput-boolean p2, p0, Lcom/qiniu/android/common/ZoneInfo;->http3Enabled:Z

    .line 82
    iput-boolean p3, p0, Lcom/qiniu/android/common/ZoneInfo;->ipv6:Z

    .line 83
    iput-object p4, p0, Lcom/qiniu/android/common/ZoneInfo;->regionId:Ljava/lang/String;

    .line 84
    iput-object p5, p0, Lcom/qiniu/android/common/ZoneInfo;->domains:Ljava/util/List;

    .line 85
    iput-object p6, p0, Lcom/qiniu/android/common/ZoneInfo;->old_domains:Ljava/util/List;

    .line 86
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lcom/qiniu/android/common/ZoneInfo;->buildDate:Ljava/util/Date;

    return-void
.end method

.method public static buildFromJson(Lorg/json/JSONObject;)Lcom/qiniu/android/common/ZoneInfo;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const-string v1, "ttl"

    .line 99
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    const/4 v1, 0x0

    :try_start_b
    const-string v2, "features"

    .line 103
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "http3"

    .line 104
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_17} :catch_31

    const-string v5, "enabled"

    if-eqz v4, :cond_20

    .line 106
    :try_start_1b
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1f} :catch_31

    goto :goto_21

    :cond_20
    const/4 v4, 0x0

    :goto_21
    :try_start_21
    const-string v6, "ipv6"

    .line 109
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_2e

    .line 111
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2d} :catch_32

    goto :goto_2f

    :cond_2e
    const/4 v2, 0x0

    :goto_2f
    move v5, v2

    goto :goto_33

    :catch_31
    const/4 v4, 0x0

    :catch_32
    const/4 v5, 0x0

    :goto_33
    const-string v2, "region"

    const-string v6, "sdkEmptyRegionId"

    .line 116
    invoke-virtual {p0, v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v2, "up"

    .line 117
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_44

    return-object v0

    .line 122
    :cond_44
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 123
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const-string v8, "domains"

    .line 124
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    if-eqz v8, :cond_78

    .line 125
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lez v10, :cond_78

    const/4 v10, 0x0

    .line 126
    :goto_5d
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v10, v11, :cond_78

    .line 127
    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_75

    .line 128
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_75

    .line 129
    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_75
    add-int/lit8 v10, v10, 0x1

    goto :goto_5d

    .line 135
    :cond_78
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const-string v10, "old"

    .line 136
    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_a6

    .line 137
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lez v10, :cond_a6

    .line 138
    :goto_8b
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v1, v10, :cond_a6

    .line 139
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_a3

    .line 140
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_a3

    .line 141
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a3
    add-int/lit8 v1, v1, 0x1

    goto :goto_8b

    .line 147
    :cond_a6
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_b3

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_b3

    return-object v0

    .line 151
    :cond_b3
    new-instance v0, Lcom/qiniu/android/common/ZoneInfo;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/qiniu/android/common/ZoneInfo;-><init>(IZZLjava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 152
    iput-object p0, v0, Lcom/qiniu/android/common/ZoneInfo;->detailInfo:Lorg/json/JSONObject;

    .line 154
    iput-object v9, v0, Lcom/qiniu/android/common/ZoneInfo;->allHosts:Ljava/util/List;

    return-object v0
.end method

.method public static buildInfo(Ljava/util/List;Ljava/lang/String;)Lcom/qiniu/android/common/ZoneInfo;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/qiniu/android/common/ZoneInfo;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 39
    invoke-static {p0, v0, p1}, Lcom/qiniu/android/common/ZoneInfo;->buildInfo(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Lcom/qiniu/android/common/ZoneInfo;

    move-result-object p0

    return-object p0
.end method

.method public static buildInfo(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Lcom/qiniu/android/common/ZoneInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/qiniu/android/common/ZoneInfo;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 49
    :cond_4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 50
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string p0, "domains"

    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_1f

    .line 52
    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0, p1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string p1, "old"

    invoke-virtual {v1, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :cond_1f
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    if-nez p2, :cond_28

    const-string p2, "sdkEmptyRegionId"

    .line 59
    :cond_28
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const v1, 0x5265c00

    .line 60
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ttl"

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "region"

    .line 61
    invoke-virtual {p1, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "up"

    .line 62
    invoke-virtual {p1, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 68
    :try_start_48
    invoke-static {p0}, Lcom/qiniu/android/common/ZoneInfo;->buildFromJson(Lorg/json/JSONObject;)Lcom/qiniu/android/common/ZoneInfo;

    move-result-object v0
    :try_end_4c
    .catch Lorg/json/JSONException; {:try_start_48 .. :try_end_4c} :catch_4c

    :catch_4c
    return-object v0
.end method


# virtual methods
.method public getRegionId()Ljava/lang/String;
    .registers 2

    .line 160
    iget-object v0, p0, Lcom/qiniu/android/common/ZoneInfo;->regionId:Ljava/lang/String;

    return-object v0
.end method

.method public isValid()Z
    .registers 7

    .line 172
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x3f50624dd2f1a9fcL  # 0.001

    mul-double v0, v0, v2

    double-to-int v0, v0

    .line 173
    iget-object v1, p0, Lcom/qiniu/android/common/ZoneInfo;->buildDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    long-to-double v4, v4

    mul-double v4, v4, v2

    double-to-int v1, v4

    .line 174
    iget v2, p0, Lcom/qiniu/android/common/ZoneInfo;->ttl:I

    sub-int/2addr v0, v1

    if-le v2, v0, :cond_23

    const/4 v0, 0x1

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    :goto_24
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 165
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 166
    iget v1, p0, Lcom/qiniu/android/common/ZoneInfo;->ttl:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ttl"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v1, p0, Lcom/qiniu/android/common/ZoneInfo;->allHosts:Ljava/util/List;

    const-string v2, "allHost"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
