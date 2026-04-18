.class public Lcom/chuanglan/shanyan_sdk/b/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/chuanglan/shanyan_sdk/b/k;


# static fields
.field private static a:Ljava/lang/String; = null

.field private static b:Z = false

.field private static c:Z = false

.field private static final d:Ljava/util/concurrent/CountDownLatch;


# instance fields
.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Lcom/chuanglan/shanyan_sdk/b/h;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lcom/chuanglan/shanyan_sdk/b/f;->d:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/chuanglan/shanyan_sdk/b/f;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/chuanglan/shanyan_sdk/b/f;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/chuanglan/shanyan_sdk/b/f;->g:Ljava/lang/String;

    iput-object p4, p0, Lcom/chuanglan/shanyan_sdk/b/f;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "OUID"

    return-object v0
.end method

.method public b()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public b(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    sget-object v0, Lcom/chuanglan/shanyan_sdk/b/f;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/b/f;->i:Lcom/chuanglan/shanyan_sdk/b/h;

    if-eqz v0, :cond_3d

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/b/h;->a()Lcom/chuanglan/shanyan_sdk/b/b;

    move-result-object v0

    if-nez v0, :cond_13

    goto :goto_3d

    :cond_13
    :try_start_13
    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/b/f;->i:Lcom/chuanglan/shanyan_sdk/b/h;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/b/h;->a()Lcom/chuanglan/shanyan_sdk/b/b;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/chuanglan/shanyan_sdk/b/f;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/chuanglan/shanyan_sdk/b/f;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/chuanglan/shanyan_sdk/b/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/chuanglan/shanyan_sdk/b/f;->b()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/chuanglan/shanyan_sdk/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chuanglan/shanyan_sdk/b/f;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3a

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/b/f;->i:Lcom/chuanglan/shanyan_sdk/b/h;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_3a
    .catchall {:try_start_13 .. :try_end_3a} :catchall_3a

    :catchall_3a
    :cond_3a
    sget-object p1, Lcom/chuanglan/shanyan_sdk/b/f;->a:Ljava/lang/String;

    return-object p1

    :cond_3d
    :goto_3d
    sget-object p1, Lcom/chuanglan/shanyan_sdk/b/f;->a:Ljava/lang/String;

    return-object p1
.end method

.method public b_(Landroid/content/Context;)Z
    .registers 8

    sget-boolean v0, Lcom/chuanglan/shanyan_sdk/b/f;->c:Z

    if-eqz v0, :cond_7

    sget-boolean p1, Lcom/chuanglan/shanyan_sdk/b/f;->b:Z

    return p1

    :cond_7
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_40

    iget-object v2, p0, Lcom/chuanglan/shanyan_sdk/b/f;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    goto :goto_40

    :cond_14
    :try_start_14
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v2, p0, Lcom/chuanglan/shanyan_sdk/b/f;->e:Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_33

    if-eqz p1, :cond_31

    invoke-virtual {p1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long p1, v2, v4

    if-ltz p1, :cond_31

    goto :goto_32

    :cond_31
    const/4 v0, 0x0

    :goto_32
    return v0

    :cond_33
    if-eqz p1, :cond_3b

    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    if-lt p1, v0, :cond_3b

    const/4 p1, 0x1

    goto :goto_3c

    :cond_3b
    const/4 p1, 0x0

    :goto_3c
    sput-boolean p1, Lcom/chuanglan/shanyan_sdk/b/f;->b:Z
    :try_end_3e
    .catchall {:try_start_14 .. :try_end_3e} :catchall_3f

    goto :goto_42

    :catchall_3f
    return v1

    :cond_40
    :goto_40
    sput-boolean v1, Lcom/chuanglan/shanyan_sdk/b/f;->b:Z

    :goto_42
    sput-boolean v0, Lcom/chuanglan/shanyan_sdk/b/f;->c:Z

    sget-boolean p1, Lcom/chuanglan/shanyan_sdk/b/f;->b:Z

    return p1
.end method

.method public c_(Landroid/content/Context;)Z
    .registers 6

    if-eqz p1, :cond_4d

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/b/f;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_4d

    :cond_b
    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/b/f;->i:Lcom/chuanglan/shanyan_sdk/b/h;

    if-nez v0, :cond_1a

    new-instance v0, Lcom/chuanglan/shanyan_sdk/b/h;

    iget-object v1, p0, Lcom/chuanglan/shanyan_sdk/b/f;->h:Ljava/lang/String;

    sget-object v2, Lcom/chuanglan/shanyan_sdk/b/f;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1, v2}, Lcom/chuanglan/shanyan_sdk/b/h;-><init>(Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V

    iput-object v0, p0, Lcom/chuanglan/shanyan_sdk/b/f;->i:Lcom/chuanglan/shanyan_sdk/b/h;

    :cond_1a
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/chuanglan/shanyan_sdk/b/f;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/chuanglan/shanyan_sdk/b/f;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_39

    :cond_2d
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/chuanglan/shanyan_sdk/b/f;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/chuanglan/shanyan_sdk/b/f;->f:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :goto_39
    iget-object v1, p0, Lcom/chuanglan/shanyan_sdk/b/f;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_46

    iget-object v1, p0, Lcom/chuanglan/shanyan_sdk/b/f;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_46
    iget-object v1, p0, Lcom/chuanglan/shanyan_sdk/b/f;->i:Lcom/chuanglan/shanyan_sdk/b/h;

    invoke-virtual {v1, p1, v0}, Lcom/chuanglan/shanyan_sdk/b/h;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    return p1

    :cond_4d
    :goto_4d
    const/4 p1, 0x0

    return p1
.end method

.method public d(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/b/f;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/chuanglan/shanyan_sdk/b/f;->j:Ljava/lang/String;

    :cond_e
    iget-object p1, p0, Lcom/chuanglan/shanyan_sdk/b/f;->j:Ljava/lang/String;

    return-object p1
.end method

.method public e(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/b/f;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_56

    :try_start_8
    invoke-virtual {p0, p1}, Lcom/chuanglan/shanyan_sdk/b/f;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chuanglan/shanyan_sdk/b/f;->j:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/b/f;->j:Ljava/lang/String;

    const/16 v1, 0x40

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz p1, :cond_56

    array-length v0, p1

    if-lez v0, :cond_56

    const-string v0, "SHA1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-virtual {p1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v2, p1

    :goto_38
    if-ge v1, v2, :cond_50

    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    or-int/lit16 v3, v3, 0x100

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    :cond_50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/chuanglan/shanyan_sdk/b/f;->k:Ljava/lang/String;
    :try_end_56
    .catchall {:try_start_8 .. :try_end_56} :catchall_56

    :catchall_56
    :cond_56
    iget-object p1, p0, Lcom/chuanglan/shanyan_sdk/b/f;->k:Ljava/lang/String;

    return-object p1
.end method
