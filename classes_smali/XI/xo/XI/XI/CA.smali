.class public LXI/xo/XI/XI/CA;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile J9:LXI/xo/XI/XI/CA;


# instance fields
.field public CA:LXI/xo/XI/XI/K0;

.field public K0:LXI/xo/XI/XI/XI;

.field public XI:LXI/xo/XI/XI/XI;

.field public kM:LXI/xo/XI/XI/XI;

.field public vs:Landroid/content/BroadcastReceiver;

.field public xo:LXI/xo/XI/XI/XI;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LXI/xo/XI/XI/XI;

    const-string v1, "udid"

    invoke-direct {v0, v1}, LXI/xo/XI/XI/XI;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LXI/xo/XI/XI/CA;->XI:LXI/xo/XI/XI/XI;

    new-instance v0, LXI/xo/XI/XI/XI;

    const-string v1, "oaid"

    invoke-direct {v0, v1}, LXI/xo/XI/XI/XI;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LXI/xo/XI/XI/CA;->K0:LXI/xo/XI/XI/XI;

    new-instance v0, LXI/xo/XI/XI/XI;

    const-string v1, "vaid"

    invoke-direct {v0, v1}, LXI/xo/XI/XI/XI;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LXI/xo/XI/XI/CA;->xo:LXI/xo/XI/XI/XI;

    new-instance v0, LXI/xo/XI/XI/XI;

    const-string v1, "aaid"

    invoke-direct {v0, v1}, LXI/xo/XI/XI/XI;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LXI/xo/XI/XI/CA;->kM:LXI/xo/XI/XI/XI;

    new-instance v0, LXI/xo/XI/XI/K0;

    invoke-direct {v0}, LXI/xo/XI/XI/K0;-><init>()V

    iput-object v0, p0, LXI/xo/XI/XI/CA;->CA:LXI/xo/XI/XI/K0;

    return-void
.end method

.method public static final XI()LXI/xo/XI/XI/CA;
    .registers 2

    sget-object v0, LXI/xo/XI/XI/CA;->J9:LXI/xo/XI/XI/CA;

    if-nez v0, :cond_17

    const-class v0, LXI/xo/XI/XI/CA;

    monitor-enter v0

    :try_start_7
    sget-object v1, LXI/xo/XI/XI/CA;->J9:LXI/xo/XI/XI/CA;

    if-nez v1, :cond_12

    new-instance v1, LXI/xo/XI/XI/CA;

    invoke-direct {v1}, LXI/xo/XI/XI/CA;-><init>()V

    sput-object v1, LXI/xo/XI/XI/CA;->J9:LXI/xo/XI/XI/CA;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, LXI/xo/XI/XI/CA;->J9:LXI/xo/XI/XI/CA;

    return-object v0
.end method

.method public static XI(Landroid/database/Cursor;)LXI/xo/XI/XI/kM;
    .registers 4

    new-instance v0, LXI/xo/XI/XI/kM;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LXI/xo/XI/XI/kM;-><init>(Ljava/lang/String;I)V

    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_e

    return-object v0

    :cond_e
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v1, "value"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1f

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LXI/xo/XI/XI/kM;->XI:Ljava/lang/String;

    :cond_1f
    const-string v1, "code"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_2d

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, LXI/xo/XI/XI/kM;->K0:I

    :cond_2d
    const-string v1, "expired"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_3b

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, LXI/xo/XI/XI/kM;->kM:J

    :cond_3b
    return-object v0
.end method


