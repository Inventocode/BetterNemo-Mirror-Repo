.class public Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;
.super Ljava/lang/Object;
.source "Identities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities$Local;,
        Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities$SpecialID;,
        Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities$State;
    }
.end annotation


# static fields
.field public static final ANDROID_ID:Ljava/lang/String; = "$identity_android_id"

.field public static final ANDROID_UUID:Ljava/lang/String; = "$identity_android_uuid"

.field public static final ANONYMOUS_ID:Ljava/lang/String; = "$identity_anonymous_id"

.field public static final COOKIE_ID:Ljava/lang/String; = "$identity_cookie_id"

.field public static final IDENTITIES_KEY:Ljava/lang/String; = "identities"

.field private static final TAG:Ljava/lang/String; = "SA.Identities"


# instance fields
.field private mAndroidId:Ljava/lang/String;

.field private mAnonymousId:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentDistinctId;

.field private mIdentities:Lorg/json/JSONObject;

.field private final mLoginIDAndKey:Lcom/sensorsdata/analytics/android/sdk/useridentity/LoginIDAndKey;

.field private mLoginIdentities:Lorg/json/JSONObject;

.field private mUnbindIdentities:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/useridentity/LoginIDAndKey;

    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/sdk/useridentity/LoginIDAndKey;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->mLoginIDAndKey:Lcom/sensorsdata/analytics/android/sdk/useridentity/LoginIDAndKey;

    return-void
.end method

