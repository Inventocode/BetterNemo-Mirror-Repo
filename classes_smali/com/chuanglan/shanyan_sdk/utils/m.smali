.class public Lcom/chuanglan/shanyan_sdk/utils/m;
.super Ljava/lang/Object;


# static fields
.field public static final a:I

.field private static volatile c:Lcom/chuanglan/shanyan_sdk/utils/m;


# instance fields
.field private e:Ljava/io/InputStream;

.field private f:Landroid/view/View;

.field private g:Landroid/graphics/Movie;

.field private h:Landroid/graphics/Bitmap;

.field private i:Landroid/graphics/Canvas;

.field private j:Landroid/os/Handler;

.field private k:Landroid/graphics/Paint;

.field private l:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "#FFFFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/chuanglan/shanyan_sdk/utils/m;->a:I

    const/4 v0, 0x0

    sput-object v0, Lcom/chuanglan/shanyan_sdk/utils/m;->c:Lcom/chuanglan/shanyan_sdk/utils/m;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/chuanglan/shanyan_sdk/utils/m;->j:Landroid/os/Handler;

    new-instance v0, Lcom/chuanglan/shanyan_sdk/utils/m$1;

    invoke-direct {v0, p0}, Lcom/chuanglan/shanyan_sdk/utils/m$1;-><init>(Lcom/chuanglan/shanyan_sdk/utils/m;)V

    iput-object v0, p0, Lcom/chuanglan/shanyan_sdk/utils/m;->l:Ljava/lang/Runnable;

    return-void
.end method

.method public static a()Lcom/chuanglan/shanyan_sdk/utils/m;
    .registers 2

    sget-object v0, Lcom/chuanglan/shanyan_sdk/utils/m;->c:Lcom/chuanglan/shanyan_sdk/utils/m;

    if-nez v0, :cond_17

    const-class v0, Lcom/chuanglan/shanyan_sdk/utils/m;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/chuanglan/shanyan_sdk/utils/m;->c:Lcom/chuanglan/shanyan_sdk/utils/m;

    if-nez v1, :cond_12

    new-instance v1, Lcom/chuanglan/shanyan_sdk/utils/m;

    invoke-direct {v1}, Lcom/chuanglan/shanyan_sdk/utils/m;-><init>()V

    sput-object v1, Lcom/chuanglan/shanyan_sdk/utils/m;->c:Lcom/chuanglan/shanyan_sdk/utils/m;

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
    sget-object v0, Lcom/chuanglan/shanyan_sdk/utils/m;->c:Lcom/chuanglan/shanyan_sdk/utils/m;

    return-object v0
.end method

.method static synthetic a(Lcom/chuanglan/shanyan_sdk/utils/m;)V
    .registers 1

    invoke-direct {p0}, Lcom/chuanglan/shanyan_sdk/utils/m;->d()V

    return-void
.end method

.method static synthetic b(Lcom/chuanglan/shanyan_sdk/utils/m;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/chuanglan/shanyan_sdk/utils/m;->f:Landroid/view/View;

    return-object p0
.end method

.method static synthetic c(Lcom/chuanglan/shanyan_sdk/utils/m;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/chuanglan/shanyan_sdk/utils/m;->l:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic d(Lcom/chuanglan/shanyan_sdk/utils/m;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/chuanglan/shanyan_sdk/utils/m;->j:Landroid/os/Handler;

    return-object p0
.end method

.method private d()V
    .registers 6

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/utils/m;->i:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/chuanglan/shanyan_sdk/utils/m;->k:Landroid/graphics/Paint;

    sget v2, Lcom/chuanglan/shanyan_sdk/utils/m;->a:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/utils/m;->k:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/utils/m;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/utils/m;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/utils/m;->i:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/chuanglan/shanyan_sdk/utils/m;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/utils/m;->g:Landroid/graphics/Movie;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/chuanglan/shanyan_sdk/utils/m;->g:Landroid/graphics/Movie;

    invoke-virtual {v3}, Landroid/graphics/Movie;->duration()I

    move-result v3

    int-to-long v3, v3

    rem-long/2addr v1, v3

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Landroid/graphics/Movie;->setTime(I)Z

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/utils/m;->g:Landroid/graphics/Movie;

    iget-object v1, p0, Lcom/chuanglan/shanyan_sdk/utils/m;->i:Landroid/graphics/Canvas;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/chuanglan/shanyan_sdk/utils/m;->h:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/chuanglan/shanyan_sdk/utils/m;->f:Landroid/view/View;

    if-eqz v1, :cond_52

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_52
    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/utils/m;->i:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;)Lcom/chuanglan/shanyan_sdk/utils/m;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/chuanglan/shanyan_sdk/utils/m;->b(Ljava/io/InputStream;)V

    return-object p0
.end method

.method public a(Landroid/view/View;)V
    .registers 6

    iput-object p1, p0, Lcom/chuanglan/shanyan_sdk/utils/m;->f:Landroid/view/View;

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/utils/m;->e:Ljava/io/InputStream;

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "ExceptionShanYanTask"

    if-nez p1, :cond_17

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "imagetView can not be null"

    aput-object v0, p1, v1

    invoke-static {v3, p1}, Lcom/chuanglan/shanyan_sdk/utils/o;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_17
    invoke-static {v0}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object p1

    iput-object p1, p0, Lcom/chuanglan/shanyan_sdk/utils/m;->g:Landroid/graphics/Movie;

    if-nez p1, :cond_29

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "Illegal movie file"

    aput-object v0, p1, v1

    invoke-static {v3, p1}, Lcom/chuanglan/shanyan_sdk/utils/o;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_29
    invoke-virtual {p1}, Landroid/graphics/Movie;->width()I

    move-result p1

    if-lez p1, :cond_5c

    iget-object p1, p0, Lcom/chuanglan/shanyan_sdk/utils/m;->g:Landroid/graphics/Movie;

    invoke-virtual {p1}, Landroid/graphics/Movie;->height()I

    move-result p1

    if-gtz p1, :cond_38

    goto :goto_5c

    :cond_38
    iget-object p1, p0, Lcom/chuanglan/shanyan_sdk/utils/m;->g:Landroid/graphics/Movie;

    invoke-virtual {p1}, Landroid/graphics/Movie;->width()I

    move-result p1

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/utils/m;->g:Landroid/graphics/Movie;

    invoke-virtual {v0}, Landroid/graphics/Movie;->height()I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/chuanglan/shanyan_sdk/utils/m;->h:Landroid/graphics/Bitmap;

    new-instance p1, Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/utils/m;->h:Landroid/graphics/Bitmap;

    invoke-direct {p1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/chuanglan/shanyan_sdk/utils/m;->i:Landroid/graphics/Canvas;

    iget-object p1, p0, Lcom/chuanglan/shanyan_sdk/utils/m;->j:Landroid/os/Handler;

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/utils/m;->l:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5c
    :goto_5c
    return-void
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/utils/m;->f:Landroid/view/View;

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chuanglan/shanyan_sdk/utils/m;->f:Landroid/view/View;

    :cond_7
    return-void
.end method

.method public b(Ljava/io/InputStream;)V
    .registers 3

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/utils/m;->e:Ljava/io/InputStream;

    if-eqz v0, :cond_c

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_c
    :goto_c
    iput-object p1, p0, Lcom/chuanglan/shanyan_sdk/utils/m;->e:Ljava/io/InputStream;

    return-void
.end method
