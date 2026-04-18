.class public Lcom/sensorsdata/analytics/android/sdk/core/business/SAPropertyManager;
.super Ljava/lang/Object;
.source "SAPropertyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sensorsdata/analytics/android/sdk/core/business/SAPropertyManager$Holder;
    }
.end annotation


# instance fields
.field private mLimitKeys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/SAPropertyManager;->mLimitKeys:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sensorsdata/analytics/android/sdk/core/business/SAPropertyManager$1;)V
    .registers 2

    .line 23
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/core/business/SAPropertyManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sensorsdata/analytics/android/sdk/core/business/SAPropertyManager;
    .registers 1

    .line 27
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/core/business/SAPropertyManager$Holder;->INSTANCE:Lcom/sensorsdata/analytics/android/sdk/core/business/SAPropertyManager;

    return-object v0
.end method


# virtual methods
.method public getLimitValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 49
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/SAPropertyManager;->mLimitKeys:Ljava/util/Map;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return-object p1

    .line 52
    :cond_6
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public isLimitKey(Ljava/lang/String;)Z
    .registers 3

    .line 45
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/SAPropertyManager;->mLimitKeys:Ljava/util/Map;

    if-eqz v0, :cond_c

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method public registerLimitKeys(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_7

    .line 40
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/SAPropertyManager;->mLimitKeys:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_7
    return-void
.end method
