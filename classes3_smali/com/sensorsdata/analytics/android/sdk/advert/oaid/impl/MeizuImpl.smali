.class Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/MeizuImpl;
.super Ljava/lang/Object;
.source "MeizuImpl.java"

# interfaces
.implements Lcom/sensorsdata/analytics/android/sdk/advert/oaid/IRomOAID;


# static fields
.field private static final TAG:Ljava/lang/String; = "SA.MeizuImpl"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/MeizuImpl;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getRomOAID()Ljava/lang/String;
    .registers 9

    const-string v0, "SA.MeizuImpl"

    const-string v1, "content://com.meizu.flyme.openidsdk/"

    .line 45
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v1, 0x0

    .line 48
    :try_start_9
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/MeizuImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "oaid"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_4a

    .line 50
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4a

    const-string v3, "value"

    .line 51
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 52
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 53
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OAID query success: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_45
    .catchall {:try_start_9 .. :try_end_45} :catchall_46

    goto :goto_4a

    :catchall_46
    move-exception v2

    .line 57
    invoke-static {v0, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4a
    :goto_4a
    return-object v1
.end method

.method public isSupported()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
