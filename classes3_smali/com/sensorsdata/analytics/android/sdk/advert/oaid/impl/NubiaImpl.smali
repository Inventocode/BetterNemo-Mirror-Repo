.class Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/NubiaImpl;
.super Ljava/lang/Object;
.source "NubiaImpl.java"

# interfaces
.implements Lcom/sensorsdata/analytics/android/sdk/advert/oaid/IRomOAID;


# static fields
.field private static final TAG:Ljava/lang/String; = "SA.NubiaImpl"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/NubiaImpl;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getRomOAID()Ljava/lang/String;
    .registers 7

    .line 47
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/NubiaImpl;->isSupported()Z

    move-result v0

    const-string v1, "SA.NubiaImpl"

    const/4 v2, 0x0

    if-nez v0, :cond_f

    const-string v0, "Only supports Android 10.0 and above for Nubia"

    .line 48
    invoke-static {v1, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_f
    :try_start_f
    const-string v0, "content://cn.nubia.identity/identity"

    .line 53
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 54
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/NubiaImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    if-nez v0, :cond_22

    return-object v2

    :cond_22
    const-string v3, "getOAID"

    .line 58
    invoke-virtual {v0, v3, v2, v2}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 59
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-lt v4, v5, :cond_32

    .line 60
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V

    goto :goto_35

    .line 62
    :cond_32
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    :goto_35
    if-nez v3, :cond_3d

    const-string v0, "OAID query failed: bundle is null"

    .line 65
    invoke-static {v1, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_3d
    const-string v0, "code"

    const/4 v4, -0x1

    .line 68
    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_4c

    const-string v0, "id"

    .line 69
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 71
    :cond_4c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OAID query success: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_60
    .catchall {:try_start_f .. :try_end_60} :catchall_61

    goto :goto_65

    :catchall_61
    move-exception v0

    .line 73
    invoke-static {v1, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_65
    return-object v2
.end method

.method public isSupported()Z
    .registers 3

    .line 42
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method
