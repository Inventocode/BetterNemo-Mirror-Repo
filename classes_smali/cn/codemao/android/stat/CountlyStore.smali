.class public Lcn/codemao/android/stat/CountlyStore;
.super Ljava/lang/Object;
.source "CountlyStore.java"


# static fields
.field private static final CACHED_ADVERTISING_ID:Ljava/lang/String; = "ADVERTISING_ID"

.field private static final CONNECTIONS_PREFERENCE:Ljava/lang/String; = "CONNECTIONS"

.field private static final CONSENT_GCM_PREFERENCES:Ljava/lang/String; = "ly.count.android.api.messaging.consent.gcm"

.field private static final DELIMITER:Ljava/lang/String; = ":::"

.field private static final EVENTS_PREFERENCE:Ljava/lang/String; = "EVENTS"

.field private static final LOCATION_CITY_PREFERENCE:Ljava/lang/String; = "LOCATION_CITY"

.field private static final LOCATION_COUNTRY_CODE_PREFERENCE:Ljava/lang/String; = "LOCATION_COUNTRY_CODE"

.field private static final LOCATION_DISABLED_PREFERENCE:Ljava/lang/String; = "LOCATION_DISABLED"

.field private static final LOCATION_IP_ADDRESS_PREFERENCE:Ljava/lang/String; = "LOCATION_IP_ADDRESS"

.field private static final LOCATION_PREFERENCE:Ljava/lang/String; = "LOCATION"

.field private static final MAX_EVENTS:I = 0x64

.field private static final MAX_REQUESTS:I = 0x3e8

.field private static final PREFERENCES:Ljava/lang/String; = "CODEMAO_STORE"

.field private static final PREFERENCES_GCM:Ljava/lang/String; = "ly.count.android.api.messaging"

.field private static final STAR_RATING_PREFERENCE:Ljava/lang/String; = "STAR_RATING"


# instance fields
.field private final preferencesGCM_:Landroid/content/SharedPreferences;

