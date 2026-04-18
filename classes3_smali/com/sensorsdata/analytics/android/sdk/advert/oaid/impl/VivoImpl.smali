.class Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/VivoImpl;
.super Ljava/lang/Object;
.source "VivoImpl.java"

# interfaces
.implements Lcom/sensorsdata/analytics/android/sdk/advert/oaid/IRomOAID;


# static fields
.field private static final TAG:Ljava/lang/String; = "SA.VivoImpl"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/VivoImpl;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getRomOAID()Ljava/lang/String;
    .registers 10

    const-string v0, "SA.VivoImpl"

    const-string v1, "content://com.vivo.vms.IdProvider/IdentifierId/OAID"

    .line 55
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v1, 0x0

    .line 59
    :try_start_9
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/VivoImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_42

    if-eqz v2, :cond_3c

    .line 61
    :try_start_19
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3c

    const-string v3, "value"

    .line 62
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 63
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_31

    .line 64
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3c

    :cond_31
    const-string v3, "OAID query failed"

    .line 65
    invoke-static {v0, v3}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_36
    .catchall {:try_start_19 .. :try_end_36} :catchall_37

    goto :goto_3c

    :catchall_37
    move-exception v3

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto :goto_44

    :cond_3c
    :goto_3c
    if-eqz v2, :cond_4d

    .line 72
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_4d

    :catchall_42
    move-exception v3

    move-object v2, v1

    .line 69
    :goto_44
    :try_start_44
    invoke-static {v0, v3}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_4e

    if-eqz v1, :cond_4c

    .line 72
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4c
    move-object v1, v2

    :cond_4d
    :goto_4d
    return-object v1

    :catchall_4e
    move-exception v0

    if-eqz v1, :cond_54

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 74
    :cond_54
    throw v0
.end method

.method public isSupported()Z
    .registers 4

    const/4 v0, 0x0

    .line 43
    :try_start_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-ge v1, v2, :cond_8

    return v0

    :cond_8
    const-string v1, "persist.sys.identifierid.supported"

    const-string v2, "0"

    .line 46
    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/OAIDRom;->sysProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_17

    return v0

    :catchall_17
    move-exception v1

    const-string v2, "SA.VivoImpl"

    .line 48
    invoke-static {v2, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method
