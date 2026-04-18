.class public Lcom/sensorsdata/analytics/android/sdk/SAAdvertisingConfig;
.super Ljava/lang/Object;
.source "SAAdvertisingConfig.java"


# instance fields
.field private enableRemarketing:Z

.field public eventNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public secreteKey:Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;

.field public serverUrl:Ljava/lang/String;

.field private wakeupUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/SAAdvertisingConfig;->enableRemarketing:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;",
            ")V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/SAAdvertisingConfig;->enableRemarketing:Z

    .line 38
    iput-object p3, p0, Lcom/sensorsdata/analytics/android/sdk/SAAdvertisingConfig;->secreteKey:Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;

    .line 39
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/SAAdvertisingConfig;->serverUrl:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/SAAdvertisingConfig;->eventNames:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public enableRemarketing()Lcom/sensorsdata/analytics/android/sdk/SAAdvertisingConfig;
    .registers 2

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/SAAdvertisingConfig;->enableRemarketing:Z

    return-object p0
.end method

.method public getWakeupUrl()Ljava/lang/String;
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SAAdvertisingConfig;->wakeupUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isEnableRemarketing()Z
    .registers 2

    .line 61
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/SAAdvertisingConfig;->enableRemarketing:Z

    return v0
.end method

.method public setWakeupUrl(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/SAAdvertisingConfig;
    .registers 2

    .line 56
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/SAAdvertisingConfig;->wakeupUrl:Ljava/lang/String;

    return-object p0
.end method
