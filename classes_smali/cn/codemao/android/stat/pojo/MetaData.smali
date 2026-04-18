.class public Lcn/codemao/android/stat/pojo/MetaData;
.super Ljava/lang/Object;
.source "MetaData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final DEVICE_TYPE:I = 0x2


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public d:I

.field public p:Ljava/lang/String;

.field public s:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/stat/pojo/MetaData;->a:Ljava/util/Map;

    const/4 v0, 0x2

    .line 21
    iput v0, p0, Lcn/codemao/android/stat/pojo/MetaData;->d:I

    .line 22
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->getAppKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/codemao/android/stat/pojo/MetaData;->p:Ljava/lang/String;

    return-void
.end method

.method static fromJSON(Ljava/lang/String;)Lcn/codemao/android/stat/pojo/MetaData;
    .registers 3

    .line 35
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 36
    const-class v1, Lcn/codemao/android/stat/pojo/MetaData;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/codemao/android/stat/pojo/MetaData;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_17

    .line 43
    instance-of v1, p1, Lcn/codemao/android/stat/pojo/MetaData;

    if-nez v1, :cond_8

    goto :goto_17

    .line 47
    :cond_8
    check-cast p1, Lcn/codemao/android/stat/pojo/MetaData;

    .line 49
    iget-object v1, p0, Lcn/codemao/android/stat/pojo/MetaData;->p:Ljava/lang/String;

    iget-object v2, p1, Lcn/codemao/android/stat/pojo/MetaData;->p:Ljava/lang/String;

    if-ne v1, v2, :cond_17

    iget v1, p0, Lcn/codemao/android/stat/pojo/MetaData;->d:I

    iget p1, p1, Lcn/codemao/android/stat/pojo/MetaData;->d:I

    if-ne v1, p1, :cond_17

    const/4 v0, 0x1

    :cond_17
    :goto_17
    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 54
    iget v0, p0, Lcn/codemao/android/stat/pojo/MetaData;->d:I

    iget-object v1, p0, Lcn/codemao/android/stat/pojo/MetaData;->p:Ljava/lang/String;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x1

    :goto_c
    xor-int/2addr v0, v1

    return v0
.end method
