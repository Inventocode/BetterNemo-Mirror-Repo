.class final Lcn/codemao/android/stat/AdvertisingIdAdapter$2;
.super Ljava/lang/Object;
.source "AdvertisingIdAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/stat/AdvertisingIdAdapter;->cacheAdvertisingID(Landroid/content/Context;Lcn/codemao/android/stat/CountlyStore;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$store:Lcn/codemao/android/stat/CountlyStore;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcn/codemao/android/stat/CountlyStore;)V
    .registers 3

    .line 88
    iput-object p1, p0, Lcn/codemao/android/stat/AdvertisingIdAdapter$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcn/codemao/android/stat/AdvertisingIdAdapter$2;->val$store:Lcn/codemao/android/stat/CountlyStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 92
    :try_start_0
    iget-object v0, p0, Lcn/codemao/android/stat/AdvertisingIdAdapter$2;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcn/codemao/android/stat/AdvertisingIdAdapter;->access$100(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 93
    iget-object v0, p0, Lcn/codemao/android/stat/AdvertisingIdAdapter$2;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcn/codemao/android/stat/AdvertisingIdAdapter;->access$000(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcn/codemao/android/stat/AdvertisingIdAdapter$2;->val$store:Lcn/codemao/android/stat/CountlyStore;

    invoke-virtual {v1, v0}, Lcn/codemao/android/stat/CountlyStore;->setCachedAdvertisingId(Ljava/lang/String;)V

    goto/16 :goto_b4

    .line 96
    :cond_15
    iget-object v0, p0, Lcn/codemao/android/stat/AdvertisingIdAdapter$2;->val$store:Lcn/codemao/android/stat/CountlyStore;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcn/codemao/android/stat/CountlyStore;->setCachedAdvertisingId(Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_1e

    goto/16 :goto_b4

    :catchall_1e
    move-exception v0

    .line 99
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    const-string v2, "AdvertisingIdAdapter"

    if-eqz v1, :cond_4b

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "GooglePlayServicesAvailabilityException"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 100
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_b4

    const-string v0, "Advertising ID cannot be determined yet, while caching"

    .line 101
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b4

    .line 103
    :cond_4b
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_75

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "GooglePlayServicesNotAvailableException"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 104
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_b4

    const-string v0, "Advertising ID cannot be determined because Play Services are not available, while caching"

    .line 105
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b4

    .line 107
    :cond_75
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_af

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "java.lang.ClassNotFoundException"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_af

    .line 108
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_af

    .line 109
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_b4

    const-string v0, "Play Services are not available, while caching advertising id"

    .line 110
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b4

    :cond_af
    const-string v1, "Couldn\'t get advertising ID, while caching"

    .line 114
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_b4
    :goto_b4
    return-void
.end method
