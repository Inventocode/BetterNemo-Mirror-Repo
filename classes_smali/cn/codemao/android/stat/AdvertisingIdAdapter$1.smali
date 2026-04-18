.class final Lcn/codemao/android/stat/AdvertisingIdAdapter$1;
.super Ljava/lang/Object;
.source "AdvertisingIdAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/stat/AdvertisingIdAdapter;->setAdvertisingId(Landroid/content/Context;Lcn/codemao/android/stat/CountlyStore;Lcn/codemao/android/stat/DeviceId;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$deviceId:Lcn/codemao/android/stat/DeviceId;

.field final synthetic val$store:Lcn/codemao/android/stat/CountlyStore;


# direct methods
.method constructor <init>(Lcn/codemao/android/stat/DeviceId;Landroid/content/Context;Lcn/codemao/android/stat/CountlyStore;)V
    .registers 4

    .line 23
    iput-object p1, p0, Lcn/codemao/android/stat/AdvertisingIdAdapter$1;->val$deviceId:Lcn/codemao/android/stat/DeviceId;

    iput-object p2, p0, Lcn/codemao/android/stat/AdvertisingIdAdapter$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcn/codemao/android/stat/AdvertisingIdAdapter$1;->val$store:Lcn/codemao/android/stat/CountlyStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 27
    :try_start_0
    iget-object v0, p0, Lcn/codemao/android/stat/AdvertisingIdAdapter$1;->val$deviceId:Lcn/codemao/android/stat/DeviceId;

    sget-object v1, Lcn/codemao/android/stat/DeviceId$Type;->ADVERTISING_ID:Lcn/codemao/android/stat/DeviceId$Type;

    iget-object v2, p0, Lcn/codemao/android/stat/AdvertisingIdAdapter$1;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcn/codemao/android/stat/AdvertisingIdAdapter;->access$000(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/codemao/android/stat/DeviceId;->setId(Lcn/codemao/android/stat/DeviceId$Type;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_e

    goto :goto_75

    :catchall_e
    move-exception v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    const-string v2, "AdvertisingIdAdapter"

    if-eqz v1, :cond_3b

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "GooglePlayServicesAvailabilityException"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 32
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_75

    const-string v0, "Advertising ID cannot be determined yet"

    .line 33
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_75

    .line 35
    :cond_3b
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_70

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "GooglePlayServicesNotAvailableException"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_70

    .line 37
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_64

    const-string v0, "Advertising ID cannot be determined because Play Services are not available"

    .line 38
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_64
    iget-object v0, p0, Lcn/codemao/android/stat/AdvertisingIdAdapter$1;->val$deviceId:Lcn/codemao/android/stat/DeviceId;

    sget-object v1, Lcn/codemao/android/stat/DeviceId$Type;->OPEN_UDID:Lcn/codemao/android/stat/DeviceId$Type;

    iget-object v2, p0, Lcn/codemao/android/stat/AdvertisingIdAdapter$1;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcn/codemao/android/stat/AdvertisingIdAdapter$1;->val$store:Lcn/codemao/android/stat/CountlyStore;

    invoke-virtual {v0, v1, v2, v3}, Lcn/codemao/android/stat/DeviceId;->switchToIdType(Lcn/codemao/android/stat/DeviceId$Type;Landroid/content/Context;Lcn/codemao/android/stat/CountlyStore;)V

    goto :goto_75

    :cond_70
    const-string v1, "Couldn\'t get advertising ID"

    .line 43
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_75
    :goto_75
    return-void
.end method
