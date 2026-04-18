.class public Lcom/geetest/sdk/dialog/views/WebviewBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geetest/sdk/dialog/views/WebviewBuilder$JSInterface;,
        Lcom/geetest/sdk/dialog/views/WebviewBuilder$c;,
        Lcom/geetest/sdk/dialog/views/WebviewBuilder$b;
    }
.end annotation


# static fields
.field private static final m:Ljava/lang/String; = "WebviewBuilder"

.field public static n:I

.field public static o:I


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/geetest/sdk/aa;

.field private c:Lcom/geetest/sdk/model/beans/b;

.field private d:Lcom/geetest/sdk/GT3ConfigBean;

.field private e:I

.field private f:I

.field private g:Lcom/geetest/sdk/g;

.field private h:I

.field private i:Lcom/geetest/sdk/dialog/views/GtWebView;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/Runnable;

.field private l:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/geetest/sdk/g;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->i:Lcom/geetest/sdk/dialog/views/GtWebView;

    .line 53
    new-instance v0, Lcom/geetest/sdk/dialog/views/WebviewBuilder$b;

    invoke-direct {v0, p0}, Lcom/geetest/sdk/dialog/views/WebviewBuilder$b;-><init>(Lcom/geetest/sdk/dialog/views/WebviewBuilder;)V

    iput-object v0, p0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->l:Landroid/os/Handler;

    .line 54
    iput-object p1, p0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->a:Landroid/content/Context;

    .line 55
    new-instance p1, Lcom/geetest/sdk/aa;

    invoke-direct {p1}, Lcom/geetest/sdk/aa;-><init>()V

    iput-object p1, p0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->b:Lcom/geetest/sdk/aa;

    .line 56
    iput-object p2, p0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->g:Lcom/geetest/sdk/g;

    return-void
.end method

.method static synthetic a(Lcom/geetest/sdk/dialog/views/WebviewBuilder;I)I
    .registers 2

    .line 3
    iput p1, p0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->h:I

    return p1
.end method

.method static synthetic a(Lcom/geetest/sdk/dialog/views/WebviewBuilder;)Lcom/geetest/sdk/aa;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->b:Lcom/geetest/sdk/aa;

    return-object p0
.end method

.method static synthetic a(Lcom/geetest/sdk/dialog/views/WebviewBuilder;Lcom/geetest/sdk/dialog/views/GtWebView;)Lcom/geetest/sdk/dialog/views/GtWebView;
    .registers 2

    .line 2
    iput-object p1, p0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->i:Lcom/geetest/sdk/dialog/views/GtWebView;

    return-object p1
.end method

.method static synthetic b(Lcom/geetest/sdk/dialog/views/WebviewBuilder;)Lcom/geetest/sdk/g;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->g:Lcom/geetest/sdk/g;

    return-object p0
.end method

.method static synthetic c(Lcom/geetest/sdk/dialog/views/WebviewBuilder;)Lcom/geetest/sdk/model/beans/b;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->c:Lcom/geetest/sdk/model/beans/b;

    return-object p0
.end method

.method static synthetic d(Lcom/geetest/sdk/dialog/views/WebviewBuilder;)Landroid/os/Handler;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->l:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic e(Lcom/geetest/sdk/dialog/views/WebviewBuilder;)Landroid/content/Context;
    .registers 1

    .line 2
    iget-object p0, p0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic e()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->m:Ljava/lang/String;

    return-object v0
.end method

.method private f()F
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method static synthetic f(Lcom/geetest/sdk/dialog/views/WebviewBuilder;)Lcom/geetest/sdk/GT3ConfigBean;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->d:Lcom/geetest/sdk/GT3ConfigBean;

    return-object p0
.end method

