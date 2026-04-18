.class public Lcom/chuanglan/shanyan_sdk/a/f;
.super Lcom/chuanglan/shanyan_sdk/a/a;


# static fields
.field private static volatile e:Lcom/chuanglan/shanyan_sdk/a/f;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 8

    const-string v2, "chuanglan_sdk_report.db"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/chuanglan/shanyan_sdk/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;IZ)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/chuanglan/shanyan_sdk/a/f;
    .registers 3

    sget-object v0, Lcom/chuanglan/shanyan_sdk/a/f;->e:Lcom/chuanglan/shanyan_sdk/a/f;

    if-nez v0, :cond_17

    const-class v0, Lcom/chuanglan/shanyan_sdk/a/f;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/chuanglan/shanyan_sdk/a/f;->e:Lcom/chuanglan/shanyan_sdk/a/f;

    if-nez v1, :cond_12

    new-instance v1, Lcom/chuanglan/shanyan_sdk/a/f;

    invoke-direct {v1, p0}, Lcom/chuanglan/shanyan_sdk/a/f;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/chuanglan/shanyan_sdk/a/f;->e:Lcom/chuanglan/shanyan_sdk/a/f;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    :cond_17
    :goto_17
    sget-object p0, Lcom/chuanglan/shanyan_sdk/a/f;->e:Lcom/chuanglan/shanyan_sdk/a/f;

    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/chuanglan/shanyan_sdk/a/a;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS report_device(DID text UNIQUE,IMEI text,IMSI text,ICCID text,MAC text,appPlatform text,device text,deviceName text,oaid text)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS report_behavior(id INTEGER PRIMARY KEY AUTOINCREMENT,DID text,telcom text,sdkMode text,osVersion text,romVersion text,sdkVersion text,uuid text,ip text,network text,dbm text,wifidbm text,processName text,method text,beginTime text,costTime INTEGER ,stepTime INTEGER ,status text,resCode text,resDesc text,innerCode text,innerDesc text,count INTEGER,sid text)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/chuanglan/shanyan_sdk/a/a;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method
