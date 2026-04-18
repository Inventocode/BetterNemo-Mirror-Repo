.class public Lcom/sensorsdata/analytics/android/sdk/data/SensorsDataContentProvider;
.super Landroid/content/ContentProvider;
.source "SensorsDataContentProvider.java"


# static fields
.field private static final uriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mProviderHelper:Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 35
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/data/SensorsDataContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .registers 4

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/SensorsDataContentProvider;->mProviderHelper:Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;

    invoke-virtual {v0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    :catch_7
    move-exception p1

    .line 108
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    const/4 p1, 0x0

    return p1
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6

    .line 63
    :try_start_0
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/data/SensorsDataContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_10

    .line 65
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/data/SensorsDataContentProvider;->mProviderHelper:Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;

    invoke-virtual {p1, p2, p3}, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->deleteEvents(Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_10
    const/16 p2, 0xf

    if-ne v0, p2, :cond_25

    .line 67
    iget-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/data/SensorsDataContentProvider;->mProviderHelper:Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;

    const-string p3, "remove_key"

    invoke-virtual {p1, p3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->removeSP(Ljava/lang/String;)I

    move-result p1
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_21

    return p1

    :catch_21
    move-exception p1

    .line 71
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_25
    const/4 p1, 0x0

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 5

    if-eqz p2, :cond_2e

    .line 84
    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_2e

    .line 88
    :cond_9
    :try_start_9
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/data/SensorsDataContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    .line 90
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/SensorsDataContentProvider;->mProviderHelper:Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;

    invoke-virtual {v0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->insertEvent(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    :cond_19
    const/16 v1, 0x8

    if-ne v0, v1, :cond_24

    .line 92
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/SensorsDataContentProvider;->mProviderHelper:Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;

    invoke-virtual {v0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->insertChannelPersistent(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    .line 94
    :cond_24
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/SensorsDataContentProvider;->mProviderHelper:Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;

    invoke-virtual {v1, v0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->insertPersistent(ILandroid/net/Uri;Landroid/content/ContentValues;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_29} :catch_2a

    return-object p1

    :catch_2a
    move-exception p2

    .line 98
    invoke-static {p2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_2e
    :goto_2e
    return-object p1
.end method

.method public onCreate()Z
    .registers 5

    .line 41
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_2e

    if-eqz v0, :cond_32

    .line 46
    :try_start_6
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1
    :try_end_e
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_6 .. :try_end_e} :catch_f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_2e

    goto :goto_11

    :catch_f
    :try_start_f
    const-string v1, "com.sensorsdata.analytics.android.sdk.test"

    .line 50
    :goto_11
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->getInstance(Landroid/content/Context;)Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/SensorsDataContentProvider;->mProviderHelper:Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;

    .line 51
    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/data/SensorsDataContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".SensorsDataContentProvider"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->appendUri(Landroid/content/UriMatcher;Ljava/lang/String;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_2d} :catch_2e

    goto :goto_32

    :catch_2e
    move-exception v0

    .line 54
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_32
    :goto_32
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 14

    .line 117
    :try_start_0
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/data/SensorsDataContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    .line 119
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/data/SensorsDataContentProvider;->mProviderHelper:Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;

    const-string v3, "events"

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->queryByTable(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    goto :goto_33

    :cond_16
    const/16 v1, 0x8

    if-ne v0, v1, :cond_27

    .line 121
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/data/SensorsDataContentProvider;->mProviderHelper:Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;

    const-string v3, "t_channel"

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->queryByTable(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    goto :goto_33

    .line 123
    :cond_27
    iget-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/data/SensorsDataContentProvider;->mProviderHelper:Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;

    invoke-virtual {p2, v0, p1}, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->queryPersistent(ILandroid/net/Uri;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2d} :catch_2e

    goto :goto_33

    :catch_2e
    move-exception p1

    .line 126
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    const/4 p1, 0x0

    :goto_33
    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    const/4 p1, 0x0

    return p1
.end method