.field private final preferences_:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_17

    const-string v0, "CODEMAO_STORE"

    const/4 v1, 0x0

    .line 81
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcn/codemao/android/stat/CountlyStore;->preferences_:Landroid/content/SharedPreferences;

    const-string v0, "ly.count.android.api.messaging"

    .line 82
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcn/codemao/android/stat/CountlyStore;->preferencesGCM_:Landroid/content/SharedPreferences;

    return-void

    .line 79
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "must provide valid context"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 325
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 326
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    .line 327
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v3

    if-ge v2, v3, :cond_a

    .line 328
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 332
    :cond_25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static joinEvents(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcn/codemao/android/stat/pojo/EventInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 311
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 312
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/stat/pojo/EventInfo;

    .line 313
    invoke-virtual {v1}, Lcn/codemao/android/stat/pojo/EventInfo;->toJSON()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 315
    :cond_1d
    invoke-static {v0, p1}, Lcn/codemao/android/stat/CountlyStore;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public declared-synchronized addConnection(Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    if-eqz p1, :cond_3e

    .line 136
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3e

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcn/codemao/android/stat/CountlyStore;->connections()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 138
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x3e8

    if-ge v1, v2, :cond_3e

    .line 139
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    iget-object p1, p0, Lcn/codemao/android/stat/CountlyStore;->preferences_:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "CONNECTIONS"

    const-string v2, ":::"

    invoke-static {v0, v2}, Lcn/codemao/android/stat/CountlyStore;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 141
    invoke-static {}, Lcn/codemao/android/stat/CMSpUtils;->getInstance()Lcn/codemao/android/stat/CMSpUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/codemao/android/stat/CMSpUtils;->apply(Landroid/content/SharedPreferences$Editor;)V
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_3b

    goto :goto_3e

    :catchall_3b
    move-exception p1

    monitor-exit p0

    throw p1

    .line 144
    :cond_3e
    :goto_3e
    monitor-exit p0

    return-void
.end method

.method addEvent(Lcn/codemao/android/stat/pojo/EventInfo;)V
    .registers 5

    .line 168
    invoke-virtual {p0}, Lcn/codemao/android/stat/CountlyStore;->eventsList()Ljava/util/List;

    move-result-object v0

    .line 169
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x64

    if-ge v1, v2, :cond_28

    .line 170
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    iget-object p1, p0, Lcn/codemao/android/stat/CountlyStore;->preferences_:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, ":::"

    invoke-static {v0, v1}, Lcn/codemao/android/stat/CountlyStore;->joinEvents(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EVENTS"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 172
    invoke-static {}, Lcn/codemao/android/stat/CMSpUtils;->getInstance()Lcn/codemao/android/stat/CMSpUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/codemao/android/stat/CMSpUtils;->apply(Landroid/content/SharedPreferences$Editor;)V

    :cond_28
    return-void
.end method

.method public declared-synchronized addEvent(Ljava/lang/String;Ljava/util/Map;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    monitor-enter p0

    .line 280
    :try_start_1
    new-instance p3, Lcn/codemao/android/stat/pojo/EventInfo;

    invoke-direct {p3, p1, p2}, Lcn/codemao/android/stat/pojo/EventInfo;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 281
    invoke-virtual {p0, p3}, Lcn/codemao/android/stat/CountlyStore;->addEvent(Lcn/codemao/android/stat/pojo/EventInfo;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 282
    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized clear()V
    .registers 3

    monitor-enter p0

    .line 362
    :try_start_1
    iget-object v0, p0, Lcn/codemao/android/stat/CountlyStore;->preferences_:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "EVENTS"

    .line 363
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "CONNECTIONS"

    .line 364
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 365
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 366
    invoke-static {}, Lcn/codemao/android/stat/CMSpUtils;->getInstance()Lcn/codemao/android/stat/CMSpUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/codemao/android/stat/CMSpUtils;->apply(Landroid/content/SharedPreferences$Editor;)V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    .line 368
    monitor-exit p0

    return-void

    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public connections()[Ljava/lang/String;
    .registers 4

    .line 89
    iget-object v0, p0, Lcn/codemao/android/stat/CountlyStore;->preferences_:Landroid/content/SharedPreferences;

    const-string v1, "CONNECTIONS"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_14

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_1a

    :cond_14
    const-string v1, ":::"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_1a
    return-object v0
.end method

.method public events()[Ljava/lang/String;
    .registers 4

    .line 97
    iget-object v0, p0, Lcn/codemao/android/stat/CountlyStore;->preferences_:Landroid/content/SharedPreferences;

    const-string v1, "EVENTS"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_14

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_1a

    :cond_14
    const-string v1, ":::"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_1a
    return-object v0
.end method

.method public eventsList()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/codemao/android/stat/pojo/EventInfo;",
            ">;"
        }
    .end annotation

    .line 105
    invoke-virtual {p0}, Lcn/codemao/android/stat/CountlyStore;->events()[Ljava/lang/String;

    move-result-object v0

    .line 106
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 107
    array-length v2, v0

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_1c

    aget-object v4, v0, v3

    .line 108
    invoke-static {v4}, Lcn/codemao/android/stat/pojo/EventInfo;->fromJSON(Ljava/lang/String;)Lcn/codemao/android/stat/pojo/EventInfo;

    move-result-object v4

    if-eqz v4, :cond_19

    .line 110
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 114
    :cond_1c
    new-instance v0, Lcn/codemao/android/stat/CountlyStore$1;

    invoke-direct {v0, p0}, Lcn/codemao/android/stat/CountlyStore$1;-><init>(Lcn/codemao/android/stat/CountlyStore;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v1
.end method

.method getCachedAdvertisingId()Ljava/lang/String;
    .registers 4

    .line 248
    iget-object v0, p0, Lcn/codemao/android/stat/CountlyStore;->preferences_:Landroid/content/SharedPreferences;

    const-string v1, "ADVERTISING_ID"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getConsentPush()Ljava/lang/Boolean;
    .registers 4

    .line 257
    iget-object v0, p0, Lcn/codemao/android/stat/CountlyStore;->preferencesGCM_:Landroid/content/SharedPreferences;

    const-string v1, "ly.count.android.api.messaging.consent.gcm"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method getLocation()Ljava/lang/String;
    .registers 4

    .line 208
    iget-object v0, p0, Lcn/codemao/android/stat/CountlyStore;->preferences_:Landroid/content/SharedPreferences;

    const-string v1, "LOCATION"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getLocationCity()Ljava/lang/String;
    .registers 4

    .line 212
    iget-object v0, p0, Lcn/codemao/android/stat/CountlyStore;->preferences_:Landroid/content/SharedPreferences;

    const-string v1, "LOCATION_CITY"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getLocationCountryCode()Ljava/lang/String;
    .registers 4

    .line 216
    iget-object v0, p0, Lcn/codemao/android/stat/CountlyStore;->preferences_:Landroid/content/SharedPreferences;

    const-string v1, "LOCATION_COUNTRY_CODE"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getLocationDisabled()Z
    .registers 4

    .line 224
    iget-object v0, p0, Lcn/codemao/android/stat/CountlyStore;->preferences_:Landroid/content/SharedPreferences;

    const-string v1, "LOCATION_DISABLED"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method getLocationIpAddress()Ljava/lang/String;
    .registers 4

    .line 220
    iget-object v0, p0, Lcn/codemao/android/stat/CountlyStore;->preferences_:Landroid/content/SharedPreferences;

    const-string v1, "LOCATION_IP_ADDRESS"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getPreference(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    monitor-enter p0

    .line 341
    :try_start_1
    iget-object v0, p0, Lcn/codemao/android/stat/CountlyStore;->preferences_:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-object p1

    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method getStarRatingPreferences()Ljava/lang/String;
    .registers 4

    .line 239
    iget-object v0, p0, Lcn/codemao/android/stat/CountlyStore;->preferences_:Landroid/content/SharedPreferences;

    const-string v1, "STAR_RATING"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEmptyConnections()Z
    .registers 4

    .line 127
    iget-object v0, p0, Lcn/codemao/android/stat/CountlyStore;->preferences_:Landroid/content/SharedPreferences;

    const-string v1, "CONNECTIONS"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public declared-synchronized removeConnection(Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    if-eqz p1, :cond_39

    .line 153
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_39

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcn/codemao/android/stat/CountlyStore;->connections()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 155
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_39

    .line 156
    iget-object p1, p0, Lcn/codemao/android/stat/CountlyStore;->preferences_:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "CONNECTIONS"

    const-string v2, ":::"

    invoke-static {v0, v2}, Lcn/codemao/android/stat/CountlyStore;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 157
    invoke-static {}, Lcn/codemao/android/stat/CMSpUtils;->getInstance()Lcn/codemao/android/stat/CMSpUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/codemao/android/stat/CMSpUtils;->apply(Landroid/content/SharedPreferences$Editor;)V
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_36

    goto :goto_39

    :catchall_36
    move-exception p1

    monitor-exit p0

    throw p1

    .line 160
    :cond_39
    :goto_39
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized removeEvents(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/codemao/android/stat/pojo/EventInfo;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_4f

    .line 291
    :try_start_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4f

    .line 292
    invoke-virtual {p0}, Lcn/codemao/android/stat/CountlyStore;->eventsList()Ljava/util/List;

    move-result-object v0

    const-string v1, "CodeMaoStat local"

    const/4 v2, 0x0

    .line 293
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/codemao/android/stat/pojo/EventInfo;

    invoke-virtual {v3}, Lcn/codemao/android/stat/pojo/EventInfo;->toJSON()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcn/codemao/android/stat/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "CodeMaoStat toremove"

    .line 294
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/codemao/android/stat/pojo/EventInfo;

    invoke-virtual {v2}, Lcn/codemao/android/stat/pojo/EventInfo;->toJSON()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/codemao/android/stat/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_4f

    .line 297
    iget-object p1, p0, Lcn/codemao/android/stat/CountlyStore;->preferences_:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "EVENTS"

    const-string v2, ":::"

    invoke-static {v0, v2}, Lcn/codemao/android/stat/CountlyStore;->joinEvents(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 298
    invoke-static {}, Lcn/codemao/android/stat/CMSpUtils;->getInstance()Lcn/codemao/android/stat/CMSpUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/codemao/android/stat/CMSpUtils;->apply(Landroid/content/SharedPreferences$Editor;)V
    :try_end_4b
    .catchall {:try_start_3 .. :try_end_4b} :catchall_4c

    goto :goto_4f

    :catchall_4c
    move-exception p1

    monitor-exit p0

    throw p1

    .line 301
    :cond_4f
    :goto_4f
    monitor-exit p0

    return-void
.end method

.method setCachedAdvertisingId(Ljava/lang/String;)V
    .registers 4

    .line 243
    iget-object v0, p0, Lcn/codemao/android/stat/CountlyStore;->preferences_:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ADVERTISING_ID"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 244
    invoke-static {}, Lcn/codemao/android/stat/CMSpUtils;->getInstance()Lcn/codemao/android/stat/CMSpUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/codemao/android/stat/CMSpUtils;->apply(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method setConsentPush(Z)V
    .registers 4

    .line 252
    iget-object v0, p0, Lcn/codemao/android/stat/CountlyStore;->preferencesGCM_:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ly.count.android.api.messaging.consent.gcm"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 253
    invoke-static {}, Lcn/codemao/android/stat/CMSpUtils;->getInstance()Lcn/codemao/android/stat/CMSpUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/codemao/android/stat/CMSpUtils;->apply(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method setLocation(Ljava/lang/String;)V
    .registers 4

    .line 180
    iget-object v0, p0, Lcn/codemao/android/stat/CountlyStore;->preferences_:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "LOCATION"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 181
    invoke-static {}, Lcn/codemao/android/stat/CMSpUtils;->getInstance()Lcn/codemao/android/stat/CMSpUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/codemao/android/stat/CMSpUtils;->apply(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method setLocationCity(Ljava/lang/String;)V
    .registers 4

    .line 185
    iget-object v0, p0, Lcn/codemao/android/stat/CountlyStore;->preferences_:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "LOCATION_CITY"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 186
    invoke-static {}, Lcn/codemao/android/stat/CMSpUtils;->getInstance()Lcn/codemao/android/stat/CMSpUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/codemao/android/stat/CMSpUtils;->apply(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method setLocationCountryCode(Ljava/lang/String;)V
    .registers 4

    .line 190
    iget-object v0, p0, Lcn/codemao/android/stat/CountlyStore;->preferences_:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "LOCATION_COUNTRY_CODE"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 191
    invoke-static {}, Lcn/codemao/android/stat/CMSpUtils;->getInstance()Lcn/codemao/android/stat/CMSpUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/codemao/android/stat/CMSpUtils;->apply(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method setLocationDisabled(Z)V
    .registers 4

    .line 200
    iget-object v0, p0, Lcn/codemao/android/stat/CountlyStore;->preferences_:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "LOCATION_DISABLED"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 201
    invoke-static {}, Lcn/codemao/android/stat/CMSpUtils;->getInstance()Lcn/codemao/android/stat/CMSpUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/codemao/android/stat/CMSpUtils;->apply(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method setLocationIpAddress(Ljava/lang/String;)V
    .registers 4

    .line 195
    iget-object v0, p0, Lcn/codemao/android/stat/CountlyStore;->preferences_:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "LOCATION_IP_ADDRESS"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 196
    invoke-static {}, Lcn/codemao/android/stat/CMSpUtils;->getInstance()Lcn/codemao/android/stat/CMSpUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/codemao/android/stat/CMSpUtils;->apply(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method public declared-synchronized setPreference(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    if-nez p2, :cond_e

    .line 353
    :try_start_3
    iget-object p2, p0, Lcn/codemao/android/stat/CountlyStore;->preferences_:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    goto :goto_18

    .line 355
    :cond_e
    iget-object v0, p0, Lcn/codemao/android/stat/CountlyStore;->preferences_:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 357
    :goto_18
    invoke-static {}, Lcn/codemao/android/stat/CMSpUtils;->getInstance()Lcn/codemao/android/stat/CMSpUtils;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcn/codemao/android/stat/CMSpUtils;->apply(Landroid/content/SharedPreferences$Editor;)V
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_21

    .line 358
    monitor-exit p0

    return-void

    :catchall_21
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method setStarRatingPreferences(Ljava/lang/String;)V
    .registers 4

    .line 231
    iget-object v0, p0, Lcn/codemao/android/stat/CountlyStore;->preferences_:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "STAR_RATING"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 232
    invoke-static {}, Lcn/codemao/android/stat/CMSpUtils;->getInstance()Lcn/codemao/android/stat/CMSpUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/codemao/android/stat/CMSpUtils;->apply(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method