# virtual methods
.method public final XI(Landroid/content/Context;LXI/xo/XI/XI/XI;)Ljava/lang/String;
    .registers 16

    const/4 v0, 0x0

    if-nez p2, :cond_4

    return-object v0

    .line 1
    :cond_4
    iget-wide v1, p2, LXI/xo/XI/XI/XI;->XI:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    cmp-long v7, v1, v3

    if-lez v7, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    if-eqz v1, :cond_18

    .line 2
    iget-object p1, p2, LXI/xo/XI/XI/XI;->K0:Ljava/lang/String;

    return-object p1

    :cond_18
    invoke-virtual {p0, p1, v6}, LXI/xo/XI/XI/CA;->XI(Landroid/content/Context;Z)Z

    move-result v1

    if-nez v1, :cond_1f

    return-object v0

    :cond_1f
    const-string v1, "content://com.meizu.flyme.openidsdk/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    :try_start_25
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v11, v6, [Ljava/lang/String;

    iget-object v1, p2, LXI/xo/XI/XI/XI;->kM:Ljava/lang/String;

    aput-object v1, v11, v5

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_36} :catch_87
    .catchall {:try_start_25 .. :try_end_36} :catchall_85

    if-eqz v1, :cond_66

    :try_start_38
    invoke-static {v1}, LXI/xo/XI/XI/CA;->XI(Landroid/database/Cursor;)LXI/xo/XI/XI/kM;

    move-result-object v2

    iget-object v0, v2, LXI/xo/XI/XI/kM;->XI:Ljava/lang/String;

    .line 3
    iput-object v0, p2, LXI/xo/XI/XI/XI;->K0:Ljava/lang/String;

    .line 4
    iget-wide v3, v2, LXI/xo/XI/XI/kM;->kM:J

    .line 5
    iput-wide v3, p2, LXI/xo/XI/XI/XI;->XI:J

    .line 6
    iget v3, v2, LXI/xo/XI/XI/kM;->K0:I

    .line 7
    iput v3, p2, LXI/xo/XI/XI/XI;->xo:I

    .line 8
    iget p2, v2, LXI/xo/XI/XI/kM;->K0:I

    const/16 v2, 0x3e8

    if-eq p2, v2, :cond_7b

    invoke-virtual {p0, p1}, LXI/xo/XI/XI/CA;->XI(Landroid/content/Context;)V

    invoke-virtual {p0, p1, v5}, LXI/xo/XI/XI/CA;->XI(Landroid/content/Context;Z)Z

    move-result p2

    if-nez p2, :cond_7b

    invoke-virtual {p0, p1, v6}, LXI/xo/XI/XI/CA;->XI(Landroid/content/Context;Z)Z

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not support, forceQuery isSupported: "

    :goto_62
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_78

    :cond_66
    invoke-virtual {p0, p1, v5}, LXI/xo/XI/XI/CA;->XI(Landroid/content/Context;Z)Z

    move-result p2

    if-eqz p2, :cond_7b

    invoke-virtual {p0, p1, v6}, LXI/xo/XI/XI/CA;->XI(Landroid/content/Context;Z)Z

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forceQuery isSupported : "

    goto :goto_62

    :goto_78
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_7b} :catch_81
    .catchall {:try_start_38 .. :try_end_7b} :catchall_7e

    :cond_7b
    if-eqz v1, :cond_95

    goto :goto_90

    :catchall_7e
    move-exception p1

    move-object v0, v1

    goto :goto_96

    :catch_81
    move-exception p1

    move-object p2, v0

    move-object v0, v1

    goto :goto_89

    :catchall_85
    move-exception p1

    goto :goto_96

    :catch_87
    move-exception p1

    move-object p2, v0

    :goto_89
    :try_start_89
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
    :try_end_8c
    .catchall {:try_start_89 .. :try_end_8c} :catchall_85

    if-eqz v0, :cond_94

    move-object v1, v0

    move-object v0, p2

    :goto_90
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_95

    :cond_94
    move-object v0, p2

    :cond_95
    :goto_95
    return-object v0

    :goto_96
    if-eqz v0, :cond_9b

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_9b
    throw p1
.end method

