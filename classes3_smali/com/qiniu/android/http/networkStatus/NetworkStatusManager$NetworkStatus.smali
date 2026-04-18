.class public Lcom/qiniu/android/http/networkStatus/NetworkStatusManager$NetworkStatus;
.super Ljava/lang/Object;
.source "NetworkStatusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkStatus"
.end annotation


# instance fields
.field private speed:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300(Lcom/qiniu/android/http/networkStatus/NetworkStatusManager$NetworkStatus;)Lorg/json/JSONObject;
    .registers 1

    .line 159
    invoke-direct {p0}, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager$NetworkStatus;->toJson()Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lorg/json/JSONObject;)Lcom/qiniu/android/http/networkStatus/NetworkStatusManager$NetworkStatus;
    .registers 1

    .line 159
    invoke-static {p0}, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager$NetworkStatus;->statusFromJson(Lorg/json/JSONObject;)Lcom/qiniu/android/http/networkStatus/NetworkStatusManager$NetworkStatus;

    move-result-object p0

    return-object p0
.end method

.method private static statusFromJson(Lorg/json/JSONObject;)Lcom/qiniu/android/http/networkStatus/NetworkStatusManager$NetworkStatus;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 185
    :cond_4
    new-instance v0, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager$NetworkStatus;

    invoke-direct {v0}, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager$NetworkStatus;-><init>()V

    :try_start_9
    const-string v1, "speed"

    .line 187
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager$NetworkStatus;->speed:I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_11} :catch_11

    :catch_11
    return-object v0
.end method

.method private toJson()Lorg/json/JSONObject;
    .registers 4

    .line 172
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "speed"

    .line 174
    iget v2, p0, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager$NetworkStatus;->speed:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_c} :catch_c

    :catch_c
    return-object v0
.end method


# virtual methods
.method public getSpeed()I
    .registers 2

    .line 164
    iget v0, p0, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager$NetworkStatus;->speed:I

    return v0
.end method

.method public setSpeed(I)V
    .registers 2

    .line 168
    iput p1, p0, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager$NetworkStatus;->speed:I

    return-void
.end method