.method private g()I
    .registers 20

    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/geetest/sdk/utils/i;->a(Landroid/content/Context;)I

    move-result v1

    .line 3
    iget-object v2, v0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/geetest/sdk/utils/i;->b(Landroid/content/Context;)I

    move-result v2

    .line 6
    iget-object v3, v0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->a:Landroid/content/Context;

    const/high16 v4, 0x43960000  # 300.0f

    invoke-static {v3, v4}, Lcom/geetest/sdk/utils/g;->a(Landroid/content/Context;F)I

    move-result v3

    .line 7
    iget-object v4, v0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->a:Landroid/content/Context;

    const v5, 0x43898000  # 275.0f

    invoke-static {v4, v5}, Lcom/geetest/sdk/utils/g;->a(Landroid/content/Context;F)I

    move-result v4

    .line 8
    iget-object v5, v0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->a:Landroid/content/Context;

    const/high16 v6, 0x43cd0000  # 410.0f

    invoke-static {v5, v6}, Lcom/geetest/sdk/utils/g;->a(Landroid/content/Context;F)I

    move-result v5

    .line 9
    iget-object v6, v0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->a:Landroid/content/Context;

    const/high16 v7, 0x43ae0000  # 348.0f

    invoke-static {v6, v7}, Lcom/geetest/sdk/utils/g;->a(Landroid/content/Context;F)I

    move-result v6

    .line 11
    sget-object v7, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->m:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "widthScreen: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->a:Landroid/content/Context;

    int-to-float v10, v2

    invoke-static {v9, v10}, Lcom/geetest/sdk/utils/g;->b(Landroid/content/Context;F)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/geetest/sdk/utils/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ge v1, v2, :cond_53

    mul-int/lit8 v8, v1, 0x4

    .line 15
    div-int/lit8 v8, v8, 0x5

    goto :goto_57

    :cond_53
    mul-int/lit8 v8, v2, 0x4

    .line 18
    div-int/lit8 v8, v8, 0x5

    .line 21
    :goto_57
    iget-object v9, v0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->c:Lcom/geetest/sdk/model/beans/b;

    invoke-virtual {v9}, Lcom/geetest/sdk/model/beans/b;->o()Ljava/lang/String;

    move-result-object v9

    const-string v10, "beeline"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/16 v10, 0x64

    if-nez v9, :cond_17f

    iget v9, v0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->h:I

    const/16 v11, 0x3c

    if-gt v9, v11, :cond_6f

    goto/16 :goto_17f

    :cond_6f
    if-lt v9, v10, :cond_159

    .line 27
    iget-object v3, v0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->c:Lcom/geetest/sdk/model/beans/b;

    invoke-virtual {v3}, Lcom/geetest/sdk/model/beans/b;->o()Ljava/lang/String;

    move-result-object v3

    const-string v9, "slide"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_108

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x13

    if-ge v3, v9, :cond_108

    .line 30
    invoke-direct/range {p0 .. p0}, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->f()F

    move-result v3

    .line 31
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "scale: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/geetest/sdk/utils/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-object v5, v0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->a:Landroid/content/Context;

    const/high16 v9, 0x43520000  # 210.0f

    invoke-static {v5, v9}, Lcom/geetest/sdk/utils/g;->a(Landroid/content/Context;F)I

    move-result v5

    .line 33
    iget-object v9, v0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->a:Landroid/content/Context;

    const/high16 v11, 0x43660000  # 230.0f

    invoke-static {v9, v11}, Lcom/geetest/sdk/utils/g;->a(Landroid/content/Context;F)I

    move-result v9

    .line 34
    iget-object v11, v0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->a:Landroid/content/Context;

    const/high16 v12, 0x437a0000  # 250.0f

    invoke-static {v11, v12}, Lcom/geetest/sdk/utils/g;->a(Landroid/content/Context;F)I

    move-result v11

    .line 35
    iget-object v12, v0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->a:Landroid/content/Context;

    const/high16 v13, 0x43870000  # 270.0f

    invoke-static {v12, v13}, Lcom/geetest/sdk/utils/g;->a(Landroid/content/Context;F)I

    move-result v12

    .line 36
    iget-object v13, v0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->a:Landroid/content/Context;

    const/high16 v14, 0x438c0000  # 280.0f

    invoke-static {v13, v14}, Lcom/geetest/sdk/utils/g;->a(Landroid/content/Context;F)I

    move-result v13

    .line 37
    iget-object v14, v0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->a:Landroid/content/Context;

    const/high16 v15, 0x43aa0000  # 340.0f

    invoke-static {v14, v15}, Lcom/geetest/sdk/utils/g;->a(Landroid/content/Context;F)I

    move-result v14

    move/from16 v16, v11

    float-to-double v10, v3

    const-wide/high16 v17, 0x3ff8000000000000L  # 1.5

    cmpg-double v3, v10, v17

    if-gtz v3, :cond_de

    if-ge v8, v5, :cond_d9

    goto :goto_da

    :cond_d9
    move v5, v8

    :goto_da
    if-le v8, v4, :cond_136

    goto/16 :goto_140

    :cond_de
    const-wide/high16 v3, 0x4000000000000000L  # 2.0

    cmpg-double v5, v10, v3

    if-gtz v5, :cond_ef

    if-ge v8, v9, :cond_e7

    goto :goto_e8

    :cond_e7
    move v9, v8

    :goto_e8
    if-le v8, v13, :cond_ed

    move v4, v13

    goto/16 :goto_140

    :cond_ed
    move v4, v9

    goto :goto_140

    :cond_ef
    const-wide/high16 v3, 0x4008000000000000L  # 3.0

    cmpg-double v5, v10, v3

    if-gtz v5, :cond_100

    move/from16 v3, v16

    if-ge v8, v3, :cond_fb

    move v4, v3

    goto :goto_fc

    :cond_fb
    move v4, v8

    :goto_fc
    if-le v8, v14, :cond_140

    move v4, v14

    goto :goto_140

    :cond_100
    if-ge v8, v12, :cond_104

    move v4, v12

    goto :goto_105

    :cond_104
    move v4, v8

    :goto_105
    if-le v8, v6, :cond_140

    goto :goto_13d

    :cond_108
    if-ge v1, v2, :cond_13b

    .line 75
    iget-object v3, v0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->a:Landroid/content/Context;

    int-to-float v4, v1

    invoke-static {v3, v4}, Lcom/geetest/sdk/utils/g;->b(Landroid/content/Context;F)I

    move-result v4

    add-int/lit8 v4, v4, -0x2c

    int-to-float v4, v4

    invoke-static {v3, v4}, Lcom/geetest/sdk/utils/g;->a(Landroid/content/Context;F)I

    move-result v4

    .line 77
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "limitationWidth:  "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/geetest/sdk/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v3, v0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/geetest/sdk/utils/h;->b(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_138

    if-le v4, v5, :cond_140

    :cond_136
    move v4, v5

    goto :goto_140

    :cond_138
    if-le v4, v6, :cond_140

    goto :goto_13d

    :cond_13b
    if-le v8, v6, :cond_13f

    :goto_13d
    move v4, v6

    goto :goto_140

    :cond_13f
    move v4, v8

    :cond_140
    :goto_140
    if-ge v1, v2, :cond_14c

    .line 108
    iput v4, v0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->f:I

    mul-int/lit8 v1, v4, 0x64

    .line 109
    iget v2, v0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->h:I

    div-int/2addr v1, v2

    iput v1, v0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->e:I

    goto :goto_157

    .line 111
    :cond_14c
    iput v4, v0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->e:I

    .line 112
    iget v1, v0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->h:I

    mul-int v1, v1, v4

    const/16 v2, 0x64

    div-int/2addr v1, v2

    iput v1, v0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->f:I

    :goto_157
    move v8, v4

    goto :goto_18a

    :cond_159
    if-ge v1, v2, :cond_16e

    .line 118
    iget-object v2, v0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->a:Landroid/content/Context;

    int-to-float v1, v1

    invoke-static {v2, v1}, Lcom/geetest/sdk/utils/g;->b(Landroid/content/Context;F)I

    move-result v1

    add-int/lit8 v1, v1, -0x2c

    int-to-float v1, v1

    invoke-static {v2, v1}, Lcom/geetest/sdk/utils/g;->a(Landroid/content/Context;F)I

    move-result v1

    if-le v1, v6, :cond_16c

    goto :goto_172

    :cond_16c
    move v6, v1

    goto :goto_172

    :cond_16e
    if-le v8, v6, :cond_171

    goto :goto_172

    :cond_171
    move v6, v8

    .line 133
    :goto_172
    iput v6, v0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->e:I

    .line 134
    iget v1, v0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->h:I

    mul-int v1, v1, v6

    const/16 v2, 0x64

    div-int/2addr v1, v2

    iput v1, v0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->f:I

    move v8, v6

    goto :goto_18a

    :cond_17f
    :goto_17f
    const/16 v2, 0x64

    .line 135
    iput v3, v0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->e:I

    .line 136
    iget v1, v0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->h:I

    mul-int v3, v3, v1

    div-int/2addr v3, v2

    iput v3, v0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->f:I

    .line 251
    :goto_18a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "widthPX: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/geetest/sdk/utils/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "widthDP: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->a:Landroid/content/Context;

    int-to-float v3, v8

    invoke-static {v2, v3}, Lcom/geetest/sdk/utils/g;->b(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/geetest/sdk/utils/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "height:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/geetest/sdk/utils/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWidth:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/geetest/sdk/utils/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHeight:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/geetest/sdk/utils/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deviceWidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/geetest/sdk/utils/i;->b(Landroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/geetest/sdk/utils/g;->b(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/geetest/sdk/utils/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deviceHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/geetest/sdk/utils/i;->a(Landroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/geetest/sdk/utils/g;->b(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/geetest/sdk/utils/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v8
.end method

.method static synthetic g(Lcom/geetest/sdk/dialog/views/WebviewBuilder;)Lcom/geetest/sdk/dialog/views/GtWebView;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->i:Lcom/geetest/sdk/dialog/views/GtWebView;

    return-object p0
.end method

.method static synthetic h(Lcom/geetest/sdk/dialog/views/WebviewBuilder;)Ljava/lang/Runnable;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->k:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic i(Lcom/geetest/sdk/dialog/views/WebviewBuilder;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->h:I

    return p0
.end method


# virtual methods
.method public a()Lcom/geetest/sdk/dialog/views/GtWebView;
    .registers 10

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 8
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->c:Lcom/geetest/sdk/model/beans/b;

    invoke-virtual {v0}, Lcom/geetest/sdk/model/beans/b;->m()I

    move-result v0

    iput v0, p0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->h:I

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->c:Lcom/geetest/sdk/model/beans/b;

    invoke-virtual {v0}, Lcom/geetest/sdk/model/beans/b;->k()Lcom/geetest/sdk/model/beans/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/geetest/sdk/model/beans/h;->a()Ljava/util/Map;

    move-result-object v0

    const-string v1, "&"

    const-string v2, "="

    const-string v3, ""

    if-eqz v0, :cond_a3

    .line 15
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_a3

    .line 16
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v4, v3

    move-object v5, v4

    :cond_34
    :goto_34
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 17
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_34

    .line 18
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "&aspect_radio_"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 20
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->c:Lcom/geetest/sdk/model/beans/b;

    invoke-virtual {v4}, Lcom/geetest/sdk/model/beans/b;->k()Lcom/geetest/sdk/model/beans/h;

    move-result-object v4

    invoke-virtual {v4}, Lcom/geetest/sdk/model/beans/h;->b()Lorg/json/JSONObject;

    move-result-object v4

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_34

    :cond_a3
    move-object v4, v3

    move-object v5, v4

    .line 24
    :cond_a5
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->c:Lcom/geetest/sdk/model/beans/b;

    invoke-virtual {v0}, Lcom/geetest/sdk/model/beans/b;->f()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_f9

    .line 25
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_f9

    .line 26
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v6, v3

    :cond_bc
    :goto_bc
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_fa

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 27
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_bc

    .line 28
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_bc

    :cond_f9
    move-object v6, v3

    .line 32
    :cond_fa
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "?gt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->c:Lcom/geetest/sdk/model/beans/b;

    .line 33
    invoke-virtual {v1}, Lcom/geetest/sdk/model/beans/b;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&challenge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->c:Lcom/geetest/sdk/model/beans/b;

    .line 34
    invoke-virtual {v1}, Lcom/geetest/sdk/model/beans/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&lang="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->c:Lcom/geetest/sdk/model/beans/b;

    .line 35
    invoke-virtual {v1}, Lcom/geetest/sdk/model/beans/b;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&title=&type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->c:Lcom/geetest/sdk/model/beans/b;

    .line 37
    invoke-virtual {v1}, Lcom/geetest/sdk/model/beans/b;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&api_server="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->c:Lcom/geetest/sdk/model/beans/b;

    .line 39
    invoke-virtual {v1}, Lcom/geetest/sdk/model/beans/b;->j()Lcom/geetest/sdk/model/beans/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/geetest/sdk/model/beans/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&static_servers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->c:Lcom/geetest/sdk/model/beans/b;

    .line 40
    invoke-virtual {v1}, Lcom/geetest/sdk/model/beans/b;->j()Lcom/geetest/sdk/model/beans/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/geetest/sdk/model/beans/g;->c()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&width=100%&timeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->c:Lcom/geetest/sdk/model/beans/b;

    .line 42
    invoke-virtual {v1}, Lcom/geetest/sdk/model/beans/b;->s()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "&debug="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->c:Lcom/geetest/sdk/model/beans/b;

    .line 43
    invoke-virtual {v1}, Lcom/geetest/sdk/model/beans/b;->t()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->j:Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->c:Lcom/geetest/sdk/model/beans/b;

    invoke-virtual {v0}, Lcom/geetest/sdk/model/beans/b;->j()Lcom/geetest/sdk/model/beans/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/geetest/sdk/model/beans/g;->c()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1cf

    .line 52
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1cf

    .line 53
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/geetest/sdk/utils/d;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v4, v1

    const-string v0, "%s/static/appweb/app3-index.html"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->j:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1e7

    .line 55
    :cond_1cf
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/geetest/sdk/utils/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "static.geetest.com/static/appweb/app3-index.html"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->j:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    :goto_1e7
    :try_start_1e7
    new-instance v3, Lcom/geetest/sdk/dialog/views/GtWebView;

    iget-object v4, p0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/geetest/sdk/dialog/views/GtWebView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->i:Lcom/geetest/sdk/dialog/views/GtWebView;

    .line 67
    invoke-virtual {v3}, Lcom/geetest/sdk/dialog/views/GtWebView;->a()V

    .line 69
    iget-object v3, p0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->l:Landroid/os/Handler;

    if-eqz v3, :cond_20e

    .line 70
    new-instance v3, Lcom/geetest/sdk/dialog/views/WebviewBuilder$c;

    invoke-direct {v3, p0}, Lcom/geetest/sdk/dialog/views/WebviewBuilder$c;-><init>(Lcom/geetest/sdk/dialog/views/WebviewBuilder;)V

    iput-object v3, p0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->k:Ljava/lang/Runnable;

    .line 71
    iget-object v4, p0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->l:Landroid/os/Handler;

    iget-object v5, p0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->c:Lcom/geetest/sdk/model/beans/b;

    invoke-virtual {v5}, Lcom/geetest/sdk/model/beans/b;->p()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 74
    :cond_20e
    iget-object v3, p0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->i:Lcom/geetest/sdk/dialog/views/GtWebView;

    iget-object v4, p0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->b:Lcom/geetest/sdk/aa;

    invoke-virtual {v3, v4}, Lcom/geetest/sdk/dialog/views/GtWebView;->setObservable(Lcom/geetest/sdk/aa;)V

    .line 75
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 76
    iget-object v4, p0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->i:Lcom/geetest/sdk/dialog/views/GtWebView;

    invoke-virtual {v4, v3}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    iget-object v3, p0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->i:Lcom/geetest/sdk/dialog/views/GtWebView;

    invoke-virtual {v3, v0}, Lcom/geetest/sdk/dialog/views/GtWebView;->setStaticUrl(Ljava/lang/String;)V

    .line 78
    iget-object v3, p0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->i:Lcom/geetest/sdk/dialog/views/GtWebView;

    iget-object v4, p0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->c:Lcom/geetest/sdk/model/beans/b;

    invoke-virtual {v3, v4}, Lcom/geetest/sdk/dialog/views/GtWebView;->setDataBean(Lcom/geetest/sdk/model/beans/b;)V

    .line 79
    iget-object v3, p0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->i:Lcom/geetest/sdk/dialog/views/GtWebView;

    iget-object v4, p0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->l:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Lcom/geetest/sdk/dialog/views/GtWebView;->setMyHandler(Landroid/os/Handler;)V

    .line 80
    iget-object v3, p0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->i:Lcom/geetest/sdk/dialog/views/GtWebView;

    iget-object v4, p0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->k:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lcom/geetest/sdk/dialog/views/GtWebView;->setRunnable(Ljava/lang/Runnable;)V

    .line 82
    iget-object v3, p0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->i:Lcom/geetest/sdk/dialog/views/GtWebView;

    invoke-virtual {v3, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->i:Lcom/geetest/sdk/dialog/views/GtWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->buildLayer()V

    .line 85
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->i:Lcom/geetest/sdk/dialog/views/GtWebView;

    new-instance v3, Lcom/geetest/sdk/dialog/views/WebviewBuilder$JSInterface;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/geetest/sdk/dialog/views/WebviewBuilder$JSInterface;-><init>(Lcom/geetest/sdk/dialog/views/WebviewBuilder;Lcom/geetest/sdk/dialog/views/WebviewBuilder$a;)V

    const-string v4, "JSInterface"

    invoke-virtual {v0, v3, v4}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->i:Lcom/geetest/sdk/dialog/views/GtWebView;

    iget-object v3, p0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->c:Lcom/geetest/sdk/model/beans/b;

    invoke-virtual {v3}, Lcom/geetest/sdk/model/beans/b;->p()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/geetest/sdk/dialog/views/GtWebView;->setTimeout(I)V

    .line 88
    invoke-virtual {p0}, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->d()V
    :try_end_25f
    .catch Ljava/lang/Exception; {:try_start_1e7 .. :try_end_25f} :catch_260

    goto :goto_2c1

    :catch_260
    move-exception v0

    .line 91
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 92
    sget-object v3, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->m:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "默认webview内核丢失，错误码：204_3-->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/geetest/sdk/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    array-length v4, v3

    :goto_283
    if-ge v1, v4, :cond_293

    aget-object v5, v3, v1

    .line 94
    sget-object v6, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->m:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/geetest/sdk/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_283

    .line 97
    :cond_293
    iget-object v1, p0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->l:Landroid/os/Handler;

    if-eqz v1, :cond_2a3

    .line 99
    :try_start_297
    iget-object v3, p0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->k:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 100
    iget-object v1, p0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->l:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_2a1
    .catch Ljava/lang/Exception; {:try_start_297 .. :try_end_2a1} :catch_2a2

    goto :goto_2a3

    :catch_2a2
    nop

    .line 105
    :cond_2a3
    :goto_2a3
    iget-object v1, p0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->b:Lcom/geetest/sdk/aa;

    if-eqz v1, :cond_2c1

    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "webview crate error -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "204_3"

    invoke-virtual {v1, v2, v0}, Lcom/geetest/sdk/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_2c1
    :goto_2c1
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->i:Lcom/geetest/sdk/dialog/views/GtWebView;

    return-object v0
.end method

.method public a(Lcom/geetest/sdk/GT3ConfigBean;)V
    .registers 2

    .line 6
    iput-object p1, p0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->d:Lcom/geetest/sdk/GT3ConfigBean;

    return-void
.end method

.method public a(Lcom/geetest/sdk/ab;)V
    .registers 3

    .line 4
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->b:Lcom/geetest/sdk/aa;

    invoke-virtual {v0, p1}, Lcom/geetest/sdk/aa;->a(Lcom/geetest/sdk/ab;)V

    return-void
.end method

.method public a(Lcom/geetest/sdk/model/beans/b;)V
    .registers 2

    .line 5
    iput-object p1, p0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->c:Lcom/geetest/sdk/model/beans/b;

    return-void
.end method

.method public b()V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->i:Lcom/geetest/sdk/dialog/views/GtWebView;

    if-eqz v0, :cond_c

    .line 3
    new-instance v1, Lcom/geetest/sdk/dialog/views/WebviewBuilder$a;

    invoke-direct {v1, p0}, Lcom/geetest/sdk/dialog/views/WebviewBuilder$a;-><init>(Lcom/geetest/sdk/dialog/views/WebviewBuilder;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    .line 19
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->l:Landroid/os/Handler;

    if-eqz v0, :cond_1e

    .line 20
    iget-object v1, p0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 21
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->l:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->l:Landroid/os/Handler;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1e} :catch_1e

    :catch_1e
    :cond_1e
    return-void
.end method

.method public c()V
    .registers 4

    .line 2
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->i:Lcom/geetest/sdk/dialog/views/GtWebView;

    if-eqz v0, :cond_19

    const/16 v1, 0x11

    new-array v1, v1, [F

    .line 3
    fill-array-data v1, :array_1a

    const-string v2, "translationX"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 5
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_19
    return-void

    :array_1a
    .array-data 4
        0x0
        0x40000000  # 2.0f
        0x40800000  # 4.0f
        0x40000000  # 2.0f
        0x0
        -0x40000000  # -2.0f
        -0x3f800000  # -4.0f
        -0x40000000  # -2.0f
        0x0
        0x40000000  # 2.0f
        0x40800000  # 4.0f
        0x40000000  # 2.0f
        0x0
        -0x40000000  # -2.0f
        -0x3f800000  # -4.0f
        -0x40000000  # -2.0f
        0x0
    .end array-data
.end method

.method public d()V
    .registers 3

    .line 2
    invoke-direct {p0}, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->g()I

    .line 3
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->i:Lcom/geetest/sdk/dialog/views/GtWebView;

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 5
    iget v0, p0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->e:I

    sput v0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->n:I

    .line 6
    iget v0, p0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->f:I

    sput v0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->o:I

    .line 8
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->i:Lcom/geetest/sdk/dialog/views/GtWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 9
    sget v1, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->n:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 10
    sget v1, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->o:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 11
    iget-object v1, p0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->i:Lcom/geetest/sdk/dialog/views/GtWebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_28
    return-void
.end method