.method public final declared-synchronized XI(Landroid/content/Context;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LXI/xo/XI/XI/CA;->vs:Landroid/content/BroadcastReceiver;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_20

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.meizu.flyme.openid.ACTION_OPEN_ID_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, LXI/xo/XI/XI/xo;

    invoke-direct {v1}, LXI/xo/XI/XI/xo;-><init>()V

    iput-object v1, p0, LXI/xo/XI/XI/CA;->vs:Landroid/content/BroadcastReceiver;

    const-string v2, "com.meizu.flyme.openid.permission.OPEN_ID_CHANGE"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_20

    monitor-exit p0

    return-void

    :catchall_20
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final XI(Landroid/content/Context;Z)Z
    .registers 13

    const-string v0, "com.meizu.safe"

    iget-object v1, p0, LXI/xo/XI/XI/CA;->CA:LXI/xo/XI/XI/K0;

    .line 9
    iget-object v1, v1, LXI/xo/XI/XI/K0;->K0:Ljava/lang/Boolean;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_c

    const/4 v4, 0x1

    goto :goto_d

    :cond_c
    const/4 v4, 0x0

    :goto_d
    if-eqz v4, :cond_18

    if-nez p2, :cond_18

    if-eqz v1, :cond_17

    .line 10
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    :cond_17
    return v3

    .line 11
    :cond_18
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    if-nez p2, :cond_1f

    return v3

    :cond_1f
    const/4 v1, 0x0

    :try_start_20
    invoke-virtual {p2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    if-eqz v4, :cond_30

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_28} :catch_29

    goto :goto_31

    :catch_29
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    :cond_30
    move-object v4, v1

    :goto_31
    iget-object v5, p0, LXI/xo/XI/XI/CA;->CA:LXI/xo/XI/XI/K0;

    .line 12
    iget-object v6, v5, LXI/xo/XI/XI/K0;->K0:Ljava/lang/Boolean;

    if-eqz v6, :cond_39

    const/4 v6, 0x1

    goto :goto_3a

    :cond_39
    const/4 v6, 0x0

    :goto_3a
    if-eqz v6, :cond_57

    .line 13
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_44

    const/4 v5, 0x0

    goto :goto_4a

    :cond_44
    iget-object v5, v5, LXI/xo/XI/XI/K0;->XI:Ljava/lang/String;

    invoke-static {v5, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    :goto_4a
    if-eqz v5, :cond_57

    .line 14
    iget-object p1, p0, LXI/xo/XI/XI/CA;->CA:LXI/xo/XI/XI/K0;

    .line 15
    iget-object p1, p1, LXI/xo/XI/XI/K0;->K0:Ljava/lang/Boolean;

    if-eqz p1, :cond_56

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    :cond_56
    return v3

    .line 16
    :cond_57
    iget-object v5, p0, LXI/xo/XI/XI/CA;->CA:LXI/xo/XI/XI/K0;

    .line 17
    iput-object v4, v5, LXI/xo/XI/XI/K0;->XI:Ljava/lang/String;

    const-string v4, "com.meizu.flyme.openidsdk"

    .line 18
    invoke-virtual {p2, v4, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object p2

    if-nez p2, :cond_64

    goto :goto_74

    :cond_64
    iget-object v4, p2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v4, v2

    if-nez v4, :cond_6c

    goto :goto_74

    :cond_6c
    iget-object p2, p2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_76

    :goto_74
    const/4 p2, 0x0

    goto :goto_77

    :cond_76
    const/4 p2, 0x1

    :goto_77
    if-eqz p2, :cond_ca

    const-string p2, "content://com.meizu.flyme.openidsdk/"

    .line 19
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    :try_start_7f
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string p1, "supported"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_ad

    invoke-static {v1}, LXI/xo/XI/XI/CA;->XI(Landroid/database/Cursor;)LXI/xo/XI/XI/kM;

    move-result-object p1

    const/16 p2, 0x3e8

    iget v0, p1, LXI/xo/XI/XI/kM;->K0:I
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_9a} :catch_b2
    .catchall {:try_start_7f .. :try_end_9a} :catchall_b0

    if-ne p2, v0, :cond_a8

    const-string p2, "0"

    :try_start_9e
    iget-object p1, p1, LXI/xo/XI/XI/kM;->XI:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_a4} :catch_b2
    .catchall {:try_start_9e .. :try_end_a4} :catchall_b0

    if-eqz p1, :cond_a7

    goto :goto_a8

    :cond_a7
    const/4 v2, 0x0

    :cond_a8
    :goto_a8
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v3, v2

    goto :goto_bb

    :cond_ad
    if-eqz v1, :cond_bb

    goto :goto_b8

    :catchall_b0
    move-exception p1

    goto :goto_c4

    :catch_b2
    move-exception p1

    :try_start_b3
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
    :try_end_b6
    .catchall {:try_start_b3 .. :try_end_b6} :catchall_b0

    if-eqz v1, :cond_bb

    :goto_b8
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 20
    :cond_bb
    :goto_bb
    iget-object p1, p0, LXI/xo/XI/XI/CA;->CA:LXI/xo/XI/XI/K0;

    .line 21
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p1, LXI/xo/XI/XI/K0;->K0:Ljava/lang/Boolean;

    return v3

    :goto_c4
    if-eqz v1, :cond_c9

    .line 22
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_c9
    throw p1

    .line 23
    :cond_ca
    iget-object p1, p0, LXI/xo/XI/XI/CA;->CA:LXI/xo/XI/XI/K0;

    .line 24
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p2, p1, LXI/xo/XI/XI/K0;->K0:Ljava/lang/Boolean;

    return v3
.end method
