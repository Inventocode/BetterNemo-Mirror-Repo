.class public final Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;
.super Ljava/lang/Object;
.source "UserIdentityAPI.java"

# interfaces
.implements Lcom/sensorsdata/analytics/android/sdk/useridentity/IUserIdentityAPI;


# static fields
.field private static final TAG:Ljava/lang/String; = "SA.UserIdentityAPI"


# instance fields
.field private final mAnonymousId:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentDistinctId;

.field private mH5UserIdentityStrategy:Lcom/sensorsdata/analytics/android/sdk/useridentity/h5identity/H5UserIdentityStrategy;

.field private final mIdentitiesInstance:Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;

.field private mLoginIdValue:Ljava/lang/String;

.field private final mSAContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;


# direct methods
.method public constructor <init>(Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;)V
    .registers 4

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 44
    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;->mLoginIdValue:Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;->mSAContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    .line 50
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->getAnonymousIdPst()Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentDistinctId;

    move-result-object v0

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;->mAnonymousId:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentDistinctId;

    .line 51
    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;

    invoke-direct {v1}, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;-><init>()V

    iput-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;->mIdentitiesInstance:Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;

    .line 53
    :try_start_1a
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->getIdentifier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, p1, v0}, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->init(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->getJointLoginID()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;->mLoginIdValue:Ljava/lang/String;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_31} :catch_32

    goto :goto_36

    :catch_32
    move-exception p1

    .line 56
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_36
    return-void
.end method


