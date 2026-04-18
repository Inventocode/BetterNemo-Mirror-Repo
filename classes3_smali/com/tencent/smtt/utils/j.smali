.class public Lcom/tencent/smtt/utils/j;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String; = null

.field private static b:Ljava/lang/String; = "GA"

.field private static c:Ljava/lang/String; = "GE"

.field private static d:Ljava/lang/String; = "9422"

.field private static e:Ljava/lang/String; = "0"

.field private static f:Ljava/lang/String; = ""

.field private static g:Z = false

.field private static h:Z = false

.field private static i:Z = false


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private static a()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "[ |\\/|\\_|\\&|\\|]"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 11

    sget-object v0, Lcom/tencent/smtt/utils/j;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object p0, Lcom/tencent/smtt/utils/j;->a:Ljava/lang/String;

    return-object p0

    :cond_b
    invoke-static {p0}, Lcom/tencent/smtt/sdk/WebView;->getTbsSDKVersion(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/tencent/smtt/utils/j;->b:Ljava/lang/String;

    sget-object v5, Lcom/tencent/smtt/utils/j;->c:Ljava/lang/String;

    sget-object v6, Lcom/tencent/smtt/utils/j;->d:Ljava/lang/String;

    sget-object v7, Lcom/tencent/smtt/utils/j;->e:Ljava/lang/String;

    sget-object v8, Lcom/tencent/smtt/utils/j;->f:Ljava/lang/String;

    sget-boolean v9, Lcom/tencent/smtt/utils/j;->g:Z

    const-string v3, "0"

    move-object v1, p0

    invoke-static/range {v1 .. v9}, Lcom/tencent/smtt/utils/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/tencent/smtt/utils/j;->a:Ljava/lang/String;

    return-object p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 20

    const-string v1, "ISO8859-1"

    const-string v2, "UTF-8"

    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/tencent/smtt/utils/j;->b(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "*"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/tencent/smtt/utils/j;->c(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :try_start_27
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_3c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_27 .. :try_end_3c} :catch_4a

    :try_start_3c
    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_45

    move-object/from16 v0, p7

    goto :goto_50

    :cond_45
    iget-object v0, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_47
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3c .. :try_end_47} :catch_48

    goto :goto_50

    :catch_48
    move-exception v0

    goto :goto_4c

    :catch_4a
    move-exception v0

    move-object v7, v3

    :goto_4c
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v0, v3

    :goto_50
    invoke-static {v7}, Lcom/tencent/smtt/utils/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "QB"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, "PAD"

    if-eqz v8, :cond_61

    if-eqz p8, :cond_68

    goto :goto_6a

    :cond_61
    invoke-static {p0}, Lcom/tencent/smtt/utils/j;->d(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_68

    goto :goto_6a

    :cond_68
    const-string v9, "PHONE"

    :goto_6a
    const-string v8, "QV"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "3"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "PL"

    const-string v10, "ADR"

    invoke-static {v4, v8, v10}, Lcom/tencent/smtt/utils/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "PR"

    invoke-static {v4, v8, v6}, Lcom/tencent/smtt/utils/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "PP"

    invoke-static {v4, v6, v7}, Lcom/tencent/smtt/utils/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "PPVN"

    invoke-static {v4, v6, v0}, Lcom/tencent/smtt/utils/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9b

    const-string v0, "TBSVC"

    move-object v6, p1

    invoke-static {v4, v0, p1}, Lcom/tencent/smtt/utils/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9b
    const-string v0, "CO"

    const-string v6, "SYS"

    invoke-static {v4, v0, v6}, Lcom/tencent/smtt/utils/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ae

    const-string v0, "COVC"

    move-object v6, p2

    invoke-static {v4, v0, p2}, Lcom/tencent/smtt/utils/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_ae
    const-string v0, "PB"

    move-object v6, p4

    invoke-static {v4, v0, p4}, Lcom/tencent/smtt/utils/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "VE"

    move-object v6, p3

    invoke-static {v4, v0, p3}, Lcom/tencent/smtt/utils/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DE"

    invoke-static {v4, v0, v9}, Lcom/tencent/smtt/utils/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c8

    const-string v0, "0"

    goto :goto_ca

    :cond_c8
    move-object/from16 v0, p6

    :goto_ca
    const-string v6, "CHID"

    invoke-static {v4, v6, v0}, Lcom/tencent/smtt/utils/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "LCID"

    move-object/from16 v6, p5

    invoke-static {v4, v0, v6}, Lcom/tencent/smtt/utils/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/smtt/utils/j;->a()Ljava/lang/String;

    move-result-object v0

    :try_start_da
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-direct {v6, v7, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_e3
    .catch Ljava/lang/Exception; {:try_start_da .. :try_end_e3} :catch_e5

    move-object v0, v6

    goto :goto_e6

    :catch_e5
    nop

    :goto_e6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_f1

    const-string v6, "MO"

    invoke-static {v4, v6, v0}, Lcom/tencent/smtt/utils/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_f1
    const-string v0, "RL"

    invoke-static {v4, v0, v5}, Lcom/tencent/smtt/utils/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    :try_start_f8
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v5, v2, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_101
    .catch Ljava/lang/Exception; {:try_start_f8 .. :try_end_101} :catch_103

    move-object v0, v5

    goto :goto_104

    :catch_103
    nop

    :goto_104
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10f

    const-string v1, "OS"

    invoke-static {v4, v1, v0}, Lcom/tencent/smtt/utils/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_10f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "API"

    invoke-static {v4, v1, v0}, Lcom/tencent/smtt/utils/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string v0, "com.tencent.mm"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string p0, "WX"

    return-object p0

    :cond_b
    const-string v0, "com.tencent.mobileqq"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string p0, "QQ"

    return-object p0

    :cond_16
    const-string v0, "com.qzone"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string p0, "QZ"

    return-object p0

    :cond_21
    const-string v0, "com.tencent.mtt"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2c

    const-string p0, "QB"

    return-object p0

    :cond_2c
    const-string p0, "TRD"

    return-object p0
.end method

.method private static a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "&"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static b(Landroid/content/Context;)I
    .registers 2

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    if-eqz p0, :cond_13

    invoke-virtual {p0}, Landroid/view/Display;->getWidth()I

    move-result p0

    return p0

    :cond_13
    const/4 p0, -0x1

    return p0
.end method

.method private static c(Landroid/content/Context;)I
    .registers 2

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    if-eqz p0, :cond_13

    invoke-virtual {p0}, Landroid/view/Display;->getHeight()I

    move-result p0

    return p0

    :cond_13
    const/4 p0, -0x1

    return p0
.end method

.method private static d(Landroid/content/Context;)Z
    .registers 4

    sget-boolean v0, Lcom/tencent/smtt/utils/j;->h:Z

    if-eqz v0, :cond_7

    sget-boolean p0, Lcom/tencent/smtt/utils/j;->i:Z

    return p0

    :cond_7
    const/4 v0, 0x0

    :try_start_8
    invoke-static {p0}, Lcom/tencent/smtt/utils/j;->b(Landroid/content/Context;)I

    move-result v1

    invoke-static {p0}, Lcom/tencent/smtt/utils/j;->c(Landroid/content/Context;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    mul-int/lit16 v1, v1, 0xa0

    invoke-static {p0}, Lcom/tencent/smtt/utils/j;->e(Landroid/content/Context;)I

    move-result p0

    div-int/2addr v1, p0

    const/16 p0, 0x2bc

    const/4 v2, 0x1

    if-lt v1, p0, :cond_22

    const/4 p0, 0x1

    goto :goto_23

    :cond_22
    const/4 p0, 0x0

    :goto_23
    sput-boolean p0, Lcom/tencent/smtt/utils/j;->i:Z

    sput-boolean v2, Lcom/tencent/smtt/utils/j;->h:Z
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_28

    return p0

    :catchall_28
    return v0
.end method

.method private static e(Landroid/content/Context;)I
    .registers 2

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    if-eqz p0, :cond_19

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget p0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    return p0

    :cond_19
    const/16 p0, 0xa0

    return p0
.end method