.method private clearIdentities(Ljava/util/List;Lorg/json/JSONObject;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_1a

    .line 144
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p2

    .line 145
    :cond_6
    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 146
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 147
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    :cond_1a
    return-void
.end method

.method private createIdentities(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "$identity_anonymous_id"

    if-eqz p1, :cond_15

    .line 100
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-nez v1, :cond_b

    goto :goto_15

    .line 113
    :cond_b
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 114
    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_34

    .line 101
    :cond_15
    :goto_15
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    if-eqz p2, :cond_1f

    .line 104
    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    :cond_1f
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->mAndroidId:Ljava/lang/String;

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->isValidAndroidId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 108
    iget-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->mAndroidId:Ljava/lang/String;

    const-string v0, "$identity_android_id"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_34

    :cond_2f
    const-string v0, "$identity_android_uuid"

    .line 110
    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_34
    :goto_34
    return-object p1
.end method

.method private getCacheIdentities()Lorg/json/JSONObject;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 390
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->getIdentities()Ljava/lang/String;

    move-result-object v0

    .line 391
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 392
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method private getDefaultIdentities()Lorg/json/JSONObject;
    .registers 2

    .line 351
    :try_start_0
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->getCacheIdentities()Lorg/json/JSONObject;

    move-result-object v0
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_4} :catch_5

    goto :goto_a

    :catch_5
    move-exception v0

    .line 353
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method private getInitIdentities()Lorg/json/JSONObject;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 382
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities$Local;->getIdentitiesFromLocal()Ljava/lang/String;

    move-result-object v0

    .line 383
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 384
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_10
    const/4 v0, 0x0

    return-object v0
.end method

.method private initLoginIDAndKeyIdentities(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 79
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "$identity_android_uuid"

    const-string v2, "$identity_android_id"

    if-eqz v0, :cond_25

    .line 80
    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_80

    const-string p1, "$identity_anonymous_id"

    .line 81
    filled-new-array {v2, v1, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->clearIdentities(Ljava/util/List;Lorg/json/JSONObject;)V

    .line 82
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->mLoginIDAndKey:Lcom/sensorsdata/analytics/android/sdk/useridentity/LoginIDAndKey;

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/sensorsdata/analytics/android/sdk/useridentity/LoginIDAndKey;->setLoginIDKey(Ljava/lang/String;)V

    goto :goto_80

    .line 85
    :cond_25
    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-eqz p1, :cond_60

    .line 86
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->mLoginIDAndKey:Lcom/sensorsdata/analytics/android/sdk/useridentity/LoginIDAndKey;

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/useridentity/LoginIDAndKey;->getLoginIDKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 87
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_80

    .line 88
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities$Local;->getLoginIdKeyFromLocal()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities$Local;->getLoginIdFromLocal()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-array p1, v5, [Ljava/lang/String;

    aput-object v2, p1, v4

    aput-object v1, p1, v3

    .line 89
    iget-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->mLoginIDAndKey:Lcom/sensorsdata/analytics/android/sdk/useridentity/LoginIDAndKey;

    invoke-virtual {p2}, Lcom/sensorsdata/analytics/android/sdk/useridentity/LoginIDAndKey;->getLoginIDKey()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->clearIdentities(Ljava/util/List;Lorg/json/JSONObject;)V

    goto :goto_80

    .line 92
    :cond_60
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities$Local;->getLoginIdKeyFromLocal()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities$Local;->getLoginIdFromLocal()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-array p1, v5, [Ljava/lang/String;

    aput-object v2, p1, v4

    aput-object v1, p1, v3

    .line 93
    iget-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->mLoginIDAndKey:Lcom/sensorsdata/analytics/android/sdk/useridentity/LoginIDAndKey;

    invoke-virtual {p2}, Lcom/sensorsdata/analytics/android/sdk/useridentity/LoginIDAndKey;->getLoginIDKey()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->clearIdentities(Ljava/util/List;Lorg/json/JSONObject;)V

    :cond_80
    :goto_80
    return-void
.end method

.method private isInValid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 319
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->mLoginIDAndKey:Lcom/sensorsdata/analytics/android/sdk/useridentity/LoginIDAndKey;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sensorsdata/analytics/android/sdk/useridentity/LoginIDAndKey;->setLoginKeyAndID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private isInvalidBusinessID(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 7

    const-string v0, "SA.Identities"

    const/4 v1, 0x1

    if-eqz p3, :cond_26

    .line 284
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->isRemoveKeyValid(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_11

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/util/SADataHelper;->assertPropertyKey(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_33

    .line 286
    :cond_11
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unbind key is invalid, key = "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_49

    .line 289
    :cond_26
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->isKeyValid(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_35

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/util/SADataHelper;->assertPropertyKey(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_33

    goto :goto_35

    :cond_33
    const/4 p1, 0x0

    goto :goto_4a

    .line 291
    :cond_35
    :goto_35
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bind key is invalid, key = "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_49
    const/4 p1, 0x1

    .line 296
    :goto_4a
    :try_start_4a
    invoke-static {p2}, Lcom/sensorsdata/analytics/android/sdk/util/SADataHelper;->assertDistinctId(Ljava/lang/String;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4d} :catch_4f

    move v1, p1

    goto :goto_53

    :catch_4f
    move-exception p1

    .line 299
    invoke-static {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_53
    return v1
.end method

.method private isKeyValid(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "$identity_anonymous_id"

    .line 311
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    const-string v0, "$identity_android_uuid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    const-string v0, "$identity_android_id"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->mLoginIDAndKey:Lcom/sensorsdata/analytics/android/sdk/useridentity/LoginIDAndKey;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/useridentity/LoginIDAndKey;->getLoginIDKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    const-string v0, "$identity_login_id"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2e

    const/4 p1, 0x1

    goto :goto_2f

    :cond_2e
    const/4 p1, 0x0

    :goto_2f
    return p1
.end method

.method private isRemoveKeyValid(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "$identity_anonymous_id"

    .line 315
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "$identity_login_id"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method private isValidIdentities(Lorg/json/JSONObject;)Z
    .registers 3

    if-eqz p1, :cond_14

    const-string v0, "$identity_android_id"

    .line 345
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "$identity_android_uuid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_14

    :cond_12
    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    return p1
.end method

.method private resetIdentities(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p1, :cond_7

    .line 123
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :cond_7
    const-string v0, "$identity_android_uuid"

    .line 125
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2f

    const-string v1, "$identity_android_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    goto :goto_2f

    .line 128
    :cond_18
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->mAndroidId:Ljava/lang/String;

    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->isValidAndroidId(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 129
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->mAndroidId:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2f

    .line 131
    :cond_26
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->mAnonymousId:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentDistinctId;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2f
    :goto_2f
    return-object p1
.end method

.method private saveIdentities()V
    .registers 3

    .line 261
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->mIdentities:Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->isValidIdentities(Lorg/json/JSONObject;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 263
    :try_start_8
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->mIdentities:Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->resetIdentities(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->mIdentities:Lorg/json/JSONObject;
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_10} :catch_11

    goto :goto_18

    :catch_11
    const-string v0, "SA.Identities"

    const-string v1, "reset identities failed!"

    .line 265
    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    :cond_18
    :goto_18
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->mIdentities:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->commitIdentities(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getIdentities(Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities$State;)Lorg/json/JSONObject;
    .registers 3

    .line 324
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities$1;->$SwitchMap$com$sensorsdata$analytics$android$sdk$useridentity$Identities$State:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2c

    const/4 v0, 0x2

    if-eq p1, v0, :cond_25

    const/4 v0, 0x3

    if-eq p1, v0, :cond_12

    goto :goto_2a

    .line 334
    :cond_12
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->mIdentities:Lorg/json/JSONObject;

    if-eqz p1, :cond_20

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result p1

    if-nez p1, :cond_1d

    goto :goto_20

    .line 337
    :cond_1d
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->mIdentities:Lorg/json/JSONObject;

    goto :goto_2e

    .line 335
    :cond_20
    :goto_20
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->getDefaultIdentities()Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_2e

    .line 329
    :cond_25
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->mUnbindIdentities:Lorg/json/JSONObject;

    if-eqz p1, :cond_2a

    goto :goto_2e

    :cond_2a
    :goto_2a
    const/4 p1, 0x0

    goto :goto_2e

    .line 326
    :cond_2c
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->mLoginIdentities:Lorg/json/JSONObject;

    :goto_2e
    return-object p1
.end method

.method public getJointLoginID()Ljava/lang/String;
    .registers 2

    .line 403
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->mLoginIDAndKey:Lcom/sensorsdata/analytics/android/sdk/useridentity/LoginIDAndKey;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/useridentity/LoginIDAndKey;->getJointLoginID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoginIDKey()Ljava/lang/String;
    .registers 2

    .line 421
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->mLoginIDAndKey:Lcom/sensorsdata/analytics/android/sdk/useridentity/LoginIDAndKey;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/useridentity/LoginIDAndKey;->getLoginIDKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoginId()Ljava/lang/String;
    .registers 2

    .line 412
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->mLoginIDAndKey:Lcom/sensorsdata/analytics/android/sdk/useridentity/LoginIDAndKey;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/useridentity/LoginIDAndKey;->getLoginId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 62
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities$Local;->getLoginIdKeyFromLocal()Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities$Local;->getLoginIdFromLocal()Ljava/lang/String;

    move-result-object v1

    .line 64
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->mLoginIDAndKey:Lcom/sensorsdata/analytics/android/sdk/useridentity/LoginIDAndKey;

    invoke-virtual {v2, v0}, Lcom/sensorsdata/analytics/android/sdk/useridentity/LoginIDAndKey;->init(Ljava/lang/String;)V

    .line 65
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->mAndroidId:Ljava/lang/String;

    .line 66
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->getAnonymousIdPst()Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentDistinctId;

    move-result-object p1

    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->mAnonymousId:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentDistinctId;

    .line 68
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->getInitIdentities()Lorg/json/JSONObject;

    move-result-object p1

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->createIdentities(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 72
    invoke-direct {p0, v0, v1, p1}, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->initLoginIDAndKeyIdentities(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 74
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->mIdentities:Lorg/json/JSONObject;

    .line 75
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->saveIdentities()V

    return-void
.end method

.method public mergeIdentities(Lorg/json/JSONObject;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 370
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 372
    :cond_4
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 373
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 374
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->mIdentities:Lorg/json/JSONObject;

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 375
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->mIdentities:Lorg/json/JSONObject;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    .line 378
    :cond_22
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->saveIdentities()V

    return-void
.end method

.method public remove(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 202
    invoke-direct {p0, p1, p2, v0}, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->isInvalidBusinessID(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    return v2

    .line 206
    :cond_9
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->mUnbindIdentities:Lorg/json/JSONObject;

    .line 207
    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "$identity_android_id"

    .line 209
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    const-string v1, "$identity_android_uuid"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    :cond_23
    const/4 v2, 0x1

    :cond_24
    if-nez v2, :cond_3f

    .line 211
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->mIdentities:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3f

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->mIdentities:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 212
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->mIdentities:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 216
    :cond_3f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 217
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->getJointLoginID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_67

    .line 218
    iget-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->mIdentities:Lorg/json/JSONObject;

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 219
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->mLoginIDAndKey:Lcom/sensorsdata/analytics/android/sdk/useridentity/LoginIDAndKey;

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/useridentity/LoginIDAndKey;->removeLoginKeyAndID()V

    .line 222
    :cond_67
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->saveIdentities()V

    return v0
.end method

.method public removeLoginKeyAndID()V
    .registers 3

    .line 174
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->mLoginIdentities:Lorg/json/JSONObject;

    const-string v0, "$identity_android_id"

    const-string v1, "$identity_android_uuid"

    .line 175
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->mIdentities:Lorg/json/JSONObject;

    invoke-direct {p0, v0, v1}, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->clearIdentities(Ljava/util/List;Lorg/json/JSONObject;)V

    .line 177
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/core/rpc/SensorsDataContentObserver$State;->LOGOUT:Lcom/sensorsdata/analytics/android/sdk/core/rpc/SensorsDataContentObserver$State;

    iget-boolean v1, v0, Lcom/sensorsdata/analytics/android/sdk/core/rpc/SensorsDataContentObserver$State;->isObserverCalled:Z

    if-nez v1, :cond_23

    .line 179
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->mLoginIDAndKey:Lcom/sensorsdata/analytics/android/sdk/useridentity/LoginIDAndKey;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/useridentity/LoginIDAndKey;->removeLoginKeyAndID()V

    .line 183
    :cond_23
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->saveIdentities()V

    const/4 v1, 0x0

    .line 184
    iput-boolean v1, v0, Lcom/sensorsdata/analytics/android/sdk/core/rpc/SensorsDataContentObserver$State;->isObserverCalled:Z

    return-void
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 189
    invoke-direct {p0, p1, p2, v0}, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->isInvalidBusinessID(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_8

    return v0

    .line 194
    :cond_8
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->mIdentities:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 196
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->saveIdentities()V

    const/4 p1, 0x1

    return p1
.end method

.method public updateIDKeyAndValue(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 251
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->mIdentities:Lorg/json/JSONObject;

    const-string v1, "$identity_android_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 252
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->mIdentities:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1f

    .line 253
    :cond_10
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->mIdentities:Lorg/json/JSONObject;

    const-string v1, "$identity_android_uuid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 254
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->mIdentities:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 256
    :cond_1f
    :goto_1f
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->saveIdentities()V

    return-void
.end method

.method public updateIdentities()V
    .registers 2

    .line 363
    :try_start_0
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->getCacheIdentities()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->mIdentities:Lorg/json/JSONObject;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_b

    :catch_7
    move-exception v0

    .line 365
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_b
    return-void
.end method

.method public updateLoginKeyAndID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 155
    invoke-direct {p0, p1, p2, p3}, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->isInValid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_8

    return v0

    .line 160
    :cond_8
    iget-object p3, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->mIdentities:Lorg/json/JSONObject;

    invoke-virtual {p3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    new-instance p2, Lorg/json/JSONObject;

    iget-object p3, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->mIdentities:Lorg/json/JSONObject;

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->mLoginIdentities:Lorg/json/JSONObject;

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/String;

    const-string p3, "$identity_android_id"

    aput-object p3, p2, v0

    const-string p3, "$identity_android_uuid"

    const/4 v0, 0x1

    aput-object p3, p2, v0

    const/4 p3, 0x2

    aput-object p1, p2, p3

    .line 163
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->mIdentities:Lorg/json/JSONObject;

    invoke-direct {p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->clearIdentities(Ljava/util/List;Lorg/json/JSONObject;)V

    .line 165
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->saveIdentities()V

    return v0
.end method

.method public updateSpecialIDKeyAndValue(Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities$SpecialID;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 234
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities$1;->$SwitchMap$com$sensorsdata$analytics$android$sdk$useridentity$Identities$SpecialID:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_22

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1a

    const/4 v0, 0x3

    if-eq p1, v0, :cond_12

    goto :goto_29

    .line 242
    :cond_12
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->mIdentities:Lorg/json/JSONObject;

    const-string v0, "$identity_android_uuid"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_29

    .line 239
    :cond_1a
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->mIdentities:Lorg/json/JSONObject;

    const-string v0, "$identity_android_id"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_29

    .line 236
    :cond_22
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->mIdentities:Lorg/json/JSONObject;

    const-string v0, "$identity_anonymous_id"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 247
    :goto_29
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->saveIdentities()V

    return-void
.end method