# virtual methods
.method public bind(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 269
    invoke-virtual {p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;->bindBack(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public bindBack(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 275
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;->mIdentitiesInstance:Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;

    invoke-virtual {v0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->update(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    :catch_7
    move-exception p1

    .line 277
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    const/4 p1, 0x0

    return p1
.end method

.method public getAnonymousId()Ljava/lang/String;
    .registers 3

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;->mAnonymousId:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentDistinctId;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_10

    .line 78
    :try_start_3
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;->mAnonymousId:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentDistinctId;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_d
    move-exception v1

    .line 79
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    :try_start_f
    throw v1
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_10} :catch_10

    :catch_10
    move-exception v0

    .line 81
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDistinctId()Ljava/lang/String;
    .registers 3

    .line 63
    :try_start_0
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;->getLoginId()Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    return-object v0

    .line 67
    :cond_b
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;->getAnonymousId()Ljava/lang/String;

    move-result-object v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    return-object v0

    :catch_10
    move-exception v0

    .line 69
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    const-string v0, ""

    return-object v0
.end method

.method public getIdentities()Lorg/json/JSONObject;
    .registers 3

    .line 345
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;->mIdentitiesInstance:Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;

    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities$State;->DEFAULT:Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities$State;

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->getIdentities(Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities$State;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getIdentities(Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;)Lorg/json/JSONObject;
    .registers 3

    .line 334
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->TRACK_SIGNUP:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    if-ne v0, p1, :cond_d

    .line 335
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;->mIdentitiesInstance:Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;

    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities$State;->LOGIN_KEY:Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities$State;

    invoke-virtual {p1, v0}, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->getIdentities(Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities$State;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    .line 336
    :cond_d
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->TRACK_ID_UNBIND:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    if-ne v0, p1, :cond_1a

    .line 337
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;->mIdentitiesInstance:Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;

    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities$State;->REMOVE_KEYID:Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities$State;

    invoke-virtual {p1, v0}, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->getIdentities(Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities$State;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    .line 339
    :cond_1a
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;->mIdentitiesInstance:Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;

    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities$State;->DEFAULT:Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities$State;

    invoke-virtual {p1, v0}, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->getIdentities(Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities$State;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public getIdentitiesInstance()Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;
    .registers 2

    .line 349
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;->mIdentitiesInstance:Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;

    return-object v0
.end method

.method public getLoginId()Ljava/lang/String;
    .registers 5

    const-string v0, ""

    .line 137
    :try_start_2
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/AppInfoUtils;->isTaskExecuteThread()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 138
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;->mIdentitiesInstance:Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->getJointLoginID()Ljava/lang/String;

    move-result-object v1

    .line 139
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 140
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;->mIdentitiesInstance:Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;

    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->getLoginIDKey()Ljava/lang/String;

    move-result-object v2

    .line 141
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_22

    const-string v2, "$identity_login_id"

    .line 142
    :cond_22
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;->mIdentitiesInstance:Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;

    sget-object v3, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities$State;->LOGIN_KEY:Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities$State;

    invoke-virtual {v1, v3}, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->getIdentities(Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities$State;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_2d

    goto :goto_31

    .line 143
    :cond_2d
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_31
    move-object v1, v0

    :cond_32
    return-object v1

    .line 147
    :cond_33
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;->mLoginIdValue:Ljava/lang/String;

    if-nez v1, :cond_39

    .line 148
    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;->mLoginIdValue:Ljava/lang/String;

    .line 150
    :cond_39
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;->mLoginIdValue:Ljava/lang/String;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3b} :catch_3c

    return-object v0

    :catch_3c
    move-exception v1

    .line 153
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    return-object v0
.end method

.method public identify(Ljava/lang/String;)V
    .registers 5

    :try_start_0
    const-string v0, "SA.UserIdentityAPI"

    const-string v1, "identify is called"

    .line 161
    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;->mAnonymousId:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentDistinctId;

    monitor-enter v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_55

    .line 163
    :try_start_a
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;->mAnonymousId:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentDistinctId;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_50

    .line 164
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;->mAnonymousId:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentDistinctId;

    invoke-virtual {v1, p1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->commit(Ljava/lang/Object;)V

    .line 165
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;->mIdentitiesInstance:Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;

    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities$SpecialID;->ANONYMOUS_ID:Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities$SpecialID;

    invoke-virtual {v1, v2, p1}, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->updateSpecialIDKeyAndValue(Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities$SpecialID;Ljava/lang/String;)V

    .line 166
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;->mSAContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getEventListenerList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_49

    .line 167
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;->mSAContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getEventListenerList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_34
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sensorsdata/analytics/android/sdk/listener/SAEventListener;
    :try_end_40
    .catchall {:try_start_a .. :try_end_40} :catchall_52

    .line 169
    :try_start_40
    invoke-interface {v2}, Lcom/sensorsdata/analytics/android/sdk/listener/SAEventListener;->identify()V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_43} :catch_44
    .catchall {:try_start_40 .. :try_end_43} :catchall_52

    goto :goto_34

    :catch_44
    move-exception v2

    .line 171
    :try_start_45
    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_34

    .line 175
    :cond_49
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/monitor/TrackMonitor;->getInstance()Lcom/sensorsdata/analytics/android/sdk/monitor/TrackMonitor;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sensorsdata/analytics/android/sdk/monitor/TrackMonitor;->callIdentify(Ljava/lang/String;)V

    .line 177
    :cond_50
    monitor-exit v0

    goto :goto_59

    :catchall_52
    move-exception p1

    monitor-exit v0
    :try_end_54
    .catchall {:try_start_45 .. :try_end_54} :catchall_52

    :try_start_54
    throw p1
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_55} :catch_55

    :catch_55
    move-exception p1

    .line 179
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_59
    return-void
.end method

.method public login(Ljava/lang/String;)V
    .registers 3

    const-string v0, "$identity_login_id"

    .line 185
    invoke-virtual {p0, v0, p1}, Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;->loginWithKeyBack(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public login(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 3

    const-string p2, "$identity_login_id"

    .line 190
    invoke-virtual {p0, p2, p1}, Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;->loginWithKeyBack(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public loginWithKey(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 195
    invoke-virtual {p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;->loginWithKeyBack(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public loginWithKey(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 4

    .line 200
    invoke-virtual {p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;->loginWithKeyBack(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public loginWithKeyBack(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;->mIdentitiesInstance:Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;

    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;->getAnonymousId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->updateLoginKeyAndID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_46

    .line 216
    iget-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;->mSAContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    invoke-virtual {p2}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getEventListenerList()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_33

    .line 217
    iget-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;->mSAContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    invoke-virtual {p2}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getEventListenerList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sensorsdata/analytics/android/sdk/listener/SAEventListener;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2a} :catch_41

    .line 219
    :try_start_2a
    invoke-interface {v0}, Lcom/sensorsdata/analytics/android/sdk/listener/SAEventListener;->login()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2d} :catch_2e

    goto :goto_1e

    :catch_2e
    move-exception v0

    .line 221
    :try_start_2f
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_1e

    .line 225
    :cond_33
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/monitor/TrackMonitor;->getInstance()Lcom/sensorsdata/analytics/android/sdk/monitor/TrackMonitor;

    move-result-object p2

    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;->mIdentitiesInstance:Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->getJointLoginID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/sensorsdata/analytics/android/sdk/monitor/TrackMonitor;->callLogin(Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_40} :catch_41

    goto :goto_46

    :catch_41
    move-exception p1

    .line 228
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    const/4 p1, 0x0

    :cond_46
    :goto_46
    return p1
.end method

.method public logout()V
    .registers 6

    const-string v0, "SA.UserIdentityAPI"

    .line 238
    :try_start_2
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/core/rpc/SensorsDataContentObserver$State;->LOGOUT:Lcom/sensorsdata/analytics/android/sdk/core/rpc/SensorsDataContentObserver$State;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sensorsdata/analytics/android/sdk/core/rpc/SensorsDataContentObserver$State;->isDid:Z

    .line 239
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/core/rpc/SensorsDataContentObserver$State;->LOGIN:Lcom/sensorsdata/analytics/android/sdk/core/rpc/SensorsDataContentObserver$State;

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/sensorsdata/analytics/android/sdk/core/rpc/SensorsDataContentObserver$State;->isDid:Z

    .line 240
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;->mIdentitiesInstance:Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;

    sget-object v3, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities$State;->DEFAULT:Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities$State;

    invoke-virtual {v1, v3}, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->getIdentities(Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities$State;)Lorg/json/JSONObject;

    move-result-object v1

    .line 241
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;->mIdentitiesInstance:Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;

    invoke-virtual {v3}, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->getLoginId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/2addr v3, v2

    if-nez v3, :cond_3a

    if-eqz v1, :cond_39

    .line 242
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v4

    if-ne v4, v2, :cond_3a

    const-string v2, "$identity_android_id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_39

    const-string v2, "$identity_android_uuid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3a

    :cond_39
    return-void

    :cond_3a
    const-string v1, "logout is called"

    .line 245
    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;->mIdentitiesInstance:Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->removeLoginKeyAndID()V

    if-eqz v3, :cond_79

    .line 250
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;->mSAContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getEventListenerList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6d

    .line 251
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;->mSAContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getEventListenerList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_58
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sensorsdata/analytics/android/sdk/listener/SAEventListener;
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_64} :catch_75

    .line 253
    :try_start_64
    invoke-interface {v2}, Lcom/sensorsdata/analytics/android/sdk/listener/SAEventListener;->logout()V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_67} :catch_68

    goto :goto_58

    :catch_68
    move-exception v2

    .line 255
    :try_start_69
    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_58

    .line 259
    :cond_6d
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/monitor/TrackMonitor;->getInstance()Lcom/sensorsdata/analytics/android/sdk/monitor/TrackMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/monitor/TrackMonitor;->callLogout()V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_74} :catch_75

    goto :goto_79

    :catch_75
    move-exception v1

    .line 262
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_79
    :goto_79
    const-string v1, "Clean loginId"

    .line 264
    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public mergeH5Identities(Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;Lorg/json/JSONObject;)Z
    .registers 4

    .line 360
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;->mH5UserIdentityStrategy:Lcom/sensorsdata/analytics/android/sdk/useridentity/h5identity/H5UserIdentityStrategy;

    if-nez v0, :cond_b

    .line 361
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/useridentity/h5identity/H5UserIdentityStrategy;

    invoke-direct {v0, p0}, Lcom/sensorsdata/analytics/android/sdk/useridentity/h5identity/H5UserIdentityStrategy;-><init>(Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;)V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;->mH5UserIdentityStrategy:Lcom/sensorsdata/analytics/android/sdk/useridentity/h5identity/H5UserIdentityStrategy;

    .line 363
    :cond_b
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;->mH5UserIdentityStrategy:Lcom/sensorsdata/analytics/android/sdk/useridentity/h5identity/H5UserIdentityStrategy;

    invoke-virtual {v0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/useridentity/h5identity/H5UserIdentityStrategy;->processH5UserIdentity(Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;Lorg/json/JSONObject;)Z

    move-result p1

    return p1
.end method

.method public resetAnonymousId()V
    .registers 6

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;->mAnonymousId:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentDistinctId;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_8f

    :try_start_3
    const-string v1, "SA.UserIdentityAPI"

    const-string v2, "resetAnonymousId is called"

    .line 90
    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;->mSAContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->getIdentifier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 92
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;->mAnonymousId:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentDistinctId;

    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    const-string v1, "SA.UserIdentityAPI"

    const-string v2, "DistinctId not change"

    .line 93
    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    monitor-exit v0

    return-void

    .line 97
    :cond_29
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->isValidAndroidId(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30

    goto :goto_38

    .line 100
    :cond_30
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 102
    :goto_38
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;->mAnonymousId:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentDistinctId;

    invoke-virtual {v2, v1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->commit(Ljava/lang/Object;)V

    .line 103
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;->mIdentitiesInstance:Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;

    sget-object v3, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities$State;->DEFAULT:Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities$State;

    invoke-virtual {v2, v3}, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->getIdentities(Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities$State;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "$identity_anonymous_id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 104
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;->mIdentitiesInstance:Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;

    sget-object v3, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities$SpecialID;->ANONYMOUS_ID:Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities$SpecialID;

    iget-object v4, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;->mAnonymousId:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentDistinctId;

    invoke-virtual {v4}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->updateSpecialIDKeyAndValue(Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities$SpecialID;Ljava/lang/String;)V

    .line 107
    :cond_5c
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;->mSAContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getEventListenerList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_83

    .line 108
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;->mSAContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getEventListenerList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_83

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sensorsdata/analytics/android/sdk/listener/SAEventListener;
    :try_end_7a
    .catchall {:try_start_3 .. :try_end_7a} :catchall_8c

    .line 110
    :try_start_7a
    invoke-interface {v3}, Lcom/sensorsdata/analytics/android/sdk/listener/SAEventListener;->resetAnonymousId()V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_7d} :catch_7e
    .catchall {:try_start_7a .. :try_end_7d} :catchall_8c

    goto :goto_6e

    :catch_7e
    move-exception v3

    .line 112
    :try_start_7f
    invoke-static {v3}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_6e

    .line 116
    :cond_83
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/monitor/TrackMonitor;->getInstance()Lcom/sensorsdata/analytics/android/sdk/monitor/TrackMonitor;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sensorsdata/analytics/android/sdk/monitor/TrackMonitor;->callResetAnonymousId(Ljava/lang/String;)V

    .line 117
    monitor-exit v0

    goto :goto_93

    :catchall_8c
    move-exception v1

    monitor-exit v0
    :try_end_8e
    .catchall {:try_start_7f .. :try_end_8e} :catchall_8c

    :try_start_8e
    throw v1
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_8f} :catch_8f

    :catch_8f
    move-exception v0

    .line 119
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_93
    return-void
.end method

.method public resetAnonymousIdentity(Ljava/lang/String;)V
    .registers 4

    .line 291
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;->mLoginIdValue:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string p1, "SA.UserIdentityAPI"

    const-string v0, "resetAnonymousIdentity 需退出登录后调用"

    .line 292
    invoke-static {p1, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 295
    :cond_10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 296
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    .line 298
    :cond_1e
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;->mAnonymousId:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentDistinctId;

    invoke-virtual {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->commit(Ljava/lang/Object;)V

    .line 299
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;->mIdentitiesInstance:Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;

    invoke-virtual {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->updateIDKeyAndValue(Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;->mSAContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getEventListenerList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4f

    .line 302
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;->mSAContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getEventListenerList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sensorsdata/analytics/android/sdk/listener/SAEventListener;
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_46} :catch_57

    .line 304
    :try_start_46
    invoke-interface {v1}, Lcom/sensorsdata/analytics/android/sdk/listener/SAEventListener;->resetAnonymousId()V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_49} :catch_4a

    goto :goto_3a

    :catch_4a
    move-exception v1

    .line 306
    :try_start_4b
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_3a

    .line 310
    :cond_4f
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/monitor/TrackMonitor;->getInstance()Lcom/sensorsdata/analytics/android/sdk/monitor/TrackMonitor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/monitor/TrackMonitor;->callResetAnonymousId(Ljava/lang/String;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_56} :catch_57

    goto :goto_5b

    :catch_57
    move-exception p1

    .line 312
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_5b
    return-void
.end method

.method public trackH5Notify(Lorg/json/JSONObject;)V
    .registers 4

    .line 368
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;->mSAContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getEventListenerList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 369
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;->mSAContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getEventListenerList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sensorsdata/analytics/android/sdk/listener/SAEventListener;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_27

    .line 371
    :try_start_1e
    invoke-interface {v1, p1}, Lcom/sensorsdata/analytics/android/sdk/listener/SAEventListener;->trackEvent(Lorg/json/JSONObject;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_21} :catch_22

    goto :goto_12

    :catch_22
    move-exception v1

    .line 373
    :try_start_23
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_26} :catch_27

    goto :goto_12

    :catch_27
    move-exception v0

    .line 378
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 380
    :cond_2b
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/monitor/TrackMonitor;->getInstance()Lcom/sensorsdata/analytics/android/sdk/monitor/TrackMonitor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/monitor/TrackMonitor;->callTrack(Lorg/json/JSONObject;)V

    return-void
.end method

.method public unbind(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 285
    invoke-virtual {p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;->unbindBack(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public unbindBack(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 319
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;->mIdentitiesInstance:Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;

    invoke-virtual {v0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->remove(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    :catch_7
    move-exception p1

    .line 321
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    const/4 p1, 0x0

    return p1
.end method

.method public updateLoginId(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 130
    invoke-static {p1, p2}, Lcom/sensorsdata/analytics/android/sdk/useridentity/LoginIDAndKey;->jointLoginID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;->mLoginIdValue:Ljava/lang/String;

    return-void
.end method
