.class public Lcom/chuanglan/shanyan_sdk/utils/n;
.super Ljava/lang/Object;


# static fields
.field private static volatile d:Lcom/chuanglan/shanyan_sdk/utils/n;


# instance fields
.field private e:Landroid/content/Context;

.field private f:Landroid/content/res/Resources;

.field private g:Landroid/view/LayoutInflater;

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chuanglan/shanyan_sdk/utils/n;->e:Landroid/content/Context;

    const/4 v0, 0x0

    iput v0, p0, Lcom/chuanglan/shanyan_sdk/utils/n;->h:I

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/chuanglan/shanyan_sdk/utils/n;->e:Landroid/content/Context;

    :cond_11
    iget-object p1, p0, Lcom/chuanglan/shanyan_sdk/utils/n;->e:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/chuanglan/shanyan_sdk/utils/n;->f:Landroid/content/res/Resources;

    iget-object p1, p0, Lcom/chuanglan/shanyan_sdk/utils/n;->e:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/chuanglan/shanyan_sdk/utils/n;->g:Landroid/view/LayoutInflater;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/chuanglan/shanyan_sdk/utils/n;
    .registers 4

    sget-object v0, Lcom/chuanglan/shanyan_sdk/utils/n;->d:Lcom/chuanglan/shanyan_sdk/utils/n;

    if-nez v0, :cond_20

    :try_start_4
    new-instance v0, Lcom/chuanglan/shanyan_sdk/utils/n;

    invoke-direct {v0, p0}, Lcom/chuanglan/shanyan_sdk/utils/n;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/chuanglan/shanyan_sdk/utils/n;->d:Lcom/chuanglan/shanyan_sdk/utils/n;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_c

    goto :goto_20

    :catch_c
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "LCMResource  Exception_e="

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string p0, "ExceptionShanYanTask"

    invoke-static {p0, v0}, Lcom/chuanglan/shanyan_sdk/utils/o;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_20
    :goto_20
    sget-object p0, Lcom/chuanglan/shanyan_sdk/utils/n;->d:Lcom/chuanglan/shanyan_sdk/utils/n;

    return-object p0
.end method


# virtual methods
.method public b(Ljava/lang/String;)Landroid/view/View;
    .registers 6

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/utils/n;->f:Landroid/content/res/Resources;

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    iget-object v2, p0, Lcom/chuanglan/shanyan_sdk/utils/n;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "layout"

    invoke-virtual {v0, p1, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/utils/n;->g:Landroid/view/LayoutInflater;

    if-eqz v0, :cond_1c

    if-eqz p1, :cond_1c

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_1c
    return-object v1
.end method

.method public d(Ljava/lang/String;)I
    .registers 5

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/utils/n;->f:Landroid/content/res/Resources;

    if-eqz v0, :cond_11

    iget-object v1, p0, Lcom/chuanglan/shanyan_sdk/utils/n;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_11
    iget p1, p0, Lcom/chuanglan/shanyan_sdk/utils/n;->h:I

    return p1
.end method

.method public e(Ljava/lang/String;)I
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/utils/n;->f:Landroid/content/res/Resources;

    if-eqz v0, :cond_11

    const-string v1, "anim"

    iget-object v2, p0, Lcom/chuanglan/shanyan_sdk/utils/n;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_11
    iget p1, p0, Lcom/chuanglan/shanyan_sdk/utils/n;->h:I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    return p1

    :catch_14
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    iget p1, p0, Lcom/chuanglan/shanyan_sdk/utils/n;->h:I

    return p1
.end method
