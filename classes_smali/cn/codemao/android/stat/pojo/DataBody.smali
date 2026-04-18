.class public Lcn/codemao/android/stat/pojo/DataBody;
.super Ljava/lang/Object;
.source "DataBody.java"


# instance fields
.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/codemao/android/stat/pojo/EventInfo;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public m:Lcn/codemao/android/stat/pojo/MetaData;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/stat/CodeMaoStat;->getDeviceInfo()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 49
    iput-object v0, p0, Lcn/codemao/android/stat/pojo/DataBody;->e:Ljava/util/Map;

    goto :goto_17

    .line 50
    :cond_10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/stat/pojo/DataBody;->e:Ljava/util/Map;

    .line 51
    :goto_17
    new-instance v0, Lcn/codemao/android/stat/pojo/MetaData;

    invoke-direct {v0}, Lcn/codemao/android/stat/pojo/MetaData;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/stat/pojo/DataBody;->m:Lcn/codemao/android/stat/pojo/MetaData;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/stat/pojo/DataBody;->b:Ljava/util/List;

    return-void
.end method

.method static fromJSON(Ljava/lang/String;)Lcn/codemao/android/stat/pojo/DataBody;
    .registers 3

    .line 74
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 75
    const-class v1, Lcn/codemao/android/stat/pojo/DataBody;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/codemao/android/stat/pojo/DataBody;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_27

    .line 81
    instance-of v1, p1, Lcn/codemao/android/stat/pojo/DataBody;

    if-nez v1, :cond_8

    goto :goto_27

    .line 84
    :cond_8
    check-cast p1, Lcn/codemao/android/stat/pojo/DataBody;

    .line 85
    iget-object v1, p0, Lcn/codemao/android/stat/pojo/DataBody;->m:Lcn/codemao/android/stat/pojo/MetaData;

    iget-object v2, p1, Lcn/codemao/android/stat/pojo/DataBody;->m:Lcn/codemao/android/stat/pojo/MetaData;

    invoke-virtual {v1, v2}, Lcn/codemao/android/stat/pojo/MetaData;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcn/codemao/android/stat/pojo/DataBody;->b:Ljava/util/List;

    iget-object v2, p1, Lcn/codemao/android/stat/pojo/DataBody;->b:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, p1, Lcn/codemao/android/stat/pojo/DataBody;->e:Ljava/util/Map;

    invoke-virtual {p1, v1}, Lcn/codemao/android/stat/pojo/DataBody;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_27

    const/4 v0, 0x1

    :cond_27
    :goto_27
    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 90
    iget-object v0, p0, Lcn/codemao/android/stat/pojo/DataBody;->m:Lcn/codemao/android/stat/pojo/MetaData;

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcn/codemao/android/stat/pojo/MetaData;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    const/4 v0, 0x1

    :goto_b
    iget-object v2, p0, Lcn/codemao/android/stat/pojo/DataBody;->b:Ljava/util/List;

    if-eqz v2, :cond_14

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_15

    :cond_14
    const/4 v2, 0x1

    :goto_15
    xor-int/2addr v0, v2

    iget-object v2, p0, Lcn/codemao/android/stat/pojo/DataBody;->e:Ljava/util/Map;

    if-eqz v2, :cond_1e

    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v1

    :cond_1e
    xor-int/2addr v0, v1

    return v0
.end method

.method toJSON()Ljava/lang/String;
    .registers 2

    .line 61
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 62
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
