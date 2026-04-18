.class public LXI/CA/XI/XI;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public XI:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LXI/CA/XI/XI;->XI:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public XI(ILjava/lang/String;)Ljava/lang/String;
    .registers 11

    const/4 v0, 0x0

    if-eqz p1, :cond_2b

    const/4 v1, 0x1

    if-eq p1, v1, :cond_19

    const/4 v1, 0x2

    if-eq p1, v1, :cond_11

    const/4 p2, 0x4

    if-eq p1, p2, :cond_e

    move-object v2, v0

    goto :goto_32

    :cond_e
    const-string p1, "content://com.vivo.vms.IdProvider/IdentifierId/OAIDSTATUS"

    goto :goto_2d

    :cond_11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.vivo.vms.IdProvider/IdentifierId/AAID_"

    goto :goto_20

    :cond_19
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.vivo.vms.IdProvider/IdentifierId/VAID_"

    :goto_20
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2d

    :cond_2b
    const-string p1, "content://com.vivo.vms.IdProvider/IdentifierId/OAID"

    :goto_2d
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    move-object v2, p1

    :goto_32
    :try_start_32
    iget-object p1, p0, LXI/CA/XI/XI;->XI:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_40} :catch_68
    .catchall {:try_start_32 .. :try_end_40} :catchall_61

    if-eqz p1, :cond_5e

    :try_start_42
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_53

    const-string p2, "value"

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    move-object v0, p2

    :cond_53
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_56} :catch_5a
    .catchall {:try_start_42 .. :try_end_56} :catchall_57

    goto :goto_5e

    :catchall_57
    move-exception p2

    move-object v0, p1

    goto :goto_62

    :catch_5a
    move-object v7, v0

    move-object v0, p1

    move-object p1, v7

    goto :goto_69

    :cond_5e
    :goto_5e
    if-eqz p1, :cond_73

    goto :goto_6e

    :catchall_61
    move-exception p2

    :goto_62
    if-eqz v0, :cond_67

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_67
    throw p2

    :catch_68
    move-object p1, v0

    :goto_69
    if-eqz v0, :cond_72

    move-object v7, v0

    move-object v0, p1

    move-object p1, v7

    :goto_6e
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_73

    :cond_72
    move-object v0, p1

    :cond_73
    :goto_73
    return-object v0
.end method
