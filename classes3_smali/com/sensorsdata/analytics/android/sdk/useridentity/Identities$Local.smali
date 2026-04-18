.class public Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities$Local;
.super Ljava/lang/Object;
.source "Identities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Local"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIdentitiesFromLocal()Ljava/lang/String;
    .registers 1

    .line 466
    :try_start_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->getUserIdsPst()Lcom/sensorsdata/analytics/android/sdk/data/persistent/UserIdentityPersistent;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 468
    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->decodeIdentities(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    return-object v0

    :catch_15
    move-exception v0

    .line 471
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_19
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getLoginIdFromLocal()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    .line 436
    :try_start_2
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->getLoginIdPst()Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoginId;

    move-result-object v1

    if-nez v1, :cond_d

    goto :goto_14

    .line 437
    :cond_d
    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_13} :catch_15

    move-object v0, v1

    :goto_14
    return-object v0

    :catch_15
    move-exception v1

    .line 439
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    return-object v0
.end method

.method public static getLoginIdKeyFromLocal()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    .line 451
    :try_start_2
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->getLoginIdKeyPst()Lcom/sensorsdata/analytics/android/sdk/data/persistent/LoginIdKeyPersistent;

    move-result-object v1

    if-nez v1, :cond_d

    goto :goto_14

    .line 452
    :cond_d
    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_13} :catch_15

    move-object v0, v1

    :goto_14
    return-object v0

    :catch_15
    move-exception v1

    .line 454
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    return-object v0
.end method
