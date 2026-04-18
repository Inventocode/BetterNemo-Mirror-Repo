.class public abstract Lcom/geetest/sdk/f;
.super Lcom/geetest/sdk/e;
.source "SourceFile"


# instance fields
.field private e:Landroid/content/Context;

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/geetest/sdk/e;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p1, p0, Lcom/geetest/sdk/f;->e:Landroid/content/Context;

    return-void
.end method

.method private c()V
    .registers 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/geetest/sdk/f;->e:Landroid/content/Context;

    if-nez v0, :cond_c

    const-string v0, "BaseScreenDialog"

    const-string v1, "The context is unexpectedly empty !"

    .line 2
    invoke-static {v0, v1}, Lcom/geetest/sdk/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_c
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-eq v1, v2, :cond_27

    .line 7
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v2, 0x400

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_39

    .line 13
    :cond_27
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_30

    const/16 v1, 0x1606

    goto :goto_32

    :cond_30
    const/16 v1, 0x607

    .line 18
    :goto_32
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 20
    :cond_39
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 21
    sget-boolean v2, Lcom/geetest/sdk/utils/d;->c:Z

    if-eqz v2, :cond_4a

    .line 22
    sget v2, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->n:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 23
    sget v2, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->o:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_5a

    .line 26
    :cond_4a
    iget-object v2, p0, Lcom/geetest/sdk/f;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/geetest/sdk/utils/g;->b(Landroid/content/Context;)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 27
    iget-object v2, p0, Lcom/geetest/sdk/f;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/geetest/sdk/utils/g;->a(Landroid/content/Context;)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    :goto_5a
    const/16 v2, 0x11

    .line 29
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 30
    iget-object v2, p0, Lcom/geetest/sdk/f;->e:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/geetest/sdk/f;->b()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/geetest/sdk/utils/g;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 31
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6e} :catch_6f

    goto :goto_73

    :catch_6f
    move-exception v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_73
    return-void
.end method


# virtual methods
.method protected a()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/geetest/sdk/f;->c()V

    return-void
.end method

.method public a(I)V
    .registers 2

    .line 2
    iput p1, p0, Lcom/geetest/sdk/f;->f:I

    return-void
.end method

.method public b()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/geetest/sdk/f;->f:I

    return v0
.end method
